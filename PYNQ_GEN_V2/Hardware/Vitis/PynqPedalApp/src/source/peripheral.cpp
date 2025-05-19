#include "peripheral.h"

UART::UART(){
	XUartPs_Config *Config = XUartPs_LookupConfig(XPAR_XUARTPS_0_DEVICE_ID);
	XUartPs_CfgInitialize(&Uart_Ps, Config, Config->BaseAddress);
	XUartPs_SetBaudRate(&Uart_Ps, 115200);
}

Rotary_enc::Rotary_enc(){
	XGpio_Initialize(&rotary, XPAR_AXI_GPIO_0_DEVICE_ID);
	XGpio_SetDataDirection(&rotary, 1, 0xFFFFFFFF);  // all inputs
	PS = Getvalue();
}

Rotary_enc::RE_STATE
Rotary_enc::GetSate(){
	u32 CS = Getvalue();
	RE_STATE state{IDLE};

	if(CS == 0b111){
	   switch(PS){
	       case 0b110:
	        	if(debounce){
	        			debounce = 0;
	        	}else {
	        		debounce= 1;
	        		xil_printf("button\r\n");
	        		state = BUTTON;
	        	}
				break;

			case 0b011:
				I32increment(counter,1);
				xil_printf("rechts, %d\r\n",counter);
				state = RIGHT;
				break;

			case 0b101:
				I32decrement(counter,1);
				xil_printf("links, %d\r\n",counter);
				state = LEFT;
				break;

			default:
				break;
	        }
	}
	PS = CS;

	return state;
}

Switch_arr::Switch_arr(){
	XGpio_Initialize(&SW, XPAR_AXI_GPIO_1_DEVICE_ID);
	XGpio_SetDataDirection(&SW, 2, 0xFFFFF);
	u8 tmp = XGpio_DiscreteRead(&SW, 2);
	PS_[0] = tmp;
	PS_[1] = tmp;

}

u8
Switch_arr::SWx_State(u8 sw){
	if(sw > 3 || sw < 1 ) return 0;
	u8 idx = sw-1;

	u8 tmp = XGpio_DiscreteRead(&SW, 2);
	CS_[idx] = ( tmp >> (idx) ) & 0x1;

	u8 ret = (PS_[idx] != CS_[idx]) ?
			(CS_[idx] ? ON_Changed : OFF_Changed) :
			(CS_[idx] ? ON_Stable : OFF_Stable);

	PS_[idx] = CS_[idx];

	return ret;
}


Button_Array::Button_Array(){
	XGpio_Initialize(&BTNS, XPAR_AXI_GPIO_1_DEVICE_ID);
	XGpio_SetDataDirection(&BTNS, 1, 0xFFFFF);
	u8 tmp = XGpio_DiscreteRead(&BTNS, 1);
	PS_[0] = tmp;
	PS_[1] = tmp;
	PS_[2] = tmp;
	PS_[3] = tmp;
}

u8
Button_Array::BTNx_State(u8 idx){
	if(idx > 4 || idx < 1 ) return 0;
	idx = idx-1;

	u8 tmp = XGpio_DiscreteRead(&BTNS, 1);
	CS_[idx] = ( tmp >> (idx) ) & 0x1;

	u8 ret = (PS_[idx] != CS_[idx]) ?
			(CS_[idx] ? ON_Changed : OFF_Changed) :
			(CS_[idx] ? ON_Stable : OFF_Stable);

	PS_[idx] = CS_[idx];

	return ret;
}

