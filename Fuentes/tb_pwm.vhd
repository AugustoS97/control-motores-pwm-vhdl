--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:09:39 12/16/2020
-- Design Name:   
-- Module Name:   C:/Users/Usuario/Desktop/SED_Clases_virtuales/pwm/tb_pwm.vhd
-- Project Name:  pwm
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top_pwm_dc_motor
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_pwm IS
END tb_pwm;
 
ARCHITECTURE behavior OF tb_pwm IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top_pwm_dc_motor
    PORT(
         velocidad : IN  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         dir_in : IN  std_logic_vector(1 downto 0);
         pwm_out : OUT  std_logic;
         dir_out : OUT  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal velocidad : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal dir_in : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal pwm_out : std_logic;
   signal dir_out : std_logic_vector(1 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top_pwm_dc_motor PORT MAP (
          velocidad => velocidad,
          clk => clk,
          reset => reset,
          dir_in => dir_in,
          pwm_out => pwm_out,
          dir_out => dir_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset<='1';
      wait for 100 ns;	
		reset<='0';

      wait for clk_period*10;
		velocidad<="10000000";
		 wait for clk_period*5000000;
		velocidad<="10001000";
		wait for clk_period*5000000;
		velocidad<="11101000";
		wait for clk_period*5000000;
		velocidad<="00001000";
      -- insert stimulus here 

      wait;
   end process;

END;
