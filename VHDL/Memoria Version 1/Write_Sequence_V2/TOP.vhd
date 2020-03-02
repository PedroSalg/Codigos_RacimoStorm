library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity TOP is
    Port ( SW0 : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           DQ : out  STD_LOGIC_VECTOR (7 downto 0);
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           WE : out  STD_LOGIC);
end TOP;

architecture Behavioral of TOP is

	COMPONENT SM
	PORT(
		SW0 : IN std_logic;
		RST : IN std_logic;
		CLK : IN std_logic;
		EN : IN std_logic;          
		A : OUT std_logic_vector(19 downto 0);
		DQ : OUT std_logic_vector(7 downto 0);
		OE : OUT std_logic;
		CE : OUT std_logic;
		WE : OUT std_logic
		);
	END COMPONENT;
	
COMPONENT Div_Fre_Var
	PORT(
		CLK : IN std_logic;          
		FREQ : OUT std_logic
		);
	END COMPONENT;
	
signal bus_en : std_logic;

begin


	Inst_Div_Fre_Var: Div_Fre_Var PORT MAP(
		CLK => CLK,
		FREQ => bus_en
	);

	Inst_SM: SM PORT MAP(
		SW0 => SW0,
		RST => '0',
		CLK => CLK,
		EN => bus_en,
		A => A,
		DQ => DQ,
		OE => OE,
		CE => CE,
		WE => WE
	);


end Behavioral;

