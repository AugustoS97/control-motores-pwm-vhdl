----------------------------------------------------------------------------------
-- Compa��a:            Estado Finito
-- Ingeniero:           Carlos Ramos
-- 
-- Fecha de creaci�n:   2014/05/03 02:47:32
-- Nombre del m�dulo:   pwm_dc_101 - Behavioral 
-- Descripci�n: 
--   Controlador para motor DC de 101 posiciones. Las posiciones corresponden a un
--   porcentaje entre 0 y 100% del ciclo de trabajo, con un incremento del 1% 
--   entre cada uno de los elementos.
 
--   NOTA: En este m�dulo no se toma en cuenta la frecuencia de entrada (es decir,
--   se asume que la frecuencia de entrada en 'clk' es la correcta para el motor).
--
-- Revisi�n:
--   Revisi�n 0.01 - Archivo creado.
----------------------------------------------------------------------------------
 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
  
entity pwm_dc_motor is
    PORT(
        clk    : IN  STD_LOGIC;
        reset  : IN  STD_LOGIC;
		  ce		: IN  STD_LOGIC;
        entrada: IN  STD_LOGIC_VECTOR(7 downto 0);
        PWM : OUT STD_LOGIC
    );
end pwm_dc_motor;
  
architecture Behavioral of pwm_dc_motor is
    signal cnt : UNSIGNED(7 downto 0);
begin
    contador: process (clk, reset, entrada) begin
        if reset = '1' then
            cnt <= (others => '0');
        elsif rising_edge(clk) then
				if CE ='1' then
					if cnt = 255 then
						cnt <= (others => '0');
					else
						cnt <= cnt + 1;
				end if;		
					end if;
        end if;
    end process;
    -- Asignaci�n de se�ales --
    PWM <= '1' when (cnt < UNSIGNED(entrada)) else '0';
end Behavioral;
