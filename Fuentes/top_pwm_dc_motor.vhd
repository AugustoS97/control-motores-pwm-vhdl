----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:01:37 12/16/2020 
-- Design Name: 
-- Module Name:    top_pwm_dc_motor - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_pwm_dc_motor is
    Port ( velocidad : in  STD_LOGIC_VECTOR (7 downto 0);
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  dir_in : in  STD_LOGIC_VECTOR (1 downto 0);
           pwm_out : out  STD_LOGIC;
           dir_out : out  STD_LOGIC_VECTOR (1 downto 0));
end top_pwm_dc_motor;

architecture Behavioral of top_pwm_dc_motor is
	COMPONENT pwm_dc_motor
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		ce : IN std_logic;
		entrada : IN std_logic_vector(7 downto 0);          
		PWM : OUT std_logic
		);
	END COMPONENT;
	COMPONENT mod_m_counter
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;          
		CE : OUT std_logic
		
		);
	END COMPONENT;

	
signal CE :STD_LOGIC;

begin

	Inst_pwm_dc_motor: pwm_dc_motor PORT MAP(
		clk => clk,
		reset => reset,
		ce => CE,
		entrada => velocidad,
		PWM => pwm_out
	);
	Inst_mod_m_counter: mod_m_counter PORT MAP(
		clk =>clk ,
		reset => reset,
		CE => CE
	);
	dir_out<=dir_in;

end Behavioral;

