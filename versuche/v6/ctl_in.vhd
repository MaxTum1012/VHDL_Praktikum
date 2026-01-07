--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ctl_in is
    port (clk, res : in std_logic;
          hg_done : in std_logic;
          ready : out std_logic;
          output_head : out std_logic;
          inc_aal1 : out std_logic;
          sel : out std_logic_vector(1 downto 0);
          we_fifo : out std_logic);
end ctl_in;

architecture Behavioral of ctl_in is
type state is (init, start, head_write, new_aal1, aal1_write, waiting, data_write, last_byte); --state definition
signal cur_state, next_state : state := init;
signal ready_sig : std_logic := '0';
signal data_cnt : std_logic_vector(8 downto 0) := (others => '0');
begin
--part 1 : data_cnt
p1 : process(clk, hg_done)
begin
    if clk'event and clk = '1' then
        if hg_done = '1' then
            ready_sig <= '1';
        elsif ready_sig = '1' then
            data_cnt <= std_logic_vector(unsigned(data_cnt) + 1);
            if to_integer(unsigned(data_cnt)) = 376 then
                data_cnt <= std_logic_vector(to_unsigned(1, 9));
            end if;
        end if;
    end if;
end process;

--part 2 : FSM
p2 : process(cur_state, data_cnt, hg_done)
begin

--Next-state logic
case cur_state is
when init =>
    if res = '1' then
        next_state <= init;
    elsif hg_done = '1' then
        next_state <= start;
    else 
        next_state <= init;
    end if;
    
when start =>
    if res = '1' then
        next_state <= init;
    else
        next_state <= head_write;
   end if;

when head_write =>
    if res = '1' then
        next_state <= init;
    elsif to_integer(unsigned(data_cnt)) = 4 then
        next_state <= new_aal1;
    else
        next_state <= head_write;
    end if;
    
when new_aal1 =>
    if res = '1' then
        next_state <= init;
    else
        next_state <= aal1_write;
    end if;
    
when aal1_write =>
    next_state <= waiting;
 
 when waiting =>
    if res = '1' then
        next_state <= init;
    elsif to_integer(unsigned(data_cnt)) /= 375 and data_cnt(2 downto 0) = "111" then
        next_state <= data_write;
    elsif to_integer(unsigned(data_cnt)) = 375 and data_cnt(2 downto 0) = "111" then
        next_state <= last_byte;
    else
        next_state <= waiting;
    end if;

when data_write =>
    if res = '1' then
        next_state <= init;
    else
        next_state <= waiting;
    end if;
    
when last_byte =>
    if res = '1' then
        next_state <= init;
    else
        next_state <= head_write;
    end if;
when others => null;
end case;

--output logic
case cur_state is
when init =>
    ready       <= '0';
    output_head <= '0';
    inc_aal1    <= '0';
    sel         <= (others => '0');
    we_fifo     <= '0';
    
when start =>
    ready       <= '1';
    output_head <= '1';
    inc_aal1    <= '0';
    sel         <= (others => '0');
    we_fifo     <= '0';
    
when head_write => 
    ready       <= '1';
    output_head <= '1';
    inc_aal1    <= '0';
    sel         <= "10";
    we_fifo     <= '1';
    
when new_aal1 =>
    ready       <= '1';
    output_head <= '0';
    inc_aal1    <= '1';
    sel         <= "10";
    we_fifo     <= '1';
    
when aal1_write =>
    ready       <= '1';
    output_head <= '0';
    inc_aal1    <= '0';
    sel         <= "01";
    we_fifo     <= '1';
    
when waiting =>
    ready       <= '1';
    output_head <= '0';
    inc_aal1    <= '0';
    sel         <= (others => '0');
    we_fifo     <= '0';
    
when data_write =>
    ready       <= '1';
    output_head <= '0';
    inc_aal1    <= '0';
    sel         <= (others => '0');
    we_fifo     <= '1';
    
when last_byte =>
    ready       <= '1';
    output_head <= '1';
    inc_aal1    <= '0';
    sel         <= (others => '0');
    we_fifo     <= '1';
    
when others => null;
end case;

end process;

--jump into next state in synchronous process
p3 : process(clk)
begin
    if clk'event and clk = '1' then
        if res = '1' then
            cur_state <= init;
        else
            cur_STATE <= next_state;
        end if;
    end if;
end process;

end Behavioral;
