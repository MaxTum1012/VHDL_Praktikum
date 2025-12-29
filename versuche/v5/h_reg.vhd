--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity h_reg is
    generic(size : integer range 32 downto 1 := 32);
    Port (clk, res, set_head : in std_logic;
          data_in : in std_logic_vector(size-1 downto 0);
          data_out : out std_logic_vector(size-1 downto 0));
end h_reg;

architecture Behavioral of h_reg is
begin
    process(clk, res, set_head)             --set_head is treated like enable in this context
    begin
        if clk'event and clk = '1' then
            if res = '1' then
                data_out <= (others => '0');
            --initialise with head_in
            elsif set_head = '1' and res = '0' then
                data_out <= data_in;
            else null;
            end if;
        end if;
    end process;
end Behavioral;
