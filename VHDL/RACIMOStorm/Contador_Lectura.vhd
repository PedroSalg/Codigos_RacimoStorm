library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Contador_Lectura is
    Port ( en_cnt_lec : in  STD_LOGIC;
           rst_cnt_lec : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           cuenta : out  STD_LOGIC_VECTOR (19 downto 0);
           out_cnt_lectura : out  STD_LOGIC);
end Contador_Lectura;

architecture Behavioral of Contador_Lectura is

signal q_bus, d_bus, M : STD_LOGIC_VECTOR(19 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';

begin


M <= conv_std_logic_Vector(10000,20);    -- Frecuencia de 1 MHz - TEORICA
--M <= conv_std_logic_Vector(9,6);    -- 10M ; Frecuencia de 10 Hz

------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_cnt_lec='1' then   
         q_bus <= (others => '0');
      elsif (en_cnt_lec='1') then 
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

out_cnt_lectura <= Bus_Sel;
Cuenta <= q_bus;


end Behavioral;

