-- Listing 4.11
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mod_m_counter is-- lo usamos como divisor genera una CE cada M cuentas
   generic(
      N: integer := 13;     -- number of bits
      M: integer := 4000     -- mod-M. Vale 4000: como el clk es de 100MHz la señal de salida es de 25 kHz
  );
   port(
      clk, reset: in std_logic;
      CE: out std_logic
      
   );
end mod_m_counter;

architecture arch of mod_m_counter is
   signal r_reg: unsigned(N-1 downto 0);
   signal r_next: unsigned(N-1 downto 0);
	

begin
   -- register
   process(clk,reset)
   begin
      if (reset='1') then
         r_reg <= (others=>'0');
      elsif (clk'event and clk='1') then
         r_reg <= r_next;
      end if;
   end process;
   -- next-state logic
   r_next <= (others=>'0') when r_reg=(M-1) else
             r_reg + 1;
   -- output logic
   
   CE <= '1' when r_reg=(M-1) else '0';
end arch;