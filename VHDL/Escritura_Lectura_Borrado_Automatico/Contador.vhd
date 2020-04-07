library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity Contador is
    Port ( clk : in  STD_LOGIC;
           en_contador : in  STD_LOGIC;
           rst_contador : in  STD_LOGIC;
			  stop : out STD_LOGIC;
           cnt_contador : out  STD_LOGIC_VECTOR (19 downto 0));
end Contador;

architecture Behavioral of Contador is

signal q_bus, d_bus, M : STD_LOGIC_VECTOR(19 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';

begin



M <= conv_std_logic_Vector(255,20);    -- Frecuencia de 1 MHz - TEORICA


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_contador='1' then   
         q_bus <= (others => '0');
      elsif (en_contador = '1') then 
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

cnt_contador <= q_bus;
stop <= bus_sel;

end Behavioral;

