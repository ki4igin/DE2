transcript to asim_log
createdesign Counter D:/DE2/Counter/simulation/activehdl
opendesign -a Counter.adf
waveformmode ASDB
alib  vhdl_libs/cycloneii_vhdl
amap cycloneii vhdl_libs/cycloneii_vhdl
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_atoms.vhd
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_components.vhd

addfile -c -auto D:/DE2/Counter/simulation/activehdl/Counter.vho

addfile -c -auto D:/DE2/Counter/simulation/activehdl/Counter_vhd.sdo
