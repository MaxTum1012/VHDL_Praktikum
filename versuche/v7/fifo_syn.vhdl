-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Wed Jan  7 20:32:39 2026
-- Host        : MB-1012 running 64-bit major release  (build 9200)
-- Command     : write_vhdl fifo_syn.vhdl
-- Design      : fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity fifo is
  port (
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    we : in STD_LOGIC;
    re : in STD_LOGIC;
    res : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    clk_out : in STD_LOGIC;
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    level_reached : out STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fifo : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of fifo : entity is "754605d6";
  attribute ld_depth : integer;
  attribute ld_depth of fifo : entity is 3;
  attribute level : integer;
  attribute level of fifo : entity is 5;
end fifo;

architecture STRUCTURE of fifo is
  signal \Mem[0][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[0][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[1][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[1][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[2][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[2][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[3][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[3][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[4][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[4][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[5][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[5][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[6][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[6][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem[7][7]_i_1_n_0\ : STD_LOGIC;
  signal \Mem[7][7]_i_2_n_0\ : STD_LOGIC;
  signal \Mem_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Mem_reg[7]3\ : STD_LOGIC;
  signal clk_in_IBUF : STD_LOGIC;
  signal clk_in_IBUF_BUFG : STD_LOGIC;
  signal clk_out_IBUF : STD_LOGIC;
  signal clk_out_IBUF_BUFG : STD_LOGIC;
  signal data_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_out1 : STD_LOGIC;
  signal \data_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_out[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal data_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal empty_OBUF : STD_LOGIC;
  signal empty_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal full_OBUF : STD_LOGIC;
  signal full_sig11_in : STD_LOGIC;
  signal level_reached_OBUF : STD_LOGIC;
  signal level_reached_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal level_reached_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal re_IBUF : STD_LOGIC;
  signal \read_data2[0]_i_1_n_0\ : STD_LOGIC;
  signal \read_data2_in_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_data2_in_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_data2_in_reg_n_0_[2]\ : STD_LOGIC;
  signal \read_data2_reg_n_0_[0]\ : STD_LOGIC;
  signal \read_data2_reg_n_0_[1]\ : STD_LOGIC;
  signal \read_data2_reg_n_0_[2]\ : STD_LOGIC;
  signal read_data2_temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal res_IBUF : STD_LOGIC;
  signal we_IBUF : STD_LOGIC;
  signal \write_data1_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_data1_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \write_data1_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \write_data1_reg_n_0_[0]\ : STD_LOGIC;
  signal \write_data1_reg_n_0_[1]\ : STD_LOGIC;
  signal \write_data1_reg_n_0_[2]\ : STD_LOGIC;
  signal write_data1_temp : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \Mem_reg[0][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[0][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[1][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[2][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[3][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[4][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[5][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[6][7]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][0]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][1]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][2]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][3]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][4]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][5]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][6]\ : label is "registers";
  attribute RAM_STYLE of \Mem_reg[7][7]\ : label is "registers";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_data2[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \read_data2[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_data1[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_data1[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_data1[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_data1[3]_i_2\ : label is "soft_lutpair0";
begin
\Mem[0][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[0][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[0][7]_i_1_n_0\
    );
\Mem[0][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \write_data1_reg_n_0_[2]\,
      I1 => \write_data1_reg_n_0_[0]\,
      I2 => \write_data1_reg_n_0_[1]\,
      O => \Mem[0][7]_i_2_n_0\
    );
\Mem[1][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[1][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[1][7]_i_1_n_0\
    );
\Mem[1][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \write_data1_reg_n_0_[2]\,
      I1 => \write_data1_reg_n_0_[0]\,
      I2 => \write_data1_reg_n_0_[1]\,
      O => \Mem[1][7]_i_2_n_0\
    );
\Mem[2][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[2][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[2][7]_i_1_n_0\
    );
\Mem[2][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \write_data1_reg_n_0_[0]\,
      I1 => \write_data1_reg_n_0_[1]\,
      I2 => \write_data1_reg_n_0_[2]\,
      O => \Mem[2][7]_i_2_n_0\
    );
\Mem[3][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[3][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[3][7]_i_1_n_0\
    );
\Mem[3][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \write_data1_reg_n_0_[0]\,
      I1 => \write_data1_reg_n_0_[1]\,
      I2 => \write_data1_reg_n_0_[2]\,
      O => \Mem[3][7]_i_2_n_0\
    );
\Mem[4][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[4][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[4][7]_i_1_n_0\
    );
\Mem[4][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \write_data1_reg_n_0_[0]\,
      I1 => \write_data1_reg_n_0_[2]\,
      I2 => \write_data1_reg_n_0_[1]\,
      O => \Mem[4][7]_i_2_n_0\
    );
\Mem[5][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[5][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[5][7]_i_1_n_0\
    );
\Mem[5][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \write_data1_reg_n_0_[2]\,
      I1 => \write_data1_reg_n_0_[0]\,
      I2 => \write_data1_reg_n_0_[1]\,
      O => \Mem[5][7]_i_2_n_0\
    );
\Mem[6][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[6][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[6][7]_i_1_n_0\
    );
\Mem[6][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \write_data1_reg_n_0_[1]\,
      I1 => \write_data1_reg_n_0_[2]\,
      I2 => \write_data1_reg_n_0_[0]\,
      O => \Mem[6][7]_i_2_n_0\
    );
\Mem[7][7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080088888"
    )
        port map (
      I0 => \Mem[7][7]_i_2_n_0\,
      I1 => we_IBUF,
      I2 => p_0_in0_in,
      I3 => p_1_in1_in,
      I4 => full_sig11_in,
      I5 => res_IBUF,
      O => \Mem[7][7]_i_1_n_0\
    );
\Mem[7][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \write_data1_reg_n_0_[1]\,
      I1 => \write_data1_reg_n_0_[2]\,
      I2 => \write_data1_reg_n_0_[0]\,
      O => \Mem[7][7]_i_2_n_0\
    );
\Mem_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[0]\(0),
      R => '0'
    );
\Mem_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[0]\(1),
      R => '0'
    );
\Mem_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[0]\(2),
      R => '0'
    );
\Mem_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[0]\(3),
      R => '0'
    );
\Mem_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[0]\(4),
      R => '0'
    );
\Mem_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[0]\(5),
      R => '0'
    );
\Mem_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[0]\(6),
      R => '0'
    );
\Mem_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[0][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[0]\(7),
      R => '0'
    );
\Mem_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[1]\(0),
      R => '0'
    );
\Mem_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[1]\(1),
      R => '0'
    );
\Mem_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[1]\(2),
      R => '0'
    );
\Mem_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[1]\(3),
      R => '0'
    );
\Mem_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[1]\(4),
      R => '0'
    );
\Mem_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[1]\(5),
      R => '0'
    );
\Mem_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[1]\(6),
      R => '0'
    );
\Mem_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[1][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[1]\(7),
      R => '0'
    );
\Mem_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[2]\(0),
      R => '0'
    );
\Mem_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[2]\(1),
      R => '0'
    );
\Mem_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[2]\(2),
      R => '0'
    );
\Mem_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[2]\(3),
      R => '0'
    );
\Mem_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[2]\(4),
      R => '0'
    );
\Mem_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[2]\(5),
      R => '0'
    );
\Mem_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[2]\(6),
      R => '0'
    );
\Mem_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[2][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[2]\(7),
      R => '0'
    );
\Mem_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[3]\(0),
      R => '0'
    );
\Mem_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[3]\(1),
      R => '0'
    );
\Mem_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[3]\(2),
      R => '0'
    );
\Mem_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[3]\(3),
      R => '0'
    );
\Mem_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[3]\(4),
      R => '0'
    );
\Mem_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[3]\(5),
      R => '0'
    );
\Mem_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[3]\(6),
      R => '0'
    );
