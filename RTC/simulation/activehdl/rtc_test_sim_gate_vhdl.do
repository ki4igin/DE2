transcript to asim_log
createdesign rtc_test D:/DE2/RTC/simulation/activehdl
opendesign -a rtc_test.adf
waveformmode ASDB
alib  vhdl_libs/cycloneii_vhdl
amap cycloneii vhdl_libs/cycloneii_vhdl
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_atoms.vhd
acom -strict93 -dbg -work cycloneii c:/altera/13.0sp1/quartus/eda/sim_lib/cycloneii_components.vhd

addfile -c -auto D:/DE2/RTC/simulation/activehdl/rtc_test.vho

addfile -c -auto D:/DE2/RTC/simulation/activehdl/rtc_test_vhd.sdo
addfile -c -auto D:/DE2/RTC/src/rtc_test_tb.vhd
comp -reorder

asim +access +r -t 1ps +transport_int_delays +transport_path_delays -sdftyp /rtc_test_tb/test=rtc_test_vhd.sdo -L rtc_test -L work -L cycloneii  rtc_test_tb

add wave *
run  
