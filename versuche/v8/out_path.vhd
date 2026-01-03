--created by Max Biricz
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL ;
use IEEE.numeric_std.all;

ENTITY out_path IS
	PORT(net_clk : IN std_logic;
		res : IN std_logic;
		cell_start : IN std_logic;
		level_reached : IN std_logic;
		cell_clk : OUT std_logic;
		fifo_read_enab : OUT std_logic;
		fifo_data : IN std_logic_vector(7 DOWNTO 0);
		atm_data : OUT std_logic_vector(7 DOWNTO 0));
END out_path;

ARCHITECTURE behav OF out_path IS
	SIGNAL cell_start_delayed : std_logic := '0';
	signal cell_clk_sig       : std_logic := '0';
	--lzg signals
    SIGNAL lzg_start          : std_logic := '0';
	signal lzg_cnt            : std_logic_vector(5 downto 0) := (others => '0');
	signal lzg_data           : std_logic_vector(7 downto 0) := (others => '0');
	signal lzg_enab           : std_logic := '0';
	--fsm types and signals
	type state is (last_byte_lzg, last_byte_FIFO, read_lzg, read_FIFO);
	signal cur_state, next_state : state := last_byte_lzg;
	--signals MUX
	signal mux_sel : std_logic := '0';

BEGIN
--assigning signals to out ports for usage in processes (out mode can not be read)
cell_clk <= cell_clk_sig;

	p1:PROCESS (net_clk)
	BEGIN
		IF net_clk'EVENT AND net_clk = '1' THEN
			IF res='1' THEN
				cell_clk_sig <= '0';
				cell_start_delayed <= '0';
			ELSE
				cell_start_delayed <= cell_start;           --Delay realised by FlipFlop
				cell_clk_sig <= cell_start_delayed;
			END IF;
		END IF;
	END PROCESS p1;

	lzg_start <= cell_start_delayed;
	
	--LZG------------------------------------------------------------------------------------------------------------------------------
	--count bytes in empty cell
	lzg_count : process(net_clk, lzg_start)
	begin
	   if res = '1' then
	       lzg_cnt <= std_logic_vector(to_unsigned(1, 6));
	   elsif net_clk'event and net_clk = '1' then
	       if lzg_start = '1' then
	           lzg_cnt <= std_logic_vector(to_unsigned(1, 6));
	           lzg_enab <= '1';
	       elsif 1 <= to_integer(unsigned(lzg_cnt)) and to_integer(unsigned(lzg_cnt)) < 53 and lzg_enab = '1' then
	           lzg_cnt <= std_logic_vector(unsigned(lzg_cnt) + 1);
	       else
	           lzg_cnt <= std_logic_vector(to_unsigned(1, 6));
	       end if;
	   end if;
	end process lzg_count;
	
	--create content of cells
	lzg_generate : process(lzg_cnt, lzg_start)
	begin
	   if 1 <= to_integer(unsigned(lzg_cnt)) and to_integer(unsigned(lzg_cnt)) <= 4 then
	       lzg_data <= X"00";
	   elsif to_integer(unsigned(lzg_cnt)) = 5 then
	       lzg_data <= X"55";    
	   else
	       lzg_data <= X"6A";
	   end if;
	end process lzg_generate;
	
	--MUX------------------------------------------------------------------------------------------------------------------------------
	
	MUX: process(lzg_data, fifo_data, mux_sel)
	begin
        if mux_sel = '0' then
           atm_data <= lzg_data;
        elsif mux_sel = '1' then
           atm_data <= fifo_data;
        end if; 
    end process;
	
	--FSM------------------------------------------------------------------------------------------------------------------------------
	--next-state logic
	FSM : process(level_reached, cell_start, cell_start_delayed)
	begin
	case cur_state is
	when last_byte_lzg =>
	   --send empty cell
	   if cell_start_delayed = '1' and level_reached = '0' then
	       next_state <= read_lzg;
	   elsif cell_start = '1' and level_reached = '1' then
	       next_state <= read_FIFO;
	   else
	       next_state <= last_byte_lzg;
	   end if;
	   
	when last_byte_FIFO =>
	   if cell_start_delayed = '1' and level_reached = '0' then
	       next_state <= read_lzg;
	   elsif cell_start = '1' and level_reached = '1' then
	       next_state <= read_FIFO;
	   end if;
	
	when read_lzg =>
	   if cell_start = '1' and level_reached = '0' then 
	       next_state <= last_byte_lzg;
	   elsif cell_start = '1' and level_reached = '1' then
	       next_state <= last_byte_FIFO;
	   else
	       next_state <= read_lzg;
	   end if;
	 
	when read_FIFO =>
	   if cell_start = '1' and level_reached = '0' then
	       next_state <= last_byte_lzg;
	   elsif cell_start = '1' and level_reached = '1' then
	       next_state <= last_byte_FIFO;
	   else
	       next_state <= read_FIFO;
	   end if;
	end case;
	
	--output values
	case cur_state is
	   when last_byte_lzg =>
	       fifo_read_enab <= '0';
	   
	   when last_byte_FIFO =>
	       fifo_read_enab <= '1';  
	       
	   when read_lzg =>
	       fifo_read_enab <= '0';
	       mux_sel        <= '0';
	   
	   when read_FIFO =>
	       fifo_read_enab <= '1';
	       mux_sel        <= '1';  
	end case;
	
	end process;
	
	FSM_next_state : process(net_clk)
	begin
	   if net_clk'event and net_clk = '1' then
	       if res = '1' then
	           cur_state <= last_byte_lzg;
	       else
	           cur_state <= next_state;
	       end if;
	   end if;
	end process;
	

END behav;
