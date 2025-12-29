--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor2 is
    port(a, b : in std_logic;
         c : out std_logic);
end xor2;

architecture behavioral of xor2 is
begin
    c <= a xor b;
end behavioral;

library IEEE;
use IEEE.std_logic_1164.all;

entity hec_gen is
    Port (data, clk, res, enab : in std_logic;
          hec : out std_logic_vector(7 downto 0));
end hec_gen;

architecture Behavioral of hec_gen is
signal crc    : std_logic_vector(7 downto 0);
signal result : std_logic_vector(2 downto 0);
begin
    gen : for i in 0 to 7 generate
        Gen1: if i = 0 generate
            XorGen0: entity work.xor2 port map(a => data, b => crc(7), c => result(0));
            DFF0:    entity work.my_dff_re port map(d => result(0), clk => clk, en => enab, res => res, q => crc(0), qb => open);
            end generate;
        
        Gen2: if (i = 1) or (i = 2) generate
            XorGen12: entity work.xor2      port map(a => crc(i - 1), b => result(0), c => result(i));    --xor has hardwired second input result(0) 
            DFF12:    entity work.my_dff_re port map(d => result(i), clk => clk, en => enab, res => res, q => crc(i), qb => open); 
            end generate;   
            
        Gen3: if not(i = 0 or i = 1 or i = 2) generate
            DFF34567: entity work.my_dff_re port map(d => crc(i - 1), clk => clk, en => enab, res => res, q => crc(i), qb => open);
            end generate;
    end generate;
    
    hec <= X"55" xor crc;
    
end Behavioral;
