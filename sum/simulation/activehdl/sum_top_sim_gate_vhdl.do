transcript to asim_log
createdesign sum_top D:/DE2/sum/simulation/activehdl
opendesign -a sum_top.adf
waveformmode ASDB
alib  vhdl_libs/cycloneii_vhdl
amap cycloneii vhdl_libs/cycloneii_vhdl
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_atoms.vhd
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_components.vhd

addfile -c -auto D:/DE2/sum/simulation/activehdl/sum_top.vho

addfile -c -auto D:/DE2/sum/simulation/activehdl/sum_top_vhd.sdo
addfile -c -auto D:/DE2/sum/src/sum_top_tb.vhd
comp -reorder

asim +access +r -t 1ps +transport_int_delays +transport_path_delays -sdftyp /sum_top_tb/sum1=sum_top_vhd.sdo -L sum_top -L work -L cycloneii  sum_top_tb

add wave *
run  
