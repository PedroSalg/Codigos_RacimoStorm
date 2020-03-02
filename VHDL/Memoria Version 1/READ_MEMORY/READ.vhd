----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:04:20 02/03/2020 
-- Design Name: 
-- Module Name:    READ - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity READ is
    Port ( W0 : in  STD_LOGIC;
			  W1 : in  STD_LOGIC;
           W2 : in  STD_LOGIC;
			  W3 : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
			  CE : out  STD_LOGIC;
			  OE : out  STD_LOGIC;
			  WE : out  STD_LOGIC;
			  --WP : out  STD_LOGIC;
			  DQ : IN STD_LOGIC_VECTOR (7 downto 0);
           LED : out  STD_LOGIC_VECTOR (7 downto 0));
end READ;

architecture Behavioral of READ is

Signal Bus_Data : STD_LOGIC_VECTOR (7 downto 0);

begin

Bus_Data <= DQ;
LED <= Bus_Data;

A <= "00000000000000000111";
--
--A <= "00000000000000000001" when ( W0 = '0' ) else
--	  "00000000000000000010" when ( W1 = '0' ) else
--	  "00000000000000000011" when ( W2 = '0' ) else
--	  "00000000000000000100" when  (W3 = '0' ) else
--	  "00000000000000000000";
	  
--DQ <= "00010001" when ( W0 = '0' ) else
--		"00100010" when ( W1 = '0' ) else
--		"00110011" when ( W2 = '0' ) else
--		"11111111" when ( W3 = '0' ) else
--	   "00000000";

CE <= '0';
OE <= '0';
	
--CE <= '0' when ((W0 and W1 and W2 and W3)='0') else
--	   '1';
--
--OE <= '0' when ((W0 and W1 and W2 and W3)='0') else
--	   '0';

WE <= '1' when ((W0 and W1 and W2 and W3)='0') else
	   '0';



end Behavioral;
