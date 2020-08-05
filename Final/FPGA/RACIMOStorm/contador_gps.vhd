library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity contador_gps is
    Port ( clk : in  STD_LOGIC;
           en_cnt_gps : in  STD_LOGIC;
           rst_cnt_gps : in  STD_LOGIC;
           gps_cnt : out  STD_LOGIC_VECTOR (26 downto 0));
end contador_gps;

architecture Behavioral of contador_gps is

signal q_bus, d_bus, M: STD_LOGIC_VECTOR(26 downto 0):=(conv_std_logic_Vector(0,27));
signal bus_sel: STD_LOGIC:='0';

begin


M <= conv_std_logic_Vector(101000000,27);    -- TOTAL A CONTAR


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_cnt_gps='1' then   
         q_bus <= (conv_std_logic_Vector(0,27));
      elsif (en_cnt_gps = '1') then 
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
------ LOGICA DEL ESTADO SIGUIENTE

bus_sel <= '1' when (q_bus >= M) else
			  '0';
			  
d_bus <= q_bus + '1' when (bus_sel = '0') else
			(conv_std_logic_Vector(0,27));
			
------ LOGICA DE SALIDA 

gps_cnt <= q_bus;

end Behavioral;

