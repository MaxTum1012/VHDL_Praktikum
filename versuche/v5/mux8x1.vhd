-- created by Max Biricz
library ieee;
use IEEE.numeric_std.all;
use IEEE.std_logic_1164.all;

entity mux8x1 is
    generic (
        data_width  : natural := 8);
    port (
        in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8  : in std_logic_vector(data_width - 1 downto 0);
        sel                     : in std_logic_vector(2 downto 0);
        output                  : out std_logic_vector(data_width - 1 downto 0)
         );
end mux8x1;

architecture RTL of mux8x1 is

begin
    process(in_1, in_2, in_3, in_4, in_5, in_6, in_7, in_8, sel)
        variable sel_int : integer range 0 to 7;
    begin
        sel_int := to_integer(unsigned(sel));
        case sel_int is
            when 1 => output <= in_1;
            when 2 => output <= in_2;
            when 3 => output <= in_3;
            when 4 => output <= in_4;
            when 5 => output <= in_5;
            when 6 => output <= in_6;
            when 7 => output <= in_7;
            when others => output <= in_8;
        end case;
    end process;

end RTL;