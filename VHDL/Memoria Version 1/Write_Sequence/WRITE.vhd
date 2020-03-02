library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity WRITE is
    Port ( SEL : in  STD_LOGIC;
			  SW0 : in STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           DQ : out  STD_LOGIC_VECTOR (7 downto 0);
           WE : out  STD_LOGIC;
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC);
end WRITE;

architecture Behavioral of WRITE is

signal Bus_SW : STD_LOGIC;

begin

Bus_SW <= SW0 and ( not ( SW0 ) );


end Behavioral;

