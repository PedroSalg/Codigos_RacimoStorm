library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity LED is
    Port ( LED : out  STD_LOGIC_VECTOR (7 downto 0));
end LED;

architecture Behavioral of LED is

begin

LED <= "11111111";

end Behavioral;

