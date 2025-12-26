--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--General: empty port map for TB entity
entity sn_cnt_TB is
end sn_cnt_TB;


architecture Behavioral of sn_cnt_TB is
--declaration of Test signals
signal clk_test, res_test, enable_test : std_logic := '0';
signal cnt_sig : std_logic_vector(2 downto 0) := "000";

begin

StimGen : entity work.stim_gen(clk_gen_behav)
          port map (clk => clk_test, res => res_test, enab => enable_test);
    
Counter : entity work.sn_cnt(RTL)
          port map (clk => clk_test, res => res_test, enable => enable_test,
                    cnt => cnt_sig);


end Behavioral;
