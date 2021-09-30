library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package converters is
    function to_integer(value : std_logic_vector) return integer;
    function to_integer(value : std_logic) return integer;
	function to_sl(value : boolean) return std_logic;
    function to_slv(value : integer; length : integer) return std_logic_vector;
    function to_slv(char      : character) return std_logic_vector;
end package converters;

package body converters is

    function to_integer(value : std_logic_vector) return integer is
    begin
        return to_integer(unsigned(value));
    end to_integer;

    function to_integer(value : std_logic) return integer is
    begin
        if (value = '1') then
            return 1;
        else
            return 0;
        end if;
    end to_integer;

	function to_sl(value : boolean) return std_logic is
    begin
		if (value) then
            return '1';
        else
            return '0';
        end if;
    end to_sl;
	
    function to_slv(value : integer; length : integer) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(value, length));
    end to_slv;

    function to_slv(char : character) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(character'pos(char), 8));
    end to_slv;

end package body converters;
