--created by Max Biricz
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL ;
use ieee.numeric_std.all;

ENTITY sp_conv IS
  PORT (d_in, clk, res : IN std_logic;              --d_in is data
        d_out : out std_logic_vector(7 DOWNTO 0));
END sp_conv;
  
architecture behav of sp_conv is
    signal internal_reg : std_logic_vector(7 downto 0) := (others => '0');
    signal temp_bit : std_logic := '0';
begin
  r: process (clk)
  begin
  	if clk'event and clk='1' then
        if res = '1' then
            internal_reg <= (others => '0');
        else
            internal_reg(7 downto 0) <= internal_reg(6 downto 0) & d_in;
        end if;
	end if;
  end process r;
  d_out <= internal_reg;
end behav ;
