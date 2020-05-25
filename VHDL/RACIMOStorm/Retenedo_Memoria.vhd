library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Retenedo_Memoria is
    Port ( clk : in  STD_LOGIC;
           en_ret_mem : in  STD_LOGIC;
           rst_ret_mem : in  STD_LOGIC;
           ocupado_mem : out  STD_LOGIC);
end Retenedo_Memoria;

architecture Behavioral of Retenedo_Memoria is

signal q_bus, d_bus, M : STD_LOGIC_VECTOR(8 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';

begin

M <= conv_std_logic_Vector(375,9);    -- Contador original en 15



------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_ret_mem='1' then   
         q_bus <= (others => '0');
      elsif (en_ret_mem = '1') then 
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


ocupado_mem <= bus_sel;


end Behavioral;

