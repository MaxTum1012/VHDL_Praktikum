--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity pack is
    port (d_clk, net_clk, res : in std_logic;
          set_header, data, cell_start : in std_logic; 
          head_in : in std_logic_vector(31 downto 0); 
          cell_clk : out std_logic;
          ready : out std_logic;
          atm_data : out std_logic_vector(7 downto 0));
end pack;

architecture Behavioral of pack is
signal we_fifo_sig, re_fifo_sig : std_logic := '0';
signal fifo_in_sig : std_logic_vector(7 downto 0) := (others => '0');
signal empty_sig, full_sig : std_logic := '0';
signal level_reached_sig : std_logic := '0';
signal fifo_out_sig : std_logic_vector(7 downto 0) := (others => '0');

begin

ingress : entity work.ingress(struct)
          port map(d_clk => d_clk,
                   res => res,
                   set_header => set_header,
                   header => head_in,
                   data => data,
                   ready => ready,
                   we_fifo => we_fifo_sig,
                   fifo_data => fifo_in_sig);
                   
fifo : entity work.fifo(behavioral)
       generic map(ld_depth => 7,
                   level    => 53)
       port map(data_in => fifo_in_sig,
                we => we_fifo_sig, re => re_fifo_sig, res => res,
                clk_in => d_clk, clk_out => net_clk,
                empty => empty_sig, full => full_sig,
                level_reached => level_reached_sig,
                data_out => fifo_out_sig);
                
                
outpath : entity work.out_path(behav)
           port map (net_clk => net_clk, cell_clk => cell_clk,
                     res => res, cell_start => cell_start,
                     level_reached => level_reached_sig,
                     fifo_read_enab => re_fifo_sig,
                     fifo_data => fifo_out_sig,
                     atm_data => atm_data);


end Behavioral;
