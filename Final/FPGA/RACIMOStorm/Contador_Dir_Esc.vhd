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
			  bande1 : out STD_LOGIC;
			  bande2 : out STD_LOGIC;
			  bande3 : out STD_LOGIC;
           cnt_dir : out  STD_LOGIC_VECTOR (19 downto 0));
end Contador_Dir_Esc;

architecture Behavioral of Contador_Dir_Esc is

--signal q_bus, d_bus, M : STD_LOGIC_VECTOR(19 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
--signal q_bus, d_bus : STD_LOGIC_VECTOR(19 downto 0):=(others => '1');   -- 6 bits para contar hasta 50
signal q_bus, d_bus, M, M2, M3, M4, M5 : STD_LOGIC_VECTOR(19 downto 0):=(conv_std_logic_Vector(0,20));
signal bus_sel, bus_sel_2, bus_sel3, bus_sel4, bus_sel5 : STD_LOGIC:='0';


begin


M <= conv_std_logic_Vector(120000,20);    -- TOTAL A CONTAR
M2 <= conv_std_logic_Vector(119985,20);   -- INICIO REGISTRO DE MEMORIA TEMPORAL  
M3 <= conv_std_logic_Vector(119982,20);   
M4 <= conv_std_logic_Vector(119983,20);
M5 <= conv_std_logic_Vector(119984,20);
--
--M <= conv_std_logic_Vector(5000,20);    -- TOTAL A CONTAR
--M2 <= conv_std_logic_Vector(4985,20);   -- INICIO REGISTRO DE MEMORIA TEMPORAL  
--M3 <= conv_std_logic_Vector(4982,20);   
--M4 <= conv_std_logic_Vector(4983,20);
--M5 <= conv_std_logic_Vector(4984,20);

--M <= conv_std_logic_Vector(25,20);    -- TOTAL A CONTAR
--M2 <= conv_std_logic_Vector(10,20);   -- INICIO REGISTRO DE MEMORIA TEMPORAL  
--M3 <= conv_std_logic_Vector(7,20);   
--M4 <= conv_std_logic_Vector(8,20);
--M5 <= conv_std_logic_Vector(9,20);


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

bus_sel3 <= '1' when (q_bus >= M3) else
			   '0';
				
bus_sel4 <= '1' when (q_bus >= M4) else
				'0';
				
bus_sel5 <= '1' when (q_bus >= M5) else
				'0';	

bus_sel_2 <= '1' when (q_bus >= M2) else
			    '0';

bus_sel <= '1' when (q_bus >= M) else
			  '0';
			  
d_bus <= q_bus + '1' when (bus_sel = '0') else
			(conv_std_logic_Vector(0,20));
			
------ LOGICA DE SALIDA 
bande1 <= bus_sel3;
bande2 <= bus_sel4;
bande3 <= bus_sel5;
cnt_dir <= q_bus;
ocuapdo <= bus_sel;
bandera_mem <= bus_sel_2;

end Behavioral;

