----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.06.2021 15:53:27
-- Design Name: 
-- Module Name: decoder - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity decoder is
    Port ( motor_drcha_consigna : in STD_LOGIC_VECTOR (2 downto 0);
           motor_izda_consigna : in STD_LOGIC_VECTOR (2 downto 0);
           consigna_drcha : out STD_LOGIC_VECTOR (7 downto 0);
           consigna_izda : out STD_LOGIC_VECTOR (7 downto 0) );
           
end decoder;

architecture Behavioral of decoder is

begin
                  
with motor_drcha_consigna select
           consigna_drcha <= "00000000" when "000",
                                    "00000011" when "001",
                                    "00000111" when "010",
                                    "00001111" when "011",
                                    "00011111" when "100",
                                    "00111111" when "101",
                                    "01111111" when "110",
                                    "11111111" when "111";                  

                 
with motor_izda_consigna select
     consigna_izda <= "00000000" when "000",
                  "00000011" when "001",
                  "00000111" when "010",
                  "00001111" when "011",
                  "00011111" when "100",
                  "00111111" when "101",
                  "01111111" when "110",
                  "11111111" when "111";

end Behavioral;
