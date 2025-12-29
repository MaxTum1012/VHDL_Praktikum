LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY head_gen IS
	PORT (	clk : IN std_logic;
		res : IN std_logic;
		set_head : IN std_logic;
		head_in : IN std_logic_vector(31 DOWNTO 0);
		output_head : IN std_logic;
		head_data : OUT std_logic_vector(7 DOWNTO 0);
		hg_done : OUT std_logic);
END head_gen;

ARCHITECTURE struct OF head_gen IS
--Assigning default values to prevent latches
signal hec_gen_bit : std_logic := '0';
signal hec_enable_sig : std_logic := '0';
signal hec_res_sig : std_logic := '0';
signal hec_val : std_logic_vector(7 downto 0) := (others => '0');
signal head_intern : std_logic_vector(32 downto 1) := (others => '0');
signal hg_cnt_val_sig : std_logic_vector(5 downto 0) := (others => '0');
signal out_cnt_val_sig : std_logic_vector(2 downto 0) := (others => '0');
signal reset : std_logic := '0';                                            --signal from OR-Operation of hec_res/res
signal zero_sig : std_logic_vector(7 downto 0) := (others => '0');          --for unused inputs of mux8x1
BEGIN

    HReg: entity work.h_reg(Behavioral)
    generic map(size => 32)
    port map(clk => clk, res => res, set_head => set_head, data_in => head_in, data_out => head_intern);
    
    HGCnt: entity work.hg_cnt(Behavioral)
    port map (clk => clk, res => res, set_head => set_head, hg_done => hg_done, hec_enable => hec_enable_sig, hec_res => hec_res_sig, hg_cnt_val => hg_cnt_val_sig);
    
    reset <= hec_res_sig or res;
    
    HecGen: entity work.hec_gen(Behavioral)
	port map(data => hec_gen_bit, clk => clk, res => reset, enab => hec_enable_sig, hec => hec_val);
	
	OutCnt: entity work.out_cnt(Behavioral)
	port map(clk => clk, res => res, output_head => output_head, out_cnt_val => out_cnt_val_sig);
	
	Mux32x1: entity work.mux32x1(RTL)
	port map(in_1        => head_intern(32),
             in_2        => head_intern(31),
             in_3        => head_intern(30),
             in_4        => head_intern(29),
             in_5        => head_intern(28),
             in_6        => head_intern(27),
             in_7        => head_intern(26),
             in_8        => head_intern(25),
             in_9        => head_intern(24),
             in_10       => head_intern(23),
             in_11       => head_intern(22),
             in_12       => head_intern(21),
             in_13       => head_intern(20),
             in_14       => head_intern(19),
             in_15       => head_intern(18),
             in_16       => head_intern(17),
             in_17       => head_intern(16),
             in_18       => head_intern(15),
             in_19       => head_intern(14),
             in_20       => head_intern(13),
             in_21       => head_intern(12),
             in_22       => head_intern(11),
             in_23       => head_intern(10),
             in_24       => head_intern(9),
             in_25       => head_intern(8),
             in_26       => head_intern(7),
             in_27       => head_intern(6),
             in_28       => head_intern(5),
             in_29       => head_intern(4),
             in_30       => head_intern(3),
             in_31       => head_intern(2),
             in_32       => head_intern(1),
             sel         => hg_cnt_val_sig,
             output      => hec_gen_bit);
    
    Mux8x1: entity work.mux8x1(RTL)
    port map(in_1 => head_intern(32 downto 25),
             in_2 => head_intern(24 downto 17),
             in_3 => head_intern(16 downto 9 ),
             in_4 => head_intern(8  downto 1),
             in_5 => hec_val, in_6 => zero_sig, in_7 => zero_sig, in_8 => zero_sig,
             sel => out_cnt_val_sig,
             output => head_data);
    
	 
END struct;
