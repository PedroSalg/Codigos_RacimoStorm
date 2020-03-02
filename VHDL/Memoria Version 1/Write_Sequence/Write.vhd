library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Write is
    Port ( SEL : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           DQ : out  STD_LOGIC_VECTOR (7 downto 0);
           WE : out  STD_LOGIC;
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC);
end Write;

architecture Behavioral of Write is

begin


end Behavioral;

