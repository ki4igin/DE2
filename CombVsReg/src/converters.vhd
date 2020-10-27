LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE converters IS
    FUNCTION to_integer(value : STD_LOGIC_VECTOR) RETURN INTEGER;
    FUNCTION to_integer(value : STD_LOGIC) RETURN INTEGER;
    FUNCTION to_slv(value : INTEGER; length : INTEGER) RETURN STD_LOGIC_VECTOR;
    FUNCTION to_slv(char : CHARACTER) RETURN STD_LOGIC_VECTOR;
END PACKAGE converters;

PACKAGE BODY converters IS

    FUNCTION to_integer(value : STD_LOGIC_VECTOR) RETURN INTEGER IS
    BEGIN
        RETURN to_integer(unsigned(value));
    END to_integer;

    FUNCTION to_integer(value : STD_LOGIC) RETURN INTEGER IS
    BEGIN
        IF (value = '1') THEN
            RETURN 1;
        ELSE
            RETURN 0;
        END IF;
    END to_integer;

    FUNCTION to_slv(value : INTEGER; length : INTEGER) RETURN STD_LOGIC_VECTOR IS
    BEGIN
        RETURN STD_LOGIC_VECTOR(to_unsigned(value, length));
    END to_slv;

    FUNCTION to_slv(char : CHARACTER) RETURN STD_LOGIC_VECTOR IS
    BEGIN
        RETURN STD_LOGIC_VECTOR(to_unsigned(CHARACTER'pos(char), 8));
    END to_slv;

END PACKAGE BODY converters;