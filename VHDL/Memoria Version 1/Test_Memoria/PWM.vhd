library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity PWM is
    Port ( EN : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           --R : in  STD_LOGIC;
           PWM : out  STD_LOGIC);
end PWM;

architecture Behavioral of PWM is

signal Q_Bus, D_Bus, R : STD_LOGIC:='0';

begin
R <= '0';

------ REGISTRO 
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if R = '1' then   
         Q_Bus <= '0';
      elsif EN ='1' then
         Q_Bus <= D_Bus;
      end if;
   end if;
end process;
 

------ LOGICA DEL ESTADO SIGUIENTE
D_Bus <= not (Q_Bus);
			
------ LOGICA DE SALIDA 
PWM <= Q_Bus;

end Behavioral;

