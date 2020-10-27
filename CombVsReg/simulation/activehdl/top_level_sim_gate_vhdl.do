transcript to asim_log
createdesign top_level D:/DE2/CombVsReg/simulation/activehdl
opendesign -a top_level.adf
waveformmode ASDB
alib  vhdl_libs/cycloneii_vhdl
amap cycloneii vhdl_libs/cycloneii_vhdl
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_atoms.vhd
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_components.vhd

addfile -c -auto D:/DE2/CombVsReg/simulation/activehdl/top_level.vho

addfile -c -auto D:/DE2/CombVsReg/simulation/activehdl/top_level_vhd.sdo
