library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity qsys_base is
    port (
        CLOCK_50 : in std_logic;

        KEY : in std_logic_vector(3 downto 0);

        LEDG : out std_logic_vector(8 downto 0) := (others => '0');

        SRAM_DQ   : inout std_logic_vector(15 downto 0) := (others => '0');
        SRAM_ADDR : out std_logic_vector(17 downto 0)   := (others => '0');
        SRAM_WE_N : out std_logic                       := '0';
        SRAM_OE_N : out std_logic                       := '0';
        SRAM_UB_N : out std_logic                       := '0';
        SRAM_LB_N : out std_logic                       := '0';
        SRAM_CE_N : out std_logic                       := '0'
    );
end entity qsys_base;

architecture rtl of qsys_base is
    signal rst : std_logic;
    signal clk : std_logic;

    component sopc is
        port (
            clk_clk              : in std_logic := 'X';                                    -- clk
            reset_reset_n        : in std_logic := 'X';                                    -- reset_n
            pio_ledg_conn_export : out std_logic_vector(7 downto 0);                       -- export
            sram_ext_conn_DQ     : inout std_logic_vector(15 downto 0) := (others => 'X'); -- DQ
            sram_ext_conn_ADDR   : out std_logic_vector(17 downto 0);                      -- ADDR
            sram_ext_conn_UB_N   : out std_logic;                                          -- UB_N
            sram_ext_conn_LB_N   : out std_logic;                                          -- LB_N
            sram_ext_conn_WE_N   : out std_logic;                                          -- WE_N
            sram_ext_conn_CE_N   : out std_logic;                                          -- CE_N
            sram_ext_conn_OE_N   : out std_logic                                           -- OE_N
        );
    end component sopc;

begin
    rst <= KEY(0);
    clk <= CLOCK_50;

    process (clk)
    begin
        if rising_edge(clk) then
            LEDG(8) <= not KEY(3);
        end if;
    end process;

    u0 : sopc
    port map(
        clk_clk              => clk,              --           clk.clk
        reset_reset_n        => rst,              --         reset.reset_n
        pio_ledg_conn_export => LEDG(7 downto 0), -- pio_ledg_conn.export
        sram_ext_conn_DQ     => SRAM_DQ,          -- sram_ext_conn.DQ
        sram_ext_conn_ADDR   => SRAM_ADDR,        --              .ADDR
        sram_ext_conn_UB_N   => SRAM_UB_N,        --              .UB_N
        sram_ext_conn_LB_N   => SRAM_LB_N,        --              .LB_N
        sram_ext_conn_WE_N   => SRAM_WE_N,        --              .WE_N
        sram_ext_conn_CE_N   => SRAM_CE_N,        --              .CE_N
        sram_ext_conn_OE_N   => SRAM_OE_N         --              .OE_N
    );

end architecture rtl;