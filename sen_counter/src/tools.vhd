library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

package tools is

    procedure Inc(
        signal cnt    : inout integer;
        constant max  : in integer;
        constant en   : in boolean;
        variable wrap : out boolean
    );

end package tools;

package body tools is

    procedure Inc(
        signal cnt    : inout integer;
        constant max  : in integer;
        constant en   : in boolean;
        variable wrap : out boolean
    ) is
    begin
        if en then
            if cnt = max - 1 then
                cnt <= 0;
                wrap := true;
            else
                cnt <= cnt + 1;
                wrap := false;
            end if;
        end if;
    end procedure;

end package body tools;
