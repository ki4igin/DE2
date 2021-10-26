transcript to asim_log
createdesign sum D:/DE2/lr/lr1/simulation/activehdl
opendesign -a sum.adf
waveformmode ASDB
alib  vhdl_libs/cycloneii_vhdl
amap cycloneii vhdl_libs/cycloneii_vhdl
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_atoms.vhd
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_components.vhd

addfile -c -auto D:/DE2/lr/lr1/simulation/activehdl/sum.vho

addfile -c -auto D:/DE2/lr/lr1/simulation/activehdl/sum_vhd.sdo
comp -reorder

asim +access +r -t 1ps +transport_int_delays +transport_path_delays -sdftyp /NA=sum_vhd.sdo -L sum -L work -L cycloneii  calc_tb

add wave *
run  
