library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;


entity ADC is
    Port ( CLK : in  STD_LOGIC;
			  Freq_ADC: out  STD_LOGIC;
           PWM_OUT : out  STD_LOGIC);
end ADC;

architecture Behavioral of ADC is

COMPONENT Div_Fre_Var
PORT(
	CLK : IN std_logic;          
	FREQ : OUT std_logic
	);
END COMPONENT;

COMPONENT PWM
PORT(
	EN : IN std_logic;
	CLK : IN std_logic;          
	PWM : OUT std_logic
	);
END COMPONENT;

signal Bus_EN, PWM_Bus : STD_LOGIC;

begin


Inst_Div_Fre_Var: Div_Fre_Var PORT MAP(
	CLK => CLK,
	FREQ => Bus_En
);

Inst_PWM: PWM PORT MAP(
	EN => Bus_EN,
	CLK => CLK,
	PWM => PWM_Bus
);

PWM_OUT <= PWM_Bus;
--LED <= PWM_Bus;
Freq_ADC <= PWM_Bus;

end Behavioral;

