package require -exact qsys 12.1

# module properties
set_module_property NAME {qsys_export}
set_module_property DISPLAY_NAME {qsys_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

# Instances and instance parameters
# (disabled instances are intentionally culled)
add_instance clk clock_source 13.0
set_instance_parameter_value clk clockFrequency {50000000.0}
set_instance_parameter_value clk clockFrequencyKnown {1}
set_instance_parameter_value clk resetSynchronousEdges {NONE}

add_instance ram_sys altera_avalon_onchip_memory2 13.0.1.99.2
set_instance_parameter_value ram_sys allowInSystemMemoryContentEditor {0}
set_instance_parameter_value ram_sys blockType {AUTO}
set_instance_parameter_value ram_sys dataWidth {32}
set_instance_parameter_value ram_sys dualPort {0}
set_instance_parameter_value ram_sys initMemContent {1}
set_instance_parameter_value ram_sys initializationFileName {onchip_mem.hex}
set_instance_parameter_value ram_sys instanceID {sys}
set_instance_parameter_value ram_sys memorySize {16384.0}
set_instance_parameter_value ram_sys readDuringWriteMode {DONT_CARE}
set_instance_parameter_value ram_sys simAllowMRAMContentsFile {0}
set_instance_parameter_value ram_sys simMemInitOnlyFilename {0}
set_instance_parameter_value ram_sys singleClockOperation {0}
set_instance_parameter_value ram_sys slave1Latency {1}
set_instance_parameter_value ram_sys slave2Latency {1}
set_instance_parameter_value ram_sys useNonDefaultInitFile {0}
set_instance_parameter_value ram_sys useShallowMemBlocks {0}
set_instance_parameter_value ram_sys writable {1}

add_instance cpu altera_nios2_qsys 13.0
set_instance_parameter_value cpu setting_showUnpublishedSettings {0}
set_instance_parameter_value cpu setting_showInternalSettings {0}
set_instance_parameter_value cpu setting_preciseSlaveAccessErrorException {0}
set_instance_parameter_value cpu setting_preciseIllegalMemAccessException {0}
set_instance_parameter_value cpu setting_preciseDivisionErrorException {0}
set_instance_parameter_value cpu setting_performanceCounter {0}
set_instance_parameter_value cpu setting_illegalMemAccessDetection {0}
set_instance_parameter_value cpu setting_illegalInstructionsTrap {0}
set_instance_parameter_value cpu setting_fullWaveformSignals {0}
set_instance_parameter_value cpu setting_extraExceptionInfo {0}
set_instance_parameter_value cpu setting_exportPCB {0}
set_instance_parameter_value cpu setting_debugSimGen {0}
set_instance_parameter_value cpu setting_clearXBitsLDNonBypass {1}
set_instance_parameter_value cpu setting_bit31BypassDCache {1}
set_instance_parameter_value cpu setting_bigEndian {0}
set_instance_parameter_value cpu setting_export_large_RAMs {0}
set_instance_parameter_value cpu setting_asic_enabled {0}
set_instance_parameter_value cpu setting_asic_synopsys_translate_on_off {0}
set_instance_parameter_value cpu setting_oci_export_jtag_signals {0}
set_instance_parameter_value cpu setting_bhtIndexPcOnly {0}
set_instance_parameter_value cpu setting_avalonDebugPortPresent {0}
set_instance_parameter_value cpu setting_alwaysEncrypt {1}
set_instance_parameter_value cpu setting_allowFullAddressRange {0}
set_instance_parameter_value cpu setting_activateTrace {1}
set_instance_parameter_value cpu setting_activateTestEndChecker {0}
set_instance_parameter_value cpu setting_activateMonitors {1}
set_instance_parameter_value cpu setting_activateModelChecker {0}
set_instance_parameter_value cpu setting_HDLSimCachesCleared {1}
set_instance_parameter_value cpu setting_HBreakTest {0}
set_instance_parameter_value cpu muldiv_divider {0}
set_instance_parameter_value cpu mpu_useLimit {0}
set_instance_parameter_value cpu mpu_enabled {0}
set_instance_parameter_value cpu mmu_enabled {0}
set_instance_parameter_value cpu mmu_autoAssignTlbPtrSz {1}
set_instance_parameter_value cpu manuallyAssignCpuID {1}
set_instance_parameter_value cpu debug_triggerArming {1}
set_instance_parameter_value cpu debug_embeddedPLL {1}
set_instance_parameter_value cpu debug_debugReqSignals {0}
set_instance_parameter_value cpu debug_assignJtagInstanceID {0}
set_instance_parameter_value cpu dcache_omitDataMaster {0}
set_instance_parameter_value cpu cpuReset {0}
set_instance_parameter_value cpu is_hardcopy_compatible {0}
set_instance_parameter_value cpu setting_shadowRegisterSets {0}
set_instance_parameter_value cpu mpu_numOfInstRegion {8}
set_instance_parameter_value cpu mpu_numOfDataRegion {8}
set_instance_parameter_value cpu mmu_TLBMissExcOffset {0}
set_instance_parameter_value cpu debug_jtagInstanceID {0}
set_instance_parameter_value cpu resetOffset {0}
set_instance_parameter_value cpu exceptionOffset {32}
set_instance_parameter_value cpu cpuID {0}
set_instance_parameter_value cpu cpuID_stored {0}
set_instance_parameter_value cpu breakOffset {32}
set_instance_parameter_value cpu userDefinedSettings {}
set_instance_parameter_value cpu resetSlave {epcs_flash.epcs_control_port}
set_instance_parameter_value cpu mmu_TLBMissExcSlave {None}
set_instance_parameter_value cpu exceptionSlave {ram_sys.s1}
set_instance_parameter_value cpu breakSlave {cpu.jtag_debug_module}
set_instance_parameter_value cpu setting_perfCounterWidth {32}
set_instance_parameter_value cpu setting_interruptControllerType {Internal}
set_instance_parameter_value cpu setting_branchPredictionType {Automatic}
set_instance_parameter_value cpu setting_bhtPtrSz {8}
set_instance_parameter_value cpu muldiv_multiplierType {EmbeddedMulFast}
set_instance_parameter_value cpu mpu_minInstRegionSize {12}
set_instance_parameter_value cpu mpu_minDataRegionSize {12}
set_instance_parameter_value cpu mmu_uitlbNumEntries {4}
set_instance_parameter_value cpu mmu_udtlbNumEntries {6}
set_instance_parameter_value cpu mmu_tlbPtrSz {7}
set_instance_parameter_value cpu mmu_tlbNumWays {16}
set_instance_parameter_value cpu mmu_processIDNumBits {8}
set_instance_parameter_value cpu impl {Tiny}
set_instance_parameter_value cpu icache_size {4096}
set_instance_parameter_value cpu icache_tagramBlockType {Automatic}
set_instance_parameter_value cpu icache_ramBlockType {Automatic}
set_instance_parameter_value cpu icache_numTCIM {0}
set_instance_parameter_value cpu icache_burstType {None}
set_instance_parameter_value cpu dcache_bursts {false}
set_instance_parameter_value cpu dcache_victim_buf_impl {ram}
set_instance_parameter_value cpu debug_level {Level1}
set_instance_parameter_value cpu debug_OCIOnchipTrace {_128}
set_instance_parameter_value cpu dcache_size {2048}
set_instance_parameter_value cpu dcache_tagramBlockType {Automatic}
set_instance_parameter_value cpu dcache_ramBlockType {Automatic}
set_instance_parameter_value cpu dcache_numTCDM {0}
set_instance_parameter_value cpu dcache_lineSize {32}
set_instance_parameter_value cpu setting_exportvectors {0}
set_instance_parameter_value cpu setting_ecc_present {0}
set_instance_parameter_value cpu regfile_ramBlockType {Automatic}
set_instance_parameter_value cpu ocimem_ramBlockType {Automatic}
set_instance_parameter_value cpu mmu_ramBlockType {Automatic}
set_instance_parameter_value cpu bht_ramBlockType {Automatic}

add_instance sysid altera_avalon_sysid_qsys 13.0
set_instance_parameter_value sysid id {170}

add_instance jtag_uart altera_avalon_jtag_uart 13.0.1.99.2
set_instance_parameter_value jtag_uart allowMultipleConnections {0}
set_instance_parameter_value jtag_uart hubInstanceID {0}
set_instance_parameter_value jtag_uart readBufferDepth {64}
set_instance_parameter_value jtag_uart readIRQThreshold {8}
set_instance_parameter_value jtag_uart simInputCharacterStream {}
set_instance_parameter_value jtag_uart simInteractiveOptions {NO_INTERACTIVE_WINDOWS}
set_instance_parameter_value jtag_uart useRegistersForReadBuffer {0}
set_instance_parameter_value jtag_uart useRegistersForWriteBuffer {0}
set_instance_parameter_value jtag_uart useRelativePathForSimFile {0}
set_instance_parameter_value jtag_uart writeBufferDepth {64}
set_instance_parameter_value jtag_uart writeIRQThreshold {8}

add_instance epcs_flash altera_avalon_epcs_flash_controller 13.0.1.99.2
set_instance_parameter_value epcs_flash autoSelectASMIAtom {1}
set_instance_parameter_value epcs_flash useASMIAtom {0}

add_instance tri_state_bridge_0 altera_avalon_tri_state_bridge 13.0
set_instance_parameter_value tri_state_bridge_0 registerIncomingSignals {1}

# connections and connection parameters
add_connection cpu.instruction_master cpu.jtag_debug_module avalon
set_connection_parameter_value cpu.instruction_master/cpu.jtag_debug_module arbitrationPriority {1}
set_connection_parameter_value cpu.instruction_master/cpu.jtag_debug_module baseAddress {0x9800}
set_connection_parameter_value cpu.instruction_master/cpu.jtag_debug_module defaultConnection {0}

add_connection cpu.data_master cpu.jtag_debug_module avalon
set_connection_parameter_value cpu.data_master/cpu.jtag_debug_module arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/cpu.jtag_debug_module baseAddress {0x9800}
set_connection_parameter_value cpu.data_master/cpu.jtag_debug_module defaultConnection {0}

add_connection clk.clk_reset ram_sys.reset1 reset

add_connection cpu.jtag_debug_module_reset ram_sys.reset1 reset

add_connection clk.clk_reset cpu.reset_n reset

add_connection cpu.jtag_debug_module_reset cpu.reset_n reset

add_connection clk.clk_reset sysid.reset reset

add_connection cpu.jtag_debug_module_reset sysid.reset reset

add_connection clk.clk_reset jtag_uart.reset reset

add_connection cpu.jtag_debug_module_reset jtag_uart.reset reset

add_connection clk.clk_reset epcs_flash.reset reset

add_connection cpu.jtag_debug_module_reset epcs_flash.reset reset

add_connection clk.clk ram_sys.clk1 clock

add_connection clk.clk cpu.clk clock

add_connection clk.clk sysid.clk clock

add_connection clk.clk jtag_uart.clk clock

add_connection clk.clk epcs_flash.clk clock

add_connection cpu.data_master ram_sys.s1 avalon
set_connection_parameter_value cpu.data_master/ram_sys.s1 arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/ram_sys.s1 baseAddress {0x4000}
set_connection_parameter_value cpu.data_master/ram_sys.s1 defaultConnection {0}

add_connection cpu.data_master sysid.control_slave avalon
set_connection_parameter_value cpu.data_master/sysid.control_slave arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/sysid.control_slave baseAddress {0xa008}
set_connection_parameter_value cpu.data_master/sysid.control_slave defaultConnection {0}

add_connection cpu.data_master jtag_uart.avalon_jtag_slave avalon
set_connection_parameter_value cpu.data_master/jtag_uart.avalon_jtag_slave arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/jtag_uart.avalon_jtag_slave baseAddress {0xa000}
set_connection_parameter_value cpu.data_master/jtag_uart.avalon_jtag_slave defaultConnection {0}

add_connection cpu.data_master epcs_flash.epcs_control_port avalon
set_connection_parameter_value cpu.data_master/epcs_flash.epcs_control_port arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/epcs_flash.epcs_control_port baseAddress {0x9000}
set_connection_parameter_value cpu.data_master/epcs_flash.epcs_control_port defaultConnection {0}

add_connection cpu.instruction_master epcs_flash.epcs_control_port avalon
set_connection_parameter_value cpu.instruction_master/epcs_flash.epcs_control_port arbitrationPriority {1}
set_connection_parameter_value cpu.instruction_master/epcs_flash.epcs_control_port baseAddress {0x9000}
set_connection_parameter_value cpu.instruction_master/epcs_flash.epcs_control_port defaultConnection {0}

add_connection cpu.d_irq jtag_uart.irq interrupt
set_connection_parameter_value cpu.d_irq/jtag_uart.irq irqNumber {0}

add_connection cpu.d_irq epcs_flash.irq interrupt
set_connection_parameter_value cpu.d_irq/epcs_flash.irq irqNumber {1}

add_connection clk.clk tri_state_bridge_0.clk clock

add_connection cpu.instruction_master tri_state_bridge_0.avalon_slave avalon
set_connection_parameter_value cpu.instruction_master/tri_state_bridge_0.avalon_slave arbitrationPriority {1}
set_connection_parameter_value cpu.instruction_master/tri_state_bridge_0.avalon_slave baseAddress {0x0000}
set_connection_parameter_value cpu.instruction_master/tri_state_bridge_0.avalon_slave defaultConnection {0}

add_connection cpu.data_master tri_state_bridge_0.avalon_slave avalon
set_connection_parameter_value cpu.data_master/tri_state_bridge_0.avalon_slave arbitrationPriority {1}
set_connection_parameter_value cpu.data_master/tri_state_bridge_0.avalon_slave baseAddress {0x0000}
set_connection_parameter_value cpu.data_master/tri_state_bridge_0.avalon_slave defaultConnection {0}

add_connection cpu.instruction_master ram_sys.s1 avalon
set_connection_parameter_value cpu.instruction_master/ram_sys.s1 arbitrationPriority {1}
set_connection_parameter_value cpu.instruction_master/ram_sys.s1 baseAddress {0x4000}
set_connection_parameter_value cpu.instruction_master/ram_sys.s1 defaultConnection {0}

# exported interfaces
add_interface clk clock sink
set_interface_property clk EXPORT_OF clk.clk_in
add_interface reset reset sink
set_interface_property reset EXPORT_OF clk.clk_in_reset
