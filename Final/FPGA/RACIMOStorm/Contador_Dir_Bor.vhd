library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity Contador_Dir_Bor is
    Port ( clk : in  STD_LOGIC;
           en_cnt_bor : in  STD_LOGIC;
           rst_cnt_bor : in  STD_LOGIC;
           cnt_dir_bor : out  STD_LOGIC_VECTOR (5 downto 0);
           stop_cnt_bor : out  STD_LOGIC);
end Contador_Dir_Bor;

architecture Behavioral of Contador_Dir_Bor is


signal q_bus, d_bus, M : STD_LOGIC_VECTOR(5 downto 0):=(others => '0');   -- 6 bits para contar hasta 50
signal bus_sel : STD_LOGIC:='0';

begin




M <= conv_std_logic_Vector(1,6);    -- Frecuencia de 1 MHz - TEORICA


------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if rst_cnt_bor='1' then   
         q_bus <= (others => '0');
      elsif (en_cnt_bor = '1') then 
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

cnt_dir_bor <= q_bus;
stop_cnt_bor <= bus_sel;

end Behavioral;

