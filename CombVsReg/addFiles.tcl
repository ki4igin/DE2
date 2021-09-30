foreach vhdl_file [glob src/*.vhd] {
    puts $vhdl_file;   
    set_global_assignment -name VHDL_FILE $vhdl_file;
};