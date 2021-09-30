package require ::quartus::project
set project_name tempproject
if [catch {project_open $project_name}] {
        project_new $project_name
}
export_assignments
set_global_assignment -name "VHDL_FILE" "C:/altera/13.0sp1/ip/altera/fir_compiler/lib/auk_dspip_lib_pkg_fir_130.vhd";
set_global_assignment -name "VHDL_FILE" "C:/altera/13.0sp1/ip/altera/fir_compiler/lib/auk_dspip_math_pkg_fir_130.vhd";
set_global_assignment -name "VERILOG_FILE" "D:/DE2/lr/test3/iptb_fir_compiler_temp9040739715768131745/fir2_st.v";
set_global_assignment -name "VHDL_FILE" "D:/DE2/lr/test3/iptb_fir_compiler_temp9040739715768131745/fir2_ast.vhd";
set_global_assignment -name "VHDL_FILE" "D:/DE2/lr/test3/iptb_fir_compiler_temp9040739715768131745/fir2.vhd";
set_global_assignment -name "VHDL_FILE" "D:/DE2/lr/test3/iptb_fir_compiler_temp9040739715768131745/fir2_ast.vhd";
set_global_assignment -name "VHDL_FILE" "D:/DE2/lr/test3/iptb_fir_compiler_temp9040739715768131745/fir2.vhd";
set_global_assignment -name USER_LIBRARIES "C:/altera/13.0sp1/ip/altera/fir_compiler/lib"
set_global_assignment -name "DEVICE" "AUTO";
project_close
