# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\PatrickKenis\AudioProccesing\Synth\SynthApp_system\_ide\scripts\debugger_synthapp-default_10.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\PatrickKenis\AudioProccesing\Synth\SynthApp_system\_ide\scripts\debugger_synthapp-default_10.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx HW-FTDI-TEST FT2232H 1234-tulA" && level==0 && jtag_device_ctx=="jsn-HW-FTDI-TEST FT2232H-1234-tulA-23727093-0"}
fpga -file C:/Users/PatrickKenis/AudioProccesing/Synth/SynthApp/_ide/bitstream/AudioProcessing2.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/PatrickKenis/AudioProccesing/Synth/AudioProcessingXSA/export/AudioProcessingXSA/hw/AudioProcessing.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/PatrickKenis/AudioProccesing/Synth/SynthApp/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/PatrickKenis/AudioProccesing/Synth/SynthApp/Debug/SynthApp.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
