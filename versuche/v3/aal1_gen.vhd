--created by Max Biricz
library IEEE;
use IEEE.std_logic_1164.all;

entity aal1_gen is
    port (clk, cnt_enab, res : in std_logic; 
         aal1 : out std_logic_vector(7 downto 0));
end aal1_gen;

architecture RTL of aal1_gen is
--signal/wire declaration for connecting components
--assigning default values to prevent latches
signal SN_sig : std_logic_vector(2 downto 0) := (others => '0');
signal SNP_sig : std_logic_vector(3 downto 0) := (others => '0');
signal CSI_sig : std_logic := '0';
begin
counter : entity work.sn_cnt(RTL)
          port map(clk => clk, res => res, enable => cnt_enab, cnt => SN_sig);
          
CRCGen: entity work.aal1_crc_gen(Behavioral)
           port map (CSI => '0', SN => SN_sig, SNP => SNP_sig);     
           
aal1 <= CSI_sig & SN_sig & SNP_sig;     --output signal of AAL1

end RTL;

