library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity DIV_FREQ is
    Port ( RESET : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           FREQ_OUT : out  STD_LOGIC);
end DIV_FREQ;

architecture Behavioral of DIV_FREQ is

--signal q_bus, d_bus, M : STD_LOGIC_VECTOR(26 downto 0):=(others => '0'); 26 Bits Para poder contar has 100M
signal q_bus, d_bus, M : STD_LOGIC_VECTOR(5 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';

begin


M <= conv_std_logic_Vector(50,6);    -- Frecuencia de 1 MHz - TEORICA
--M <= conv_std_logic_Vector(9,6);    -- 10M ; Frecuencia de 10 Hz


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if RESET='1' then   
         q_bus <= (others => '0');
      else
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

FREQ_OUT <= Bus_Sel;


end Behavioral;

