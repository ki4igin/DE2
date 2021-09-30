acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/src/lr3.vho"
acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/src/calc_tb.vhd"
asim -stack 32 -relax -retval 32 -sdftyp /calc_tb/rtc1=$dsn/src/lr3_vhd.sdo -O5 +access +r +m+calc_tb calc_tb tb
add wave -noreg {/calc_tb/tb_clock_50}
add wave -noreg {/calc_tb/tb_key}
add wave -noreg {/calc_tb/tb_sw}
add wave -noreg {/calc_tb/tb_ledg}
add wave -noreg {/calc_tb/tb_hex2}
add wave -noreg {/calc_tb/tb_hex3}
add wave -noreg {/calc_tb/tb_hex4}
add wave -noreg {/calc_tb/tb_hex5}
add wave -noreg {/calc_tb/tb_hex6}
add wave -noreg {/calc_tb/tb_hex7}
run