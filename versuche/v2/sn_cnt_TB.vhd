--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--General: empty port map for TB entity
entity sn_cnt_TB is
end sn_cnt_TB;


architecture Behavioral of sn_cnt_TB is
--declaration of signals
signal clk_sig, res_sig, enable_sig : std_logic := '0';
signal cnt_sig : std_logic_vector(2 downto 0) := (others => '0');
begin

StimGen : entity work.stim_gen(clk_gen_behav)
          port map (clk => clk_sig, res => res_sig, enab => enable_sig);
    
Counter : entity work.sn_cnt(RTL)
          port map (clk => clk_sig, res => res_sig, enable => enable_sig,
                    cnt => cnt_sig);

end Behavioral;