\Mem_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[3][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[3]\(7),
      R => '0'
    );
\Mem_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[4]\(0),
      R => '0'
    );
\Mem_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[4]\(1),
      R => '0'
    );
\Mem_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[4]\(2),
      R => '0'
    );
\Mem_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[4]\(3),
      R => '0'
    );
\Mem_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[4]\(4),
      R => '0'
    );
\Mem_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[4]\(5),
      R => '0'
    );
\Mem_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[4]\(6),
      R => '0'
    );
\Mem_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[4][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[4]\(7),
      R => '0'
    );
\Mem_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[5]\(0),
      R => '0'
    );
\Mem_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[5]\(1),
      R => '0'
    );
\Mem_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[5]\(2),
      R => '0'
    );
\Mem_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[5]\(3),
      R => '0'
    );
\Mem_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[5]\(4),
      R => '0'
    );
\Mem_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[5]\(5),
      R => '0'
    );
\Mem_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[5]\(6),
      R => '0'
    );
\Mem_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[5][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[5]\(7),
      R => '0'
    );
\Mem_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[6]\(0),
      R => '0'
    );
\Mem_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[6]\(1),
      R => '0'
    );
\Mem_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[6]\(2),
      R => '0'
    );
\Mem_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[6]\(3),
      R => '0'
    );
