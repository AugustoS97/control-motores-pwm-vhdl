library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity cont_preescalado is
    port (clk : in std_logic; -- Reloj de la tarjeta 50MHz
    reset : in std_logic;
    clk_250Khz : out std_logic); --Salida: reloj que usará el contador PWM
end cont_preescalado;

architecture Behavioral of cont_preescalado is
constant preescal:std_logic_vector(11 downto 0):= CONV_STD_LOGIC_VECTOR(976, 12);
signal clk_out_aux : std_logic:= '0';

begin
output: process(clk,reset)
variable cuenta : std_logic_vector(11 downto 0):="000000000000";
    begin
        if (reset='1') then -- Reset asíncrono
            cuenta:=(others=>'0'); -- Inicializar contador
        elsif (clk'event and clk='1') then -- Flanco de subida en reloj
            cuenta:=(cuenta+1); -- Incrementar contador
            if (cuenta=preescal) then -- usamos la mitad del periodo
                clk_out_aux <= not clk_out_aux;
                cuenta:=(others=>'0'); -- Inicializar contador
            end if;
        end if;
    end process;
    clk_250Khz <= clk_out_aux;
end Behavioral;
