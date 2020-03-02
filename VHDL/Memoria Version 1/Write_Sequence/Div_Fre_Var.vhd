library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity Div_Fre_Var is
    Port ( EN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           FREQ : out  STD_LOGIC);
end Div_Fre_Var;

architecture Behavioral of Div_Fre_Var is

signal Q_Bus, D_Bus, M : STD_LOGIC_VECTOR(26 downto 0):=(others => '0');
signal Bus_Sel, R : STD_LOGIC:='0';

begin
R <= '0';
--M <= "000000000000000000000001010";
M <= conv_std_logic_Vector(50,27);    -- 10M ; Frecuencia de 10 Hz
--M <= conv_std_logic_Vector(9,27);    -- 10M ; Frecuencia de 10 Hz

------ REGISTRO 


process (CLK)
begin
   if CLK'event and CLK='1' then  
      if R='1' then   
         Q_Bus <= (others => '0');
      elsif EN ='1' then
         Q_Bus <= D_Bus;
      end if;
   end if;
end process;
 
 

------ LOGICA DEL ESTADO SIGUIENTE

Bus_Sel <= '1' when (Q_Bus >= M) else
			  '0';
			  
D_Bus <= Q_Bus + '1' when (Bus_Sel = '0') else
			(others => '0');
			
------ LOGICA DE SALIDA 

FREQ <= Bus_Sel;


end Behavioral;

