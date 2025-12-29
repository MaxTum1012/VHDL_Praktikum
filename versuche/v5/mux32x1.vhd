--created by Max Biricz
library IEEE;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;
entity mux32x1 is
    generic (
        data_width  : natural := 1
    );
    port (
        in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9,
        in_10, in_11, in_12, in_13, in_14, in_15, in_16, in_17, in_18, in_19,
        in_20, in_21, in_22, in_23, in_24, in_25, in_26, in_27, in_28, in_29,
        in_30, in_31, in_32    : in std_logic;
        sel     : in std_logic_vector(5 downto 0);
        output  : out std_logic
         );
end mux32x1;

architecture RTL of mux32x1 is

begin
    process(in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, in_9,
        in_10, in_11, in_12, in_13, in_14, in_15, in_16, in_17, in_18, in_19,
        in_20, in_21, in_22, in_23, in_24, in_25, in_26, in_27, in_28, in_29,
        in_30, in_31, in_32, sel)
        variable sel_int : integer range 0 to 33;
    begin
        sel_int := to_integer(unsigned(sel));
        case sel_int is
            when 2 =>  output <= in_1;
            when 3 =>  output <= in_2;
            when 4 =>  output <= in_3;
            when 5 =>  output <= in_4;
            when 6 =>  output <= in_5;
            when 7 =>  output <= in_6;
            when 8 =>  output <= in_7;
            when 9 =>  output <= in_8;
            when 10 =>  output <= in_9;
            when 11 => output <= in_10;
            when 12 => output <= in_11;
            when 13 => output <= in_12;
            when 14 => output <= in_13;
            when 15 => output <= in_14;
            when 16 => output <= in_15;
            when 17 => output <= in_16;
            when 18 => output <= in_17;
            when 19 => output <= in_18;
            when 20 => output <= in_19;
            when 21 => output <= in_20;
            when 22 => output <= in_21;
            when 23 => output <= in_22;
            when 24 => output <= in_23;
            when 25 => output <= in_24;
            when 26 => output <= in_25;
            when 27 => output <= in_26;
            when 28 => output <= in_27;
            when 29 => output <= in_28;
            when 30 => output <= in_29;
            when 31 => output <= in_30;
            when 32 => output <= in_31;
            when others => output <= in_32;       
        end case;
    end process;

end RTL;