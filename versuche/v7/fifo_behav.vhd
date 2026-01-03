--created by Max Biricz
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity fifo is
    generic(ld_depth : integer := 3;
            level    : integer := 5);
    port (data_in : in std_logic_vector(7 downto 0);                    --data_in = data1
          we, re, res :  in std_logic;                                  --write_enable, read_enable, reset
          clk_in, clk_out : in std_logic;                               --clk_in = clk1, clk_out = clk2
          empty, full : out std_logic;                                  -- signals for storage volume of FIFO
          level_reached : out std_logic;                                --if '1' then data stored in Memory will be read from read_ptr
          data_out : out std_logic_vector(7 downto 0));                 --data_out = data2
end fifo;

architecture Behavioral of fifo is
--subtype and type of Memory
subtype Byte is std_logic_vector(7 downto 0);
subtype MemAddrType is integer range 2**ld_depth - 1 downto 0;
type MemType is array(MemAddrType) of Byte;
--subtype of pointers
subtype PtrType is std_logic_vector(ld_depth downto 0);             --length of write_data1 : 1 + log_2(N)
--Dynamic memory instantiation
signal Mem : MemType := (others => (others => '0'));
--Memory pointer declaration
signal write_data1 : PtrType := (others => '0');           
signal read_data2  : PtrType := (others => '0');
--Filling status of memory
signal empty_sig : std_logic := '0';
signal full_sig  : std_logic := '0';         
--Synchronised Pointer Signals
signal read_data2_in    : PtrType := (others => '0');
signal read_data2_temp  : PtrType := (others => '0');
signal write_data1_out  : PtrType := (others => '0');
signal write_data1_temp : PtrType := (others => '0');

begin

empty <= empty_sig;
full <= full_sig;

--write data_in
write_ptr : process(clk_in, res)
begin
    --asynchronous reset
    if res = '1' then
        write_data1 <= (others => '0');
    --synchronous write with write_enable
    elsif clk_in'event and clk_in = '1' and we = '1' and full_sig /= '1' then
        Mem(to_integer(unsigned(write_data1)) mod 2**ld_depth) <= data_in;
        write_data1 <= std_logic_vector(to_unsigned(to_integer(unsigned(write_data1) + 1) mod 2 ** (ld_depth + 1), ld_depth + 1));      --increment write_ptr
    end if;
end process;

--read data_out
read_ptr : process(clk_out, res)
begin
    --asynchronous reset
    if res = '1' then
        read_data2 <= (others => '0');
    --synchronous read with read_enable
    elsif clk_out'event and clk_out = '1' and re = '1' and empty_sig /= '1' then
        data_out   <= Mem(to_integer(unsigned(read_data2)) mod 2**ld_depth);
        read_data2 <= std_logic_vector(to_unsigned(to_integer(unsigned(read_data2) + 1) mod 2 ** (ld_depth + 1), ld_depth + 1));        --increment read_ptr
    end if;
end process;

--Sync Block clk_in -> no reset needed
sync_in : process(clk_in, read_data2)
begin
if clk_in'event and clk_in = '1' then
    read_data2_temp <= read_data2;

    read_data2_in <= read_data2_temp; 
end if;

end process;

--Sync Block clk_out -> no reset needed
sync_out : process(clk_out, write_data1)
begin
    if clk_out'event and clk_out = '1' then
        write_data1_temp <= write_data1;

        write_data1_out  <= write_data1_temp;  
    end if;

end process;

--comparator to generate full-signal (no clk needed)
cmp_in : process(read_data2_in, write_data1)
begin
    if (read_data2_in (ld_depth - 1 downto 0) = write_data1 (ld_depth - 1 downto 0)) and (read_data2_in(ld_depth) /= write_data1(ld_depth)) then
        full_sig <= '1';
    else
        full_sig <= '0';
    end if;
end process;

--comparator to generate empty- & level_reached-signal (no clk needed)
cmp_out : process(write_data1_out, read_data2)
variable diff : integer;
begin
    --empty
    if write_data1_out = read_data2 then
        empty_sig <= '1';
    else
        empty_sig <= '0';
    end if;
    
    --level_reached
    diff := to_integer(unsigned(write_data1_out(ld_depth - 1 downto 0)) - unsigned(read_data2(ld_depth - 1 downto 0)));
    if diff >= level or (diff = 0 and write_data1_out(ld_depth) /= read_data2(ld_depth)) then                         --FIFO full (level_reached = 1) -> diff = 0
        level_reached <= '1';
    else 
        level_reached <= '0';
    end if;
end process;

end Behavioral;
