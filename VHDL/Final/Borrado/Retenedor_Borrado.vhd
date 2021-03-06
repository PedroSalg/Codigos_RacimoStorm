library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Retenedor_Borrado is
    Port ( en_ret_bor : in  STD_LOGIC;
           rst_ret_bor : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           esp_bor : out  STD_LOGIC);
end Retenedor_Borrado;

architecture Behavioral of Retenedor_Borrado is

signal q_bus, d_bus, M : STD_LOGIC_VECTOR(4 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';


begin



M <= conv_std_logic_Vector(25,5);    -- Contador original en 15


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_ret_bor='1' then   
         q_bus <= (others => '0');
      elsif (en_ret_bor = '1') then 
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


esp_bor <= bus_sel;


end Behavioral;