\Mem_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[6]\(4),
      R => '0'
    );
\Mem_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[6]\(5),
      R => '0'
    );
\Mem_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[6]\(6),
      R => '0'
    );
\Mem_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[6][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[6]\(7),
      R => '0'
    );
\Mem_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(0),
      Q => \Mem_reg[7]\(0),
      R => '0'
    );
\Mem_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(1),
      Q => \Mem_reg[7]\(1),
      R => '0'
    );
\Mem_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(2),
      Q => \Mem_reg[7]\(2),
      R => '0'
    );
\Mem_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(3),
      Q => \Mem_reg[7]\(3),
      R => '0'
    );
\Mem_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(4),
      Q => \Mem_reg[7]\(4),
      R => '0'
    );
\Mem_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(5),
      Q => \Mem_reg[7]\(5),
      R => '0'
    );
\Mem_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(6),
      Q => \Mem_reg[7]\(6),
      R => '0'
    );
\Mem_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem[7][7]_i_1_n_0\,
      D => data_in_IBUF(7),
      Q => \Mem_reg[7]\(7),
      R => '0'
    );
clk_in_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_in_IBUF,
      O => clk_in_IBUF_BUFG
    );
clk_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_in,
      O => clk_in_IBUF
    );
clk_out_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_out_IBUF,
      O => clk_out_IBUF_BUFG
    );
clk_out_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_out,
      O => clk_out_IBUF
    );
\data_in_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(0),
      O => data_in_IBUF(0)
    );
\data_in_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(1),
      O => data_in_IBUF(1)
    );
\data_in_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(2),
      O => data_in_IBUF(2)
    );
\data_in_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(3),
      O => data_in_IBUF(3)
    );
\data_in_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(4),
      O => data_in_IBUF(4)
    );
\data_in_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(5),
      O => data_in_IBUF(5)
    );
\data_in_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(6),
      O => data_in_IBUF(6)
    );
\data_in_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => data_in(7),
      O => data_in_IBUF(7)
    );
\data_out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(0),
      I1 => \Mem_reg[2]\(0),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(0),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(0),
      O => \data_out[0]_i_2_n_0\
    );
\data_out[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(0),
      I1 => \Mem_reg[6]\(0),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(0),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(0),
      O => \data_out[0]_i_3_n_0\
    );
\data_out[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(1),
      I1 => \Mem_reg[2]\(1),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(1),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(1),
      O => \data_out[1]_i_2_n_0\
    );
\data_out[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(1),
      I1 => \Mem_reg[6]\(1),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(1),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(1),
      O => \data_out[1]_i_3_n_0\
    );
\data_out[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(2),
      I1 => \Mem_reg[2]\(2),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(2),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(2),
      O => \data_out[2]_i_2_n_0\
    );
\data_out[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(2),
      I1 => \Mem_reg[6]\(2),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(2),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(2),
      O => \data_out[2]_i_3_n_0\
    );
\data_out[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(3),
      I1 => \Mem_reg[2]\(3),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(3),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(3),
      O => \data_out[3]_i_2_n_0\
    );
