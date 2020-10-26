# TCL File Generated by Component Editor 13.0sp1
# Sun Oct 25 16:44:21 MSK 2020
# DO NOT MODIFY


# 
# sram_61LV25616 "sram_61LV25616" v11
#  2020.10.25.16:44:21
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module sram_61LV25616
# 
set_module_property DESCRIPTION ""
set_module_property NAME sram_61LV25616
set_module_property VERSION 11
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME sram_61LV25616
set_module_property INSTANTIATE_IN_SYSTEM_MODULE false
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 

# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 50000000
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point avalon_tristate_slave
# 
add_interface avalon_tristate_slave avalon_tristate end
set_interface_property avalon_tristate_slave activeCSThroughReadLatency true
set_interface_property avalon_tristate_slave associatedClock clock
set_interface_property avalon_tristate_slave explicitAddressSpan 0
set_interface_property avalon_tristate_slave holdTime 3
set_interface_property avalon_tristate_slave isMemoryDevice true
set_interface_property avalon_tristate_slave isNonVolatileStorage false
set_interface_property avalon_tristate_slave maximumPendingReadTransactions 0
set_interface_property avalon_tristate_slave printableDevice false
set_interface_property avalon_tristate_slave readLatency 0
set_interface_property avalon_tristate_slave readWaitStates 15
set_interface_property avalon_tristate_slave readWaitTime 15
set_interface_property avalon_tristate_slave setupTime 7
set_interface_property avalon_tristate_slave timingUnits Nanoseconds
set_interface_property avalon_tristate_slave writeWaitStates 5
set_interface_property avalon_tristate_slave writeWaitTime 5
set_interface_property avalon_tristate_slave ENABLED true
set_interface_property avalon_tristate_slave EXPORT_OF ""
set_interface_property avalon_tristate_slave PORT_NAME_MAP ""
set_interface_property avalon_tristate_slave SVD_ADDRESS_GROUP ""

add_interface_port avalon_tristate_slave avs_s0_read_n read_n Input 1
add_interface_port avalon_tristate_slave avs_s0_data data Bidir 16
add_interface_port avalon_tristate_slave avs_s0_write_n write_n Input 1
add_interface_port avalon_tristate_slave avs_s0_oe_n outputenable_n Input 1
add_interface_port avalon_tristate_slave avs_s0_ce_n chipselect_n Input 1
add_interface_port avalon_tristate_slave avs_s0_ub_lb_n byteenable_n Input 2
add_interface_port avalon_tristate_slave avs_s0_address address Input 18
set_interface_assignment avalon_tristate_slave embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_tristate_slave embeddedsw.configuration.isMemoryDevice 1
set_interface_assignment avalon_tristate_slave embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_tristate_slave embeddedsw.configuration.isPrintableDevice 0

