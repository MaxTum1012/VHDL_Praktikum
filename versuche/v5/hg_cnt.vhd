--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity hg_cnt is
    port (clk, res, set_head : in std_logic;
         hg_done : out std_logic;
         hec_enable : out std_logic;
         hec_res : out std_logic;
         hg_cnt_val : out std_logic_vector(5 downto 0));
end hg_cnt;

architecture Behavioral of hg_cnt is
signal hg_cnt_val_sig : std_logic_vector(5 downto 0) := (others => '0');
signal hec_enable_sig : std_logic := '0';
signal hec_res_sig    : std_logic := '0';
signal hg_done_sig    : std_logic := '0';
begin

--wait for clock to ensure synchronisation
--counting range of clk cycles : 1 to 34 , default clk state: 0
process(clk, res, set_head)
begin
    if clk'event and clk = '1' then
        --first cycle
        if set_head = '1' then
            hec_res_sig <= '1';                                                                             --reset of HEC with upper input port of or gate
            hg_cnt_val_sig <= std_logic_vector(to_unsigned(to_integer(unsigned(hg_cnt_val_sig)) + 1, 6));          
        elsif hec_res_sig = '1' then
            hec_res_sig <= '0';
            hec_enable_sig <= '1';
            hg_cnt_val_sig <= std_logic_vector(to_unsigned(to_integer(unsigned(hg_cnt_val_sig)) + 1, 6));
        elsif hec_enable_sig = '1' then
            case to_integer(unsigned(hg_cnt_val_sig)) is
            when 1  => 
                hec_res_sig <= '0';
                hg_cnt_val_sig <= std_logic_vector(to_unsigned(to_integer(unsigned(hg_cnt_val_sig)) + 1, 6));
            when 33 =>
                hg_done_sig    <= '1';
                hec_enable_sig <= '0';
                hg_cnt_val_sig <= std_logic_vector(to_unsigned(to_integer(unsigned(hg_cnt_val_sig)) + 1, 6));
            when others => 
                hg_cnt_val_sig <= std_logic_vector(to_unsigned(to_integer(unsigned(hg_cnt_val_sig)) + 1, 6));
            end case;
        elsif hg_done_sig = '1' then
            hg_done_sig <= '0';
            hg_cnt_val_sig <= (others => '0');
        end if;                
    end if;
end process;

    --signal assignment
    hg_cnt_val <= hg_cnt_val_sig;
    hec_enable <= hec_enable_sig;
    hec_res     <= hec_res_sig;
    hg_done   <= hg_done_sig; 
end Behavioral;
