#include <stdio.h>
#include <stdbool.h>
#include "platform.h"
#include "xil_printf.h"
#include "arm_math.h"
#include "arm_const_structs.h"
#include "audio.h"
#include "xscutimer.h"
#include "xscugic.h"
#include "math.h"
#include "xuartps.h"
#include "xgpio.h"
#include "mixer.h"

#define SAMPLE_RATE 48000
#define UINT32_MAX_AS_FLOAT 4294967295.0f
#define UINT_SCALED_MAX_VALUE 0xFFFFF
#define TIMER_DEVICE_ID		XPAR_XSCUTIMER_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define TIMER_IRPT_INTR		XPAR_SCUTIMER_INTR

mixer mixer;


static int Timer_Intr_Setup(XScuGic * IntcInstancePtr, XScuTimer *TimerInstancePtr, u16 TimerIntrId);
static void Timer_ISR(void *CallBackRef);
void delay(float sec);

int main()
{
	init_platform();

	XGpio GpioButtons;
	XGpio_Initialize(&GpioButtons, XPAR_AXI_GPIO_1_DEVICE_ID);
	XGpio_SetDataDirection(&GpioButtons, 1, 0xF);

	XUartPs Uart_Ps;
	XUartPs_Config *Config = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
	XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
	XUartPs_SetBaudRate(&Uart_Ps, 115200);
	xil_printf("Ready for input\r\n");

	IicConfig(XPAR_XIICPS_0_DEVICE_ID);
	AudioPllConfig();
	AudioConfigureJacks();
	LineinLineoutConfig();

	XScuTimer Scu_Timer;
	XScuTimer_Config *Scu_ConfigPtr;
	XScuGic IntcInstance;

	Scu_ConfigPtr = XScuTimer_LookupConfig(XPAR_PS7_SCUTIMER_0_DEVICE_ID);
	XScuTimer_CfgInitialize(&Scu_Timer, Scu_ConfigPtr, Scu_ConfigPtr->BaseAddr);
	Timer_Intr_Setup(&IntcInstance, &Scu_Timer, XPS_SCU_TMR_INT_ID);
	XScuTimer_LoadTimer(&Scu_Timer,(XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ / 2)/(SAMPLE_RATE));
	XScuTimer_EnableAutoReload(&Scu_Timer);
	XScuTimer_Start(&Scu_Timer);

	mixer.play();

	u8 buffer[64];
	int index = 0;
    float globalVolume = 1.0f;
    auto waveFunc = Wave::sine;
    float atk = 0.01f, dec = 0.1f, sus = 0.8f, rel = 0.3f;


	while (1) {
	    if (XUartPs_IsReceiveData(Uart_Ps.Config.BaseAddress)) {
	    	xil_printf("Got byte\r\n");
	        u8 byte = XUartPs_ReadReg(Uart_Ps.Config.BaseAddress, XUARTPS_FIFO_OFFSET);

	        if (byte == '\n' || index >= 63) {
	            buffer[index] = '\0';
	            index = 0;

	            if (buffer[0] == 'N') {
	                int note = 0, vel = 127, dur = 50;
	                sscanf((char*)buffer, "N%d V%d D%d", &note, &vel, &dur);

	                xil_printf("Note=%d Vel=%d Dur=%d\r\n", note, vel, dur);

	                sound s;
	                //s.frequency = MIDI::ToFreq(note);
	                s.amplitude = (vel / 127.0f) * globalVolume;
	                s.waveFunc = waveFunc;
	                s.attack = atk; s.decay = dec; s.sustain = sus; s.release = rel;
	                s.duration = dur * 0.01f;
	                s.play();

	                mixer.addSound(s);
	            } else if (strncmp((char*)buffer, "VOL", 3) == 0) {
	                float v;
	                if (sscanf((char*)buffer, "VOL%f", &v) == 1)
	                    globalVolume = v;
	                xil_printf("Volume set to %.2f\r\n", globalVolume);
	            } else if (strncmp((char*)buffer, "I", 1) == 0) {
	                int id;
	                if (sscanf((char*)buffer, "I%d", &id) == 1) {
	                    switch (id) {
	                        case 0: waveFunc = Wave::sine; break;
	                        case 1: waveFunc = Wave::square; break;
	                        //case 2: waveFunc = Wave::saw; break;
	                        case 3: waveFunc = Wave::triangle; break;
	                    }
	                    xil_printf("Waveform set to %d\r\n", id);
	                }
	            } else if (strncmp((char*)buffer, "ENV", 3) == 0) {
	                float a, d, s, r;
	                if (sscanf((char*)buffer, "ENV %f %f %f %f", &a, &d, &s, &r) == 4) {
	                    atk = a; dec = d; sus = s; rel = r;
	                    xil_printf("Envelope set A=%.3f D=%.3f S=%.3f R=%.3f\r\n", atk, dec, sus, rel);
	                }
	            }

	        } else {
	            buffer[index++] = byte;
	        }
	    }
	}

	return 0;
}


void delay(float sec)
{
	usleep(sec * 1000000);
}

static void Timer_ISR(void *CallBackRef)
{
    float sample = mixer.tick(1.0f / SAMPLE_RATE);
    //xil_printf("sample\r\n");
    sample = fmaxf(fminf(sample, 1.0f), -1.0f);
    uint32_t scaled = (uint32_t)(((sample + 1.0f) * 0.5f) * UINT_SCALED_MAX_VALUE);
    Xil_Out32(I2S_DATA_TX_L_REG, scaled);
    Xil_Out32(I2S_DATA_TX_R_REG, scaled);

}

static int Timer_Intr_Setup(XScuGic * IntcInstancePtr, XScuTimer *TimerInstancePtr, u16 TimerIntrId)
{
	XScuGic_Config *IntcConfig;
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig, IntcConfig->CpuBaseAddress);
	Xil_ExceptionInit();
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT, (Xil_ExceptionHandler)XScuGic_InterruptHandler,IntcInstancePtr);
	XScuGic_Connect(IntcInstancePtr, TimerIntrId, (Xil_ExceptionHandler)Timer_ISR, (void *)TimerInstancePtr);
	XScuGic_Enable(IntcInstancePtr, TimerIntrId);
	XScuTimer_EnableInterrupt(TimerInstancePtr);
	Xil_ExceptionEnable();
	return XST_SUCCESS;
}

