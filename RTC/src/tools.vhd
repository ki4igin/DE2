LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

PACKAGE tools IS

    PROCEDURE Inc(
        SIGNAL cnt : INOUT INTEGER;
        CONSTANT max : IN INTEGER;
        CONSTANT en : IN BOOLEAN;
        VARIABLE wrap : OUT BOOLEAN
    );

END PACKAGE tools;

PACKAGE BODY tools IS

    PROCEDURE Inc(
        SIGNAL cnt : INOUT INTEGER;
        CONSTANT max : IN INTEGER;
        CONSTANT en : IN BOOLEAN;
        VARIABLE wrap : OUT BOOLEAN
    ) IS
    BEGIN
        IF en THEN
            IF cnt = max - 1 THEN
                cnt <= 0;
                wrap := true;
            ELSE
                cnt <= cnt + 1;
                wrap := false;
            END IF;
        END IF;
    END PROCEDURE;

END PACKAGE BODY tools;