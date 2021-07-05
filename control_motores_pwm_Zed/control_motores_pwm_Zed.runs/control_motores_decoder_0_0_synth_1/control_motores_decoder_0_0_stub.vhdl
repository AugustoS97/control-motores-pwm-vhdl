-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Mon Jul  5 18:32:38 2021
-- Host        : DESKTOP-CDDJBQR running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ control_motores_decoder_0_0_stub.vhdl
-- Design      : control_motores_decoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    motor_drcha_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    motor_izda_consigna : in STD_LOGIC_VECTOR ( 2 downto 0 );
    consigna_drcha : out STD_LOGIC_VECTOR ( 7 downto 0 );
    consigna_izda : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "motor_drcha_consigna[2:0],motor_izda_consigna[2:0],consigna_drcha[7:0],consigna_izda[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "decoder,Vivado 2017.4";
begin
end;
