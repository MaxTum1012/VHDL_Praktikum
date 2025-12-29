LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ENTITY counter_tb IS
END counter_tb;

ARCHITECTURE stimul OF counter_tb IS
    COMPONENT counter_integer
	PORT(clk, enab, res : IN std_logic;
	    cnt_val : OUT std_logic_vector(4 DOWNTO 0));
    END COMPONENT;
    
    COMPONENT counter_unsigned
	PORT(clk, enab, res : IN std_logic;
	    cnt_val : OUT std_logic_vector(4 DOWNTO 0));
    END COMPONENT;
    SIGNAL c,e,r : std_logic := '0';
    SIGNAL c_v1, c_v2 : std_logic_vector(4 DOWNTO 0) := (others => '0');


BEGIN
    i1: entity work.cnt_integer(behavioral) 
            PORT MAP(clk=>c, enab=>e, res=>r, cnt_val=>c_v1);
    i2: entity work.cnt_unsigned(behavioral)
            port map(clk => c, enab => e, res => r, cnt_val => c_v2);

    c <= NOT c AFTER 10 ns;

    PROCESS
    BEGIN
	WAIT FOR 45 ns;
	r<='1';
	WAIT FOR 20 ns;
	r<='0';
	WAIT FOR 30 ns;
	e<='1';
	WAIT FOR 200 ns;
	e<='0';
	WAIT FOR 20 ns;
	e<='1';
	WAIT FOR 1200 ns;
	WAIT;
    END PROCESS;
END stimul;