# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\PatrickKenis\Desktop\PYNQ_GEN_V2\Hardware\Vitis\UpdatedAudioProc\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\PatrickKenis\Desktop\PYNQ_GEN_V2\Hardware\Vitis\UpdatedAudioProc\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {UpdatedAudioProc}\
-hw {C:\Users\PatrickKenis\Desktop\PYNQ_GEN_V2\Hardware\Vivado\UpdatedAudioProc.xsa}\
-out {C:/Users/PatrickKenis/Desktop/PYNQ_GEN_V2/Hardware/Vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {UpdatedAudioProc}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {UpdatedAudioProc}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp setlib -name xilffs -ver 5.2
bsp write
bsp reload
catch {bsp regenerate}
domain active {zynq_fsbl}
bsp reload
bsp write
platform generate -domains standalone_ps7_cortexa9_0 
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp removelib -name xilffs
bsp write
bsp reload
catch {bsp regenerate}
platform clean
platform generate
platform active {UpdatedAudioProc}
platform config -updatehw {C:/Users/PatrickKenis/Documents/PYNQ-SYNTH/PYNQ_GEN_V2/Hardware/Vivado/UpdatedAudioProcV2.xsa}
platform generate -domains 
bsp reload
platform config -updatehw {C:/Users/PatrickKenis/Documents/PYNQ-SYNTH/PYNQ_GEN_V2/Hardware/Vivado/UpdatedAudioProcV2.xsa}
platform clean
platform generate
domain active {zynq_fsbl}
bsp reload
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
