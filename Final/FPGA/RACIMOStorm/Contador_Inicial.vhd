library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Contador_Inicial is
    Port ( en_cnt_ini : in  STD_LOGIC;
           rst_cnt_ini : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           end_cnt_ini : out  STD_LOGIC);
end Contador_Inicial;

architecture Behavioral of Contador_Inicial is

signal q_bus, d_bus, M : STD_LOGIC_VECTOR(28 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';


begin

M <= conv_std_logic_Vector(200000000,29);    -- Contador original en 15


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_cnt_ini='1' then   
         q_bus <= (others => '0');
      elsif (en_cnt_ini = '1') then 
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


end_cnt_ini <= bus_sel;

end Behavioral;

