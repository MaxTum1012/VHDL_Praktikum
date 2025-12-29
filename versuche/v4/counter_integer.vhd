--created by Max Biricz
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cnt_integer is
    port(clk, enab, res : in std_logic;
         cnt_val : out std_logic_vector (4 downto 0));
end cnt_integer;

architecture behavioral of cnt_integer is
signal cnt_val_integer : integer := 0;
begin
process(clk)
begin
    if clk'event and clk = '1' then
        if res = '1' or cnt_val_integer = 24 then
            cnt_val_integer <= 0;
        elsif enab = '1' then
            cnt_val_integer <= cnt_val_integer + 1;
        else null;
        end if;
    end if;
end process;
--converting internal integer signal to std_logic_vector of length 5 (max number: 31)
cnt_val <= std_logic_vector(to_unsigned(cnt_val_integer, 5));

end behavioral;

