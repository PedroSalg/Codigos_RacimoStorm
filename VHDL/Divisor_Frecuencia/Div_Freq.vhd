library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;



entity Div_Freq is
    Port ( CLK : in  STD_LOGIC;
			  Out_Pin : out STD_LOGIC;
           FREQ : out  STD_LOGIC);
end Div_Freq;

architecture Behavioral of Div_Freq is

signal Q_Bus, D_Bus,R : STD_LOGIC:='0';

begin
R <= '0';


----- REGISTRO
process (CLK)
begin
   if CLK'event and CLK='1' then  
      if R='1' then   
         Q_Bus <= '0';
      else
         Q_Bus <= D_Bus;
      end if;
   end if;
end process;

----- ESTADO SIGUIENTE
D_Bus <= not (Q_Bus);


------ SALIDA
FREQ <= D_Bus;
Out_Pin <= '1';
 


end Behavioral;

