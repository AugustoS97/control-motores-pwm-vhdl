-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jul  5 18:32:38 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores_pwm_Zed/control_motores_pwm_Zed.srcs/sources_1/bd/control_motores/ip/control_motores_decoder_0_0/control_motores_decoder_0_0_sim_netlist.vhdl
-- Design      : control_motores_decoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores_decoder_0_0_decoder is
  port (
    consigna_drcha : out STD_LOGIC_VECTOR ( 4 downto 0 );
    consigna_izda : out STD_LOGIC_VECTOR ( 4 downto 0 );
    motor_drcha_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    motor_izda_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of control_motores_decoder_0_0_decoder : entity is "decoder";
end control_motores_decoder_0_0_decoder;

architecture STRUCTURE of control_motores_decoder_0_0_decoder is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \consigna_drcha[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \consigna_drcha[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \consigna_drcha[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \consigna_drcha[7]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \consigna_izda[0]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \consigna_izda[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \consigna_izda[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \consigna_izda[7]_INST_0\ : label is "soft_lutpair3";
begin
\consigna_drcha[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => motor_drcha_consigna(1),
      I1 => motor_drcha_consigna(2),
      I2 => motor_drcha_consigna(0),
      O => consigna_drcha(0)
    );
\consigna_drcha[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => motor_drcha_consigna(2),
      I1 => motor_drcha_consigna(1),
      O => consigna_drcha(1)
    );
\consigna_drcha[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => motor_drcha_consigna(2),
      I1 => motor_drcha_consigna(0),
      I2 => motor_drcha_consigna(1),
      O => consigna_drcha(2)
    );
\consigna_drcha[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => motor_drcha_consigna(2),
      I1 => motor_drcha_consigna(0),
      I2 => motor_drcha_consigna(1),
      O => consigna_drcha(3)
    );
\consigna_drcha[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => motor_drcha_consigna(1),
      I1 => motor_drcha_consigna(2),
      I2 => motor_drcha_consigna(0),
      O => consigna_drcha(4)
    );
\consigna_izda[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => motor_izda_consigna(1),
      I1 => motor_izda_consigna(2),
      I2 => motor_izda_consigna(0),
      O => consigna_izda(0)
    );
\consigna_izda[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => motor_izda_consigna(2),
      I1 => motor_izda_consigna(1),
      O => consigna_izda(1)
    );
\consigna_izda[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => motor_izda_consigna(2),
      I1 => motor_izda_consigna(0),
      I2 => motor_izda_consigna(1),
      O => consigna_izda(2)
    );
\consigna_izda[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => motor_izda_consigna(2),
      I1 => motor_izda_consigna(0),
      I2 => motor_izda_consigna(1),
      O => consigna_izda(3)
    );
\consigna_izda[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => motor_izda_consigna(1),
      I1 => motor_izda_consigna(2),
      I2 => motor_izda_consigna(0),
      O => consigna_izda(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity control_motores_decoder_0_0 is
  port (
    motor_drcha_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    motor_izda_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    consigna_drcha : out STD_LOGIC_VECTOR ( 7 downto 0 );
    consigna_izda : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of control_motores_decoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of control_motores_decoder_0_0 : entity is "control_motores_decoder_0_0,decoder,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of control_motores_decoder_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of control_motores_decoder_0_0 : entity is "decoder,Vivado 2017.4";
end control_motores_decoder_0_0;

architecture STRUCTURE of control_motores_decoder_0_0 is
  signal \^consigna_drcha\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^consigna_izda\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \^motor_drcha_consigna\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^motor_izda_consigna\ : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
  \^motor_drcha_consigna\(2 downto 0) <= motor_drcha_consigna(2 downto 0);
  \^motor_izda_consigna\(2 downto 0) <= motor_izda_consigna(2 downto 0);
  consigna_drcha(7 downto 5) <= \^consigna_drcha\(7 downto 5);
  consigna_drcha(4) <= \^motor_drcha_consigna\(2);
  consigna_drcha(3 downto 1) <= \^consigna_drcha\(3 downto 1);
  consigna_drcha(0) <= \^consigna_drcha\(1);
  consigna_izda(7 downto 5) <= \^consigna_izda\(7 downto 5);
  consigna_izda(4) <= \^motor_izda_consigna\(2);
  consigna_izda(3 downto 1) <= \^consigna_izda\(3 downto 1);
  consigna_izda(0) <= \^consigna_izda\(1);
U0: entity work.control_motores_decoder_0_0_decoder
     port map (
      consigna_drcha(4) => \^consigna_drcha\(7),
      consigna_drcha(3) => \^consigna_drcha\(5),
      consigna_drcha(2 downto 0) => \^consigna_drcha\(3 downto 1),
      consigna_izda(4) => \^consigna_izda\(7),
      consigna_izda(3) => \^consigna_izda\(5),
      consigna_izda(2 downto 0) => \^consigna_izda\(3 downto 1),
      motor_drcha_consigna(2 downto 0) => \^motor_drcha_consigna\(2 downto 0),
      motor_izda_consigna(2 downto 0) => \^motor_izda_consigna\(2 downto 0)
    );
\consigna_drcha[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^motor_drcha_consigna\(1),
      I1 => \^motor_drcha_consigna\(2),
      O => \^consigna_drcha\(6)
    );
\consigna_izda[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^motor_izda_consigna\(1),
      I1 => \^motor_izda_consigna\(2),
      O => \^consigna_izda\(6)
    );
end STRUCTURE;
