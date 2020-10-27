close -wave

acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/src/top_level.vho"
acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/../../../src/converters.vhd"
acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/../../../src/top_level_tb.vhd"

asim -sdftyp /top_level_tb/u0=$dsn/src/top_level_vhd.sdo -O5 +access +r +m+top_level_tb top_level_tb rtl


add wave -noreg -vgroup "comb"  {/top_level_tb/c_in_comb_tb}\
                                {/top_level_tb/a_comb_tb}\
                                {/top_level_tb/b_comb_tb}\
                                {/top_level_tb/s_comb_tb}\
                                {/top_level_tb/c_out_comb_tb}

add wave -noreg {/top_level_tb/CLOCK_50_tb}

add wave -noreg -vgroup "reg"   {/top_level_tb/c_in_reg_tb}\
                                {/top_level_tb/a_reg_tb}\
                                {/top_level_tb/b_reg_tb}\
                                {/top_level_tb/s_reg_tb}\
                                {/top_level_tb/c_out_reg_tb}
run
endsim





