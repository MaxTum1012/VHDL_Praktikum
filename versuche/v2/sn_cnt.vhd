--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Declaring entity with port map configuration
entity sn_cnt is
  Port (clk, res, enable : in std_logic; 
        cnt : out std_logic_vector(2 downto 0)
                );    
end sn_cnt;

architecture RTL of sn_cnt is
--signal declaration
signal d1_sig, d2_sig, q0_sig, q1_sig, q2_sig, qb0_sig, qb1_sig, qb2_sig : std_logic := '0'; --no d0 needed because of feedback with qb0
signal and0_sig, and1_sig, and2_sig, and3_sig, nand0_sig : std_logic := '0';     -- no or-outp-signal because of d = or_outp
begin
--component declaration from my_comps.vhd
--FlipFlop component declarations
dff0 : entity work.my_dff_re(behav)
       port map(d => qb0_sig, clk => clk, res => res, en => enable ,qb => qb0_sig, q => q0_sig);
       
dff1 : entity work.my_dff_re(behav)
       port map(d => d1_sig, clk => clk, res => res, en => enable, qb => qb1_sig, q => q1_sig);
       
dff2 : entity work.my_dff_re(behav)
       port map(d => d2_sig, clk => clk, res => res, en => enable, qb => qb2_sig, q => q2_sig);

--combinatorial logic between FlipFlops       
and0 : entity work.my_and2(and2behav)
       port map (a => qb1_sig, b => q0_sig, y => and0_sig);

and1 : entity work.my_and2(and2behav)
       port map (a => qb0_sig, b => q1_sig, y => and1_sig);
       
and2 : entity work.my_and2(and2behav)
       port map (a => q2_sig, b => nand0_sig, y => and2_sig);
       
and3 : entity work.my_and3(and3behav)
       port map (a => q0_sig, b => q1_sig, c => qb2_sig ,y => and3_sig);

nand0 : entity work.my_nand2(nand2behav)
        port map (a => q0_sig, b => q1_sig, y => nand0_sig);
        
or0 : entity work.my_or2(or2behav)
        port map (a => and0_sig, b => and1_sig, y => d1_sig);
        
or1 : entity work.my_or2(or2behav)
        port map (a => and2_sig, b => and3_sig, y => d2_sig);

--assigning output ports to Top Level Entity sn_cnt
cnt <= q2_sig & q1_sig & q0_sig;     --Concatenation of cnt output signals (2 downto 0)

end RTL;
