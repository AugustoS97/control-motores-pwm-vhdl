----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.06.2021 20:50:28
-- Design Name: 
-- Module Name: control_dir - Behavioral
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

entity control_direccion is
    Port ( direccion : in STD_LOGIC;
           enable : in STD_LOGIC;
           dir_A : out STD_LOGIC;
           dir_B : out STD_LOGIC);
end control_direccion;

architecture Behavioral of control_direccion is

begin

    control_direccion : process (direccion, enable) begin
        if enable = '1' then
            if direccion = '1' then --Si se elige giro adelante
                dir_A <= '1'; -- Se habilita la señal adelante
                dir_B <= '0'; --Se deshabilita señal atras
            else
                dir_A <= '0'; --Se deshabilita señal adelante
                dir_B <= '1'; --Se habilita señal adelante
            end if;
        else  --Si se deshabilita motor
            dir_A <= '0';
            dir_B <= '0'; 
        end if;
    
    end process;

end Behavioral;
