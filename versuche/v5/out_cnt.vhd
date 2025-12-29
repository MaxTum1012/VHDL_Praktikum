--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity out_cnt is
    Port (clk, res, output_head : in std_logic;
          out_cnt_val : out std_logic_vector(2 downto 0));
end out_cnt;

architecture behavioral of out_cnt is
signal cnt_val_unsigned : unsigned (2 downto 0) := (others => '0');
begin
--wait for clk to ensure synchronisation
--counting range: 1 to 5
--default value before set_head -> 0
process(clk, res)
begin
    if clk'event and clk = '1' then
        if res = '1' or to_integer(unsigned(cnt_val_unsigned)) = 5 then
            cnt_val_unsigned <= (others => '0');                                                --set specific value after counting 34 cycles
        elsif output_head = '1' then
            cnt_val_unsigned <= to_unsigned(to_integer(unsigned(cnt_val_unsigned + 1)), 3);
        else null;
        end if;
    end if;
end process;
--converting internal integer signal to std_logic_vector of length 5 (max number: 31)
out_cnt_val <= std_logic_vector(cnt_val_unsigned);

end behavioral;
