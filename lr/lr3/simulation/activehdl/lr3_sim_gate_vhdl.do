transcript to asim_log
createdesign lr3 D:/DE2/lr/simulation/activehdl
opendesign -a lr3.adf
waveformmode ASDB
alib  vhdl_libs/cycloneii_vhdl
amap cycloneii vhdl_libs/cycloneii_vhdl
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_atoms.vhd
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_components.vhd

addfile -c -auto D:/DE2/lr/simulation/activehdl/lr3.vho

addfile -c -auto D:/DE2/lr/simulation/activehdl/lr3_vhd.sdo
addfile -c -auto D:/DE2/lr/tb/calc_tb.vhd
comp -reorder

asim +access +r -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=lr3_vhd.sdo -L lr3 -L work -L cycloneii  calc_tb

add wave *
run  