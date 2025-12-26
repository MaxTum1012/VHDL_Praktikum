--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity aal1_crc_gen is
    port (CSI : in std_logic;
          SN  : in std_logic_vector(2 downto 0);
          SNP : out std_logic_vector(3 downto 0));
end aal1_crc_gen;

architecture Behavioral of aal1_crc_gen is
--declaration of crc signals to assign snp sequence (mode : out) bits
signal crc : std_logic_vector(2 downto 0) := "000";
signal parity : std_logic := '0';
--calculation of CRC bits
begin
crc(0) <= SN(2) xor SN(0);
crc(1) <= (SN(2) and SN(1) and SN(0)) or (SN(2) and not SN(1) and not SN(0))
          or (not SN(2) and SN(1) and not SN(0)) or (not SN(2) and not SN(1) and SN(0));
crc(2) <= SN(2) xor SN(1);
parity <= CSI xor SN(2) xor SN(1) xor SN(0) xor crc(2) xor crc(1) xor crc(0);

--assigning crc signal to snp out port
SNP(3 downto 0) <= crc(2 downto 0) & parity;

end Behavioral;