\data_out[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(3),
      I1 => \Mem_reg[6]\(3),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(3),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(3),
      O => \data_out[3]_i_3_n_0\
    );
\data_out[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(4),
      I1 => \Mem_reg[2]\(4),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(4),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(4),
      O => \data_out[4]_i_2_n_0\
    );
\data_out[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(4),
      I1 => \Mem_reg[6]\(4),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(4),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(4),
      O => \data_out[4]_i_3_n_0\
    );
\data_out[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(5),
      I1 => \Mem_reg[2]\(5),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(5),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(5),
      O => \data_out[5]_i_2_n_0\
    );
\data_out[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(5),
      I1 => \Mem_reg[6]\(5),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(5),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(5),
      O => \data_out[5]_i_3_n_0\
    );
\data_out[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(6),
      I1 => \Mem_reg[2]\(6),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(6),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(6),
      O => \data_out[6]_i_2_n_0\
    );
\data_out[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(6),
      I1 => \Mem_reg[6]\(6),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(6),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(6),
      O => \data_out[6]_i_3_n_0\
    );
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006F00"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => empty_OBUF_inst_i_2_n_0,
      I3 => re_IBUF,
      I4 => res_IBUF,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[3]\(7),
      I1 => \Mem_reg[2]\(7),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[1]\(7),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[0]\(7),
      O => \data_out[7]_i_3_n_0\
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \Mem_reg[7]\(7),
      I1 => \Mem_reg[6]\(7),
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \Mem_reg[5]\(7),
      I4 => \read_data2_reg_n_0_[0]\,
      I5 => \Mem_reg[4]\(7),
      O => \data_out[7]_i_4_n_0\
    );
\data_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(0),
      O => data_out(0)
    );
\data_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(1),
      O => data_out(1)
    );
\data_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(2),
      O => data_out(2)
    );
\data_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(3),
      O => data_out(3)
    );
\data_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(4),
      O => data_out(4)
    );
\data_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(5),
      O => data_out(5)
    );
\data_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(6),
      O => data_out(6)
    );
\data_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => data_out_OBUF(7),
      O => data_out(7)
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(0),
      Q => data_out_OBUF(0),
      R => '0'
    );
\data_out_reg[0]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[0]_i_2_n_0\,
      I1 => \data_out[0]_i_3_n_0\,
      O => \Mem[7]\(0),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(1),
      Q => data_out_OBUF(1),
      R => '0'
    );
\data_out_reg[1]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[1]_i_2_n_0\,
      I1 => \data_out[1]_i_3_n_0\,
      O => \Mem[7]\(1),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(2),
      Q => data_out_OBUF(2),
      R => '0'
    );
\data_out_reg[2]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[2]_i_2_n_0\,
      I1 => \data_out[2]_i_3_n_0\,
      O => \Mem[7]\(2),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(3),
      Q => data_out_OBUF(3),
      R => '0'
    );
\data_out_reg[3]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[3]_i_2_n_0\,
      I1 => \data_out[3]_i_3_n_0\,
      O => \Mem[7]\(3),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(4),
      Q => data_out_OBUF(4),
      R => '0'
    );
\data_out_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[4]_i_2_n_0\,
      I1 => \data_out[4]_i_3_n_0\,
      O => \Mem[7]\(4),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(5),
      Q => data_out_OBUF(5),
      R => '0'
    );
\data_out_reg[5]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[5]_i_2_n_0\,
      I1 => \data_out[5]_i_3_n_0\,
      O => \Mem[7]\(5),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(6),
      Q => data_out_OBUF(6),
      R => '0'
    );
\data_out_reg[6]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[6]_i_2_n_0\,
      I1 => \data_out[6]_i_3_n_0\,
      O => \Mem[7]\(6),
      S => \read_data2_reg_n_0_[2]\
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => \Mem[7]\(7),
      Q => data_out_OBUF(7),
      R => '0'
    );
\data_out_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_out[7]_i_3_n_0\,
      I1 => \data_out[7]_i_4_n_0\,
      O => \Mem[7]\(7),
      S => \read_data2_reg_n_0_[2]\
    );
