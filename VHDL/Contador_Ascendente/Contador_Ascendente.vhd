library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity Contador_Ascendente is
    Port ( CLK : in  STD_LOGIC;
           R : in  STD_LOGIC;
           CNT : out  STD_LOGIC_VECTOR (3 downto 0));
end Contador_Ascendente;

architecture Behavioral of Contador_Ascendente is

signal D_Bus, Q_Bus : STD_LOGIC_VECTOR(3 downto 0):=(others => '0');

begin


---- REGISTRO

process (CLK)
begin
   if CLK'event and CLK='1' then  
      if R='1' then   
         Q_Bus <= (others => '0');
      else
        Q_Bus <= D_Bus;
      end if;
   end if;
end process;

------ ESTADO SIGUIENTE

D_Bus <= Q_Bus + '1';


----- LOGICA DE SALIDA

CNT <= Q_Bus;
 


end Behavioral;

