library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Contador_Dir_Esc is
    Port ( clk : in  STD_LOGIC;
           en_cnt_dir : in  STD_LOGIC;
			  --M_set : in STD_LOGIC_VECTOR(19 downto 0);
           rst_cnt_dir : in  STD_LOGIC;
           ocuapdo  : out  STD_LOGIC;
			  bandera_mem  : out  STD_LOGIC;
           cnt_dir : out  STD_LOGIC_VECTOR (19 downto 0));
end Contador_Dir_Esc;

architecture Behavioral of Contador_Dir_Esc is

--signal q_bus, d_bus, M : STD_LOGIC_VECTOR(19 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
--signal q_bus, d_bus : STD_LOGIC_VECTOR(19 downto 0):=(others => '1');   -- 6 bits para contar hasta 50
signal q_bus, d_bus, M, M2 : STD_LOGIC_VECTOR(19 downto 0):=(conv_std_logic_Vector(0,20));
signal bus_sel, bus_sel_2 : STD_LOGIC:='0';


begin


M <= conv_std_logic_Vector(120000,20);    -- TOTAL A CONTAR
M2 <= conv_std_logic_Vector(119985,20);   -- INICIO REGISTRO DE MEMORIA TEMPORAL  


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_cnt_dir='1' then   
         q_bus <= (conv_std_logic_Vector(0,20));
      elsif (en_cnt_dir = '1') then 
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
------ LOGICA DEL ESTADO SIGUIENTE

bus_sel_2 <= '1' when (q_bus >= M2) else
			    '0';

bus_sel <= '1' when (q_bus >= M) else
			  '0';
			  
d_bus <= q_bus + '1' when (bus_sel = '0') else
			(conv_std_logic_Vector(0,20));
			
------ LOGICA DE SALIDA 

cnt_dir <= q_bus;
ocuapdo <= bus_sel;
bandera_mem <= bus_sel_2;

end Behavioral;

