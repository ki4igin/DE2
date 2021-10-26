library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use std.env.all;
use work.converters.all;

entity sem7_comb_tb is
end sem7_comb_tb;

architecture tb of sem7_comb_tb is
    constant clock_frequency : integer := 50e6;
    constant clock_period    : time    := 1000 ms / clock_frequency;

    signal sel_tb : std_logic_vector(5 downto 0);
    signal dig_tb : std_logic_vector(3 downto 0);
    signal seg_tb : std_logic_vector(6 downto 0);

    signal seg_ref_tb   : std_logic_vector(6 downto 0);
    signal seg_ref_tb_n : std_logic_vector(6 downto 0);

    function invert (input : std_logic_vector) return std_logic_vector is
    begin
        return not input;
    end function;

begin
    seg7_comb_tb1 : entity work.seg7_comb
        port map(
            sel => sel_tb,
            dig => unsigned(dig_tb),
            seg => seg_tb
        );

    seg7_1 : entity work.seg7
        port map(
            dig         => unsigned(dig_tb),
            invert(seg) => seg_ref_tb
        );

    test_pros : process
        type cnt_error_t is array (0 to 6) of integer;
        variable cnt_error : cnt_error_t := (others => 0);
    begin
        sel_tb <= "000001";
        wait for 100ns;
        for i in 0 to 5 loop
            report "select " & to_string(sel_tb) severity warning;
            cnt_error := (others => 0);
            for i in 0 to 15 loop
                dig_tb <= to_slv(i, dig_tb'length);
                wait for 100ns;
                for i in 0 to cnt_error'length - 1 loop
                    cnt_error(i) := cnt_error(i) + to_integer(seg_tb(i) /= seg_ref_tb(i));
                end loop;
            end loop;
            report "a = " & to_string(cnt_error(0)) severity error;
re            report "b = " & to_string(cnt_error(1)) severity error;
            report "c = " & to_string(cnt_error(2)) severity error;
            report "d = " & to_string(cnt_error(3)) severity error;
            report "e = " & to_string(cnt_error(4)) severity error;
            report "f = " & to_string(cnt_error(5)) severity error;
            report "g = " & to_string(cnt_error(6)) severity error;

            sel_tb <= sel_tb sll 1;
            wait for 100ns;
        end loop;
        finish;
    end process test_pros;
end tb;
