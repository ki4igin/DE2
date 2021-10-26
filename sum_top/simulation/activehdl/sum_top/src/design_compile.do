acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/src/sum.vhd"
acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/src/sum_top.vhd"
acom -2008 -O3 -e 100 -protect 0 -reorder "$dsn/src/sum_top_tb.vhd"
asim -stack 32 -retval 32 -advdataflow  -O5 +access +r +m+sum_top_tb sum_top_tb tb