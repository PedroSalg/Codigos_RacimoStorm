library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity div_frec_lectura is
    Port ( clk : in  STD_LOGIC;
           en_div_frec : in  STD_LOGIC;
           rst_div_frec : in  STD_LOGIC;
           out_div_frec : out  STD_LOGIC);
end div_frec_lectura;

architecture Behavioral of div_frec_lectura is

signal q_bus, d_bus, M : STD_LOGIC_VECTOR(3 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';

begin

M <= conv_std_logic_Vector(16,4);    -- Frecuencia de 1 MHz - TEORICA


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_div_frec='1' then   
         q_bus <= (others => '0');
      elsif (en_div_frec='1') then 
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
------ LOGICA DEL ESTADO SIGUIENTE

bus_sel <= '1' when (q_bus >= M) else
			  '0';
			  
d_bus <= q_bus + '1' when (bus_sel = '0') else
			(others => '0');
			
------ LOGICA DE SALIDA 

out_div_frec <= Bus_Sel;


end Behavioral;

