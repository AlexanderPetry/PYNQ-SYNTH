# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct M:\projects\clones\PYNQ-SYNTH\PYNQ_GEN_V2\Hardware\Vitis\vincent_xsa\platform.tcl
# 
# OR launch xsct and run below command.
# source M:\projects\clones\PYNQ-SYNTH\PYNQ_GEN_V2\Hardware\Vitis\vincent_xsa\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {vincent_xsa}\
-hw {C:\Users\Oliwier\Downloads\AudioProcessing2.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {M:/projects/clones/PYNQ-SYNTH/PYNQ_GEN_V2/Hardware/Vitis}

platform write
platform generate -domains 
platform active {vincent_xsa}
platform generate