empty_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => empty_OBUF,
      O => empty
    );
empty_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => p_1_in,
      I1 => p_0_in,
      I2 => empty_OBUF_inst_i_2_n_0,
      O => empty_OBUF
    );
empty_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \write_data1_out_reg_n_0_[0]\,
      I1 => \read_data2_reg_n_0_[0]\,
      I2 => \read_data2_reg_n_0_[2]\,
      I3 => \write_data1_out_reg_n_0_[2]\,
      I4 => \read_data2_reg_n_0_[1]\,
      I5 => \write_data1_out_reg_n_0_[1]\,
      O => empty_OBUF_inst_i_2_n_0
    );
full_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => full_OBUF,
      O => full
    );
full_OBUF_inst_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => full_sig11_in,
      I1 => p_1_in1_in,
      I2 => p_0_in0_in,
      O => full_OBUF
    );
full_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => \read_data2_in_reg_n_0_[0]\,
      I1 => \write_data1_reg_n_0_[0]\,
      I2 => \write_data1_reg_n_0_[2]\,
      I3 => \read_data2_in_reg_n_0_[2]\,
      I4 => \write_data1_reg_n_0_[1]\,
      I5 => \read_data2_in_reg_n_0_[1]\,
      O => full_sig11_in
    );
level_reached_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => level_reached_OBUF,
      O => level_reached
    );
level_reached_OBUF_inst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00000FF06006"
    )
        port map (
      I0 => p_0_in,
      I1 => p_1_in,
      I2 => \read_data2_reg_n_0_[0]\,
      I3 => \write_data1_out_reg_n_0_[0]\,
      I4 => level_reached_OBUF_inst_i_2_n_0,
      I5 => level_reached_OBUF_inst_i_3_n_0,
      O => level_reached_OBUF
    );
level_reached_OBUF_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F04B0FBB0FB4F04"
    )
        port map (
      I0 => \write_data1_out_reg_n_0_[0]\,
      I1 => \read_data2_reg_n_0_[0]\,
      I2 => \write_data1_out_reg_n_0_[1]\,
      I3 => \read_data2_reg_n_0_[1]\,
      I4 => \read_data2_reg_n_0_[2]\,
      I5 => \write_data1_out_reg_n_0_[2]\,
      O => level_reached_OBUF_inst_i_2_n_0
    );
level_reached_OBUF_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \read_data2_reg_n_0_[0]\,
      I1 => \write_data1_out_reg_n_0_[0]\,
      I2 => \read_data2_reg_n_0_[1]\,
      I3 => \write_data1_out_reg_n_0_[1]\,
      O => level_reached_OBUF_inst_i_3_n_0
    );
re_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => re,
      O => re_IBUF
    );
\read_data2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \read_data2_reg_n_0_[0]\,
      O => \read_data2[0]_i_1_n_0\
    );
\read_data2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \read_data2_reg_n_0_[0]\,
      I1 => \read_data2_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\read_data2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \read_data2_reg_n_0_[0]\,
      I1 => \read_data2_reg_n_0_[1]\,
      I2 => \read_data2_reg_n_0_[2]\,
      O => \plusOp__0\(2)
    );
\read_data2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AA2"
    )
        port map (
      I0 => re_IBUF,
      I1 => empty_OBUF_inst_i_2_n_0,
      I2 => p_0_in,
      I3 => p_1_in,
      O => data_out1
    );
\read_data2[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \read_data2_reg_n_0_[1]\,
      I1 => \read_data2_reg_n_0_[0]\,
      I2 => \read_data2_reg_n_0_[2]\,
      I3 => p_0_in,
      O => \plusOp__0\(3)
    );
\read_data2_in_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => read_data2_temp(0),
      Q => \read_data2_in_reg_n_0_[0]\,
      R => '0'
    );
\read_data2_in_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => read_data2_temp(1),
      Q => \read_data2_in_reg_n_0_[1]\,
      R => '0'
    );
\read_data2_in_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => read_data2_temp(2),
      Q => \read_data2_in_reg_n_0_[2]\,
      R => '0'
    );
