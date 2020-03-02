----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:20 02/03/2020 
-- Design Name: 
-- Module Name:    TOP - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.ALL;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP is
    Port ( W0 : in  STD_LOGIC;
			  W1 : in  STD_LOGIC;
           W2 : in  STD_LOGIC;
			  W3 : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
			  CE : out  STD_LOGIC;
			  OE : out  STD_LOGIC;
			  WE : out  STD_LOGIC;
			  --WP : in  STD_LOGIC;
			  DQ : OUT STD_LOGIC_VECTOR (7 downto 0));
           --LED : out  STD_LOGIC_VECTOR (7 downto 0));
end TOP;

architecture Behavioral of TOP is


begin



--A <= to_stdlogicvector(x"5555") when ( W0 = '0' ) else
--	  to_stdlogicvector(x"2AAA") when ( W1 = '0' ) else
--	  to_stdlogicvector(x"5555") when ( W2 = '0' ) else
--	  "00000000000000011110" when  (W3 = '0' ) else
--	  "00000000000000000000";
--	  
--DQ <= to_stdlogicvector(x"AA") when ( W0 = '0' ) else
--		to_stdlogicvector(x"55") when ( W1 = '0' ) else
--		to_stdlogicvector(x"A0") when ( W2 = '0' ) else
--		"00110011" when ( W3 = '0' ) else
--	   "00000000";


A <= x"05555" when ( W0 = '0' ) else
	  x"02AAA" when ( W1 = '0' ) else
	  x"05555" when ( W2 = '0' ) else
	  "00000000000000011110" when  (W3 = '0' ) else
	  "00000000000000000000";
	  
DQ <= x"AA" when ( W0 = '0' ) else
		x"55" when ( W1 = '0' ) else
		x"A0" when ( W2 = '0' ) else
		"00110011" when ( W3 = '0' ) else
	   "00000000";


CE <= '0';
OE <= '1';

--CE <= '0' when ((W0 and W1 and W2 and W3)='0') else
--	   '1';
--
--OE <= '1' when ((W0 and W1 and W2 and W3)='0') else
--	   '0';

WE <= '0' when ((W0 and W1 and W2 and W3)='0') else
	   '1';


end Behavioral;

