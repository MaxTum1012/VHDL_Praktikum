--created by Max Biricz
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity cnt_unsigned is
    Port (clk, enab, res : in std_logic;
         cnt_val : out std_logic_vector (4 downto 0));
end cnt_unsigned;

architecture Behavioral of cnt_unsigned is
--signal declaration for internally used storage signal of type unsigned
signal cnt_val_unsigned : unsigned (4 downto 0) := (others => '0');
begin
process(clk)
begin
    if clk'event and clk = '1' then
        if res = '1' or to_integer(unsigned(cnt_val_unsigned)) = 24 then
            cnt_val_unsigned <= (others => '0');
        elsif enab = '1' then
            cnt_val_unsigned <= cnt_val_unsigned + 1;
        else cnt_val_unsigned <= cnt_val_unsigned;
        end if;
    end if;
end process;
--assigning out port cnt_val the internal signal via type cast
cnt_val <= std_logic_vector(cnt_val_unsigned);
end Behavioral;

