library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity nios_epcs is
    port (
        CLOCK_50 : in std_logic;
        KEY      : in std_logic_vector(3 downto 0);

        SRAM_ADDR : out std_logic_vector(17 downto 0);
        SRAM_DQ   : inout std_logic_vector(15 downto 0);
        SRAM_WE_N : out std_logic;
        SRAM_OE_N : out std_logic;
        SRAM_UB_N : out std_logic;
        SRAM_LB_N : out std_logic;
        SRAM_CE_N : out std_logic;

        LEDR : out std_logic_vector(17 downto 0) := (others => '0')
    );
end entity nios_epcs;

architecture rtl of nios_epcs is
    component nios is
        port (
            clk                     : in std_logic := '0';                                    --                clk_clk_in.clk
            out_port_from_the_pio_0 : out std_logic_vector(15 downto 0);                      -- pio_0_external_connection.export
            sram_out_DQ             : inout std_logic_vector(15 downto 0) := (others => '0'); --                  sram_out.DQ
            sram_out_ADDR           : out std_logic_vector(17 downto 0);                      --                          .ADDR
            sram_out_UB_N           : out std_logic;                                          --                          .UB_N
            sram_out_LB_N           : out std_logic;                                          --                          .LB_N
            sram_out_WE_N           : out std_logic;                                          --                          .WE_N
            sram_out_CE_N           : out std_logic;                                          --                          .CE_N
            sram_out_OE_N           : out std_logic;                                          --                          .OE_N
            reset_n_reset_n         : in std_logic := '0'                                     --                   reset_n.reset_n
        );
    end component nios;
begin

    u0 : nios
    port map(
        clk                     => CLOCK_50,         --                clk_clk_in.clk
        reset_n_reset_n         => KEY(0),           --          clk_clk_in_reset.reset_n
        sram_out_DQ             => SRAM_DQ,          --    ext_sram_0_conduit_end.DQ
        sram_out_ADDR           => SRAM_ADDR,        --                          .ADDR
        sram_out_UB_N           => SRAM_UB_N,        --                          .UB_N
        sram_out_LB_N           => SRAM_LB_N,        --                          .LB_N
        sram_out_WE_N           => SRAM_WE_N,        --                          .WE_N
        sram_out_CE_N           => SRAM_CE_N,        --                          .CE_N
        sram_out_OE_N           => SRAM_OE_N,        --                          .OE_N
        out_port_from_the_pio_0 => LEDR(15 downto 0) -- pio_0_external_connection.export
    );
end architecture rtl;