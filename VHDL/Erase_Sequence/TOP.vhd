----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:46:10 02/06/2020 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity TOP is
    Port ( SW0 : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           DQ : out  STD_LOGIC_VECTOR (7 downto 0);
           CE : out  STD_LOGIC;
			  RST : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           WE : out  STD_LOGIC);
end TOP;

architecture Behavioral of TOP is

COMPONENT SM
PORT(
	A_IN : IN std_logic_vector(19 downto 0);
	DQ_IN : IN std_logic_vector(7 downto 0);
	CNT : IN std_logic_vector(2 downto 0);
	CLK : IN std_logic;
	sw0 : IN std_logic;
	RST : IN std_logic;
	EN_SM : IN std_logic;          
	EN_cnt : OUT std_logic;
	A : OUT std_logic_vector(19 downto 0);
	DQ : OUT std_logic_vector(7 downto 0);
	CE : OUT std_logic;
	OE : OUT std_logic;
	WE : OUT std_logic
	);
END COMPONENT;

COMPONENT Div_Fre_Var
PORT(
	CLK : IN std_logic;          
	FREQ : OUT std_logic
	);
END COMPONENT;


COMPONENT CNT_101
PORT(
	clk : IN std_logic;
	rst : IN std_logic;
	en_cnt : IN std_logic;          
	cnt : OUT std_logic_vector(2 downto 0)
	);
END COMPONENT;


signal bus_en_sm, bus_en_cnt : std_logic;
signal bus_cnt : std_logic_vector(2 downto 0);
signal bus_a : std_logic_vector(19 downto 0);
signal bus_dq : std_logic_vector(7 downto 0);
	

begin

RST <= '1';

Inst_SM: SM PORT MAP(
	A_IN => bus_a,
	DQ_IN => bus_dq,
	CNT => bus_cnt,
	CLK => CLK,
	sw0 => SW0,
	RST => '0',
	EN_SM => bus_en_sm,
	EN_cnt => bus_en_cnt,
	A => A,
	DQ => DQ,
	CE => CE,
	OE => OE,
	WE => WE
);


Inst_Div_Fre_Var: Div_Fre_Var PORT MAP(
	CLK => CLK,
	FREQ => bus_en_sm
);

Inst_CNT_101: CNT_101 PORT MAP(
	clk => clk,
	rst => '0',
	cnt => bus_cnt,
	en_cnt => bus_en_cnt and bus_en_sm
);


with bus_cnt select 
	bus_a <= x"05555" when "000",
		      x"02AAA" when "001",
				x"05555" when "010",
				x"05555" when "011",
				x"02AAA" when "100",
				"00000000000000000000" when "101",
				X"00000" when others;
				
with bus_cnt select 
	bus_dq <= x"AA" when "000",
		       x"55" when "001",
				 x"80" when "010",
				 x"AA" when "011",
				 x"55" when "100",
				 x"50" when "101",
				 X"00" when others;
				





end Behavioral;