\read_data2_in_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => read_data2_temp(3),
      Q => p_1_in1_in,
      R => '0'
    );
\read_data2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => data_out1,
      CLR => res_IBUF,
      D => \read_data2[0]_i_1_n_0\,
      Q => \read_data2_reg_n_0_[0]\
    );
\read_data2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => data_out1,
      CLR => res_IBUF,
      D => \plusOp__0\(1),
      Q => \read_data2_reg_n_0_[1]\
    );
\read_data2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => data_out1,
      CLR => res_IBUF,
      D => \plusOp__0\(2),
      Q => \read_data2_reg_n_0_[2]\
    );
\read_data2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => data_out1,
      CLR => res_IBUF,
      D => \plusOp__0\(3),
      Q => p_0_in
    );
\read_data2_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \read_data2_reg_n_0_[0]\,
      Q => read_data2_temp(0),
      R => '0'
    );
\read_data2_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \read_data2_reg_n_0_[1]\,
      Q => read_data2_temp(1),
      R => '0'
    );
\read_data2_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => \read_data2_reg_n_0_[2]\,
      Q => read_data2_temp(2),
      R => '0'
    );
\read_data2_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => '1',
      D => p_0_in,
      Q => read_data2_temp(3),
      R => '0'
    );
res_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => res,
      O => res_IBUF
    );
we_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => we,
      O => we_IBUF
    );
\write_data1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \write_data1_reg_n_0_[0]\,
      O => plusOp(0)
    );
\write_data1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \write_data1_reg_n_0_[0]\,
      I1 => \write_data1_reg_n_0_[1]\,
      O => plusOp(1)
    );
\write_data1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \write_data1_reg_n_0_[0]\,
      I1 => \write_data1_reg_n_0_[1]\,
      I2 => \write_data1_reg_n_0_[2]\,
      O => plusOp(2)
    );
\write_data1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"82AA"
    )
        port map (
      I0 => we_IBUF,
      I1 => p_0_in0_in,
      I2 => p_1_in1_in,
      I3 => full_sig11_in,
      O => \Mem_reg[7]3\
    );
\write_data1[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \write_data1_reg_n_0_[1]\,
      I1 => \write_data1_reg_n_0_[0]\,
      I2 => \write_data1_reg_n_0_[2]\,
      I3 => p_0_in0_in,
      O => plusOp(3)
    );
\write_data1_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => write_data1_temp(0),
      Q => \write_data1_out_reg_n_0_[0]\,
      R => '0'
    );
\write_data1_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => write_data1_temp(1),
      Q => \write_data1_out_reg_n_0_[1]\,
      R => '0'
    );
\write_data1_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => write_data1_temp(2),
      Q => \write_data1_out_reg_n_0_[2]\,
      R => '0'
    );
\write_data1_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => write_data1_temp(3),
      Q => p_1_in,
      R => '0'
    );
\write_data1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem_reg[7]3\,
      CLR => res_IBUF,
      D => plusOp(0),
      Q => \write_data1_reg_n_0_[0]\
    );
\write_data1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem_reg[7]3\,
      CLR => res_IBUF,
      D => plusOp(1),
      Q => \write_data1_reg_n_0_[1]\
    );
\write_data1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem_reg[7]3\,
      CLR => res_IBUF,
      D => plusOp(2),
      Q => \write_data1_reg_n_0_[2]\
    );
\write_data1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_IBUF_BUFG,
      CE => \Mem_reg[7]3\,
      CLR => res_IBUF,
      D => plusOp(3),
      Q => p_0_in0_in
    );
\write_data1_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => \write_data1_reg_n_0_[0]\,
      Q => write_data1_temp(0),
      R => '0'
    );
\write_data1_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => \write_data1_reg_n_0_[1]\,
      Q => write_data1_temp(1),
      R => '0'
    );
\write_data1_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => \write_data1_reg_n_0_[2]\,
      Q => write_data1_temp(2),
      R => '0'
    );
\write_data1_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => '1',
      D => p_0_in0_in,
      Q => write_data1_temp(3),
      R => '0'
    );
end STRUCTURE;
