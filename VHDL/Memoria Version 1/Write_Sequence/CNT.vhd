library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;


entity CNT is
    Port ( EN : in  STD_LOGIC;
			  CLK : IN STD_LOGIC;
           SEL : out  STD_LOGIC_VECTOR (1 downto 0));
end CNT;

architecture Behavioral of CNT is

signal Q_BUS, D_BUS : STD_LOGIC_VECTOR(1 DOWNTO 0):="00";
signal CONTROL : STD_LOGIC;

begin

---- REGISTRO

process (CLK)
begin
   if CLK'event and CLK='1' then  
      if EN ='1' then
         Q_BUS <= D_BUS;
		else
			Q_BUS <= "00";
      end if;
   end if;
end process;
 

--- ESTADO SIGUIENTE

CONTROL <= '1' when (Q_BUS = "11") else
			  '0';

with CONTROL select
	D_BUS <= Q_BUS + '1' when '0',
				"00" when others;

--- SALIDA

SEL<= Q_BUS;

end Behavioral;

