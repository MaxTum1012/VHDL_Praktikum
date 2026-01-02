-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Jan  2 18:26:52 2026
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
  attribute ECO_CHECKSUM of fifo : entity is "eb10d75d";
  attribute ld_depth : integer;
  attribute ld_depth of fifo : entity is 3;
  attribute level : integer;
  attribute level of fifo : entity is 5;
end fifo;

architecture STRUCTURE of fifo is
  signal Mem_reg_0_7_0_5_i_1_n_0 : STD_LOGIC;
  signal Mem_reg_0_7_0_5_n_0 : STD_LOGIC;
  signal Mem_reg_0_7_0_5_n_1 : STD_LOGIC;
  signal Mem_reg_0_7_0_5_n_2 : STD_LOGIC;
  signal Mem_reg_0_7_0_5_n_3 : STD_LOGIC;
  signal Mem_reg_0_7_0_5_n_4 : STD_LOGIC;
  signal Mem_reg_0_7_0_5_n_5 : STD_LOGIC;
  signal Mem_reg_0_7_6_7_n_0 : STD_LOGIC;
  signal Mem_reg_0_7_6_7_n_1 : STD_LOGIC;
  signal clk_in_IBUF : STD_LOGIC;
  signal clk_in_IBUF_BUFG : STD_LOGIC;
  signal clk_out_IBUF : STD_LOGIC;
  signal clk_out_IBUF_BUFG : STD_LOGIC;
  signal data_in_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_out1 : STD_LOGIC;
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal data_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal empty_OBUF : STD_LOGIC;
  signal empty_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal full_OBUF : STD_LOGIC;
  signal full_sig13_in : STD_LOGIC;
  signal level_reached_OBUF : STD_LOGIC;
  signal level_reached_OBUF_inst_i_2_n_0 : STD_LOGIC;
  signal level_reached_OBUF_inst_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
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
  signal NLW_Mem_reg_0_7_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Mem_reg_0_7_6_7_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Mem_reg_0_7_6_7_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_Mem_reg_0_7_6_7_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of Mem_reg_0_7_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of Mem_reg_0_7_0_5 : label is 64;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of Mem_reg_0_7_0_5 : label is "Mem";
  attribute XILINX_REPORT_XFORM : string;
  attribute XILINX_REPORT_XFORM of Mem_reg_0_7_0_5 : label is "RAM32M";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of Mem_reg_0_7_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of Mem_reg_0_7_0_5 : label is 7;
  attribute ram_offset : integer;
  attribute ram_offset of Mem_reg_0_7_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of Mem_reg_0_7_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of Mem_reg_0_7_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of Mem_reg_0_7_6_7 : label is "";
  attribute RTL_RAM_BITS of Mem_reg_0_7_6_7 : label is 64;
  attribute RTL_RAM_NAME of Mem_reg_0_7_6_7 : label is "Mem";
  attribute XILINX_REPORT_XFORM of Mem_reg_0_7_6_7 : label is "RAM32M";
  attribute ram_addr_begin of Mem_reg_0_7_6_7 : label is 0;
  attribute ram_addr_end of Mem_reg_0_7_6_7 : label is 7;
  attribute ram_offset of Mem_reg_0_7_6_7 : label is 0;
  attribute ram_slice_begin of Mem_reg_0_7_6_7 : label is 6;
  attribute ram_slice_end of Mem_reg_0_7_6_7 : label is 7;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \read_data2[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \read_data2[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \write_data1[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_data1[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_data1[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \write_data1[3]_i_2\ : label is "soft_lutpair1";
begin
Mem_reg_0_7_0_5: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_data2_reg_n_0_[2]\,
      ADDRA(1) => \read_data2_reg_n_0_[1]\,
      ADDRA(0) => \read_data2_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_data2_reg_n_0_[2]\,
      ADDRB(1) => \read_data2_reg_n_0_[1]\,
      ADDRB(0) => \read_data2_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_data2_reg_n_0_[2]\,
      ADDRC(1) => \read_data2_reg_n_0_[1]\,
      ADDRC(0) => \read_data2_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_data1_reg_n_0_[2]\,
      ADDRD(1) => \write_data1_reg_n_0_[1]\,
      ADDRD(0) => \write_data1_reg_n_0_[0]\,
      DIA(1 downto 0) => data_in_IBUF(1 downto 0),
      DIB(1 downto 0) => data_in_IBUF(3 downto 2),
      DIC(1 downto 0) => data_in_IBUF(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1) => Mem_reg_0_7_0_5_n_0,
      DOA(0) => Mem_reg_0_7_0_5_n_1,
      DOB(1) => Mem_reg_0_7_0_5_n_2,
      DOB(0) => Mem_reg_0_7_0_5_n_3,
      DOC(1) => Mem_reg_0_7_0_5_n_4,
      DOC(0) => Mem_reg_0_7_0_5_n_5,
      DOD(1 downto 0) => NLW_Mem_reg_0_7_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_in_IBUF_BUFG,
      WE => Mem_reg_0_7_0_5_i_1_n_0
    );
Mem_reg_0_7_0_5_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000D700"
    )
        port map (
      I0 => full_sig13_in,
      I1 => p_1_in1_in,
      I2 => p_0_in0_in,
      I3 => we_IBUF,
      I4 => res_IBUF,
      O => Mem_reg_0_7_0_5_i_1_n_0
    );
Mem_reg_0_7_6_7: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000"
    )
        port map (
      ADDRA(4 downto 3) => B"00",
      ADDRA(2) => \read_data2_reg_n_0_[2]\,
      ADDRA(1) => \read_data2_reg_n_0_[1]\,
      ADDRA(0) => \read_data2_reg_n_0_[0]\,
      ADDRB(4 downto 3) => B"00",
      ADDRB(2) => \read_data2_reg_n_0_[2]\,
      ADDRB(1) => \read_data2_reg_n_0_[1]\,
      ADDRB(0) => \read_data2_reg_n_0_[0]\,
      ADDRC(4 downto 3) => B"00",
      ADDRC(2) => \read_data2_reg_n_0_[2]\,
      ADDRC(1) => \read_data2_reg_n_0_[1]\,
      ADDRC(0) => \read_data2_reg_n_0_[0]\,
      ADDRD(4 downto 3) => B"00",
      ADDRD(2) => \write_data1_reg_n_0_[2]\,
      ADDRD(1) => \write_data1_reg_n_0_[1]\,
      ADDRD(0) => \write_data1_reg_n_0_[0]\,
      DIA(1 downto 0) => data_in_IBUF(7 downto 6),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1) => Mem_reg_0_7_6_7_n_0,
      DOA(0) => Mem_reg_0_7_6_7_n_1,
      DOB(1 downto 0) => NLW_Mem_reg_0_7_6_7_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_Mem_reg_0_7_6_7_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_Mem_reg_0_7_6_7_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk_in_IBUF_BUFG,
      WE => Mem_reg_0_7_0_5_i_1_n_0
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
      D => Mem_reg_0_7_0_5_n_1,
      Q => data_out_OBUF(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_0_5_n_0,
      Q => data_out_OBUF(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_0_5_n_3,
      Q => data_out_OBUF(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_0_5_n_2,
      Q => data_out_OBUF(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_0_5_n_5,
      Q => data_out_OBUF(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_0_5_n_4,
      Q => data_out_OBUF(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_6_7_n_1,
      Q => data_out_OBUF(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_out_IBUF_BUFG,
      CE => \data_out[7]_i_1_n_0\,
      D => Mem_reg_0_7_6_7_n_0,
      Q => data_out_OBUF(7),
      R => '0'
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
      I0 => full_sig13_in,
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
      O => full_sig13_in
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
      I3 => full_sig13_in,
      O => p_1_out
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
      CE => p_1_out,
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
      CE => p_1_out,
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
      CE => p_1_out,
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
      CE => p_1_out,
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
