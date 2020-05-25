library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity cnt_memoria is
    Port ( en_cnt : in  STD_LOGIC;
           rst_cnt : in  STD_LOGIC;
           suma_resta : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           cnt_out : out  STD_LOGIC_VECTOR (3 downto 0));
end cnt_memoria;

	architecture Behavioral of cnt_memoria is

signal q_bus, d_bus, M, Temp : STD_LOGIC_VECTOR(3 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
--signal bus_sel : STD_LOGIC:='0';

begin


M <= conv_std_logic_Vector(15,4);    -- Frecuencia de 1 MHz - TEORICA
--M <= conv_std_logic_Vector(9,6);    -- 10M ; Frecuencia de 10 Hz


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_cnt='1' then   
         q_bus <= (others => '0');
      elsif (en_cnt = '1') then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
------ LOGICA DEL ESTADO SIGUIENTE


Temp <= "0000" when ( (q_bus = M) and (suma_resta='0')) else
		  "0000" when ( (q_bus = 0) and (suma_resta='1')) else
			q_bus;
			
d_bus <= Temp + 1 when (suma_resta = '0') else
			Temp - 1;
			
------ LOGICA DE SALIDA 

cnt_out <= q_bus;


end Behavioral;

