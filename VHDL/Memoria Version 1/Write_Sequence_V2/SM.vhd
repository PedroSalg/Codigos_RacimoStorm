library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SM is
    Port ( SW0 : in  STD_LOGIC;
			  RST : in STD_LOGIC;
			  CLK : in STD_LOGIC;
			  EN : in STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           DQ : out  STD_LOGIC_VECTOR (7 downto 0);
           OE : out  STD_LOGIC;
           CE : out  STD_LOGIC;
           WE : out  STD_LOGIC);
end SM;

architecture Behavioral of SM is

type Estados is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9); 
signal q_bus, d_bus : Estados;
signal Salidas : std_logic_vector(2 downto 0);

begin


process (CLK)
begin
   if CLK'event and CLK='1' then  
      if RST='1' then   
         q_bus <= S0;
      elsif EN ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
process (q_bus,d_bus,SW0)
begin
   case (q_bus) is 
      when S0 =>
         if ( SW0 = '0' ) then
				d_bus <= S1;
			else 
				d_bus <= S0;
			end if;
			
      when S1 =>
			if ( SW0 = '1' ) then
				d_bus <= S2;
			else 
				d_bus <= S1;
			end if;
				
		when S2 =>
			d_bus <= S3;
		
		when S3 =>
			d_bus <= S4;
			
		when S4 =>
			d_bus <= S5;
			
		when S5 =>
			d_bus <= S6;
			
		when S6 =>
			d_bus <= S7;
			
		when S7 =>
			d_bus <= S8;
			
		when S8 =>
			d_bus <= S9;
			
		when S9 =>
			d_bus <= S0;
		   
      when others =>
         d_bus <= S0;
   end case;
end process;


with q_Bus select
	Salidas <= "111" when S0,
				  "111" when S1,
				  "010" when S2,
				  "011" when S3,
				  "010" when S4,
				  "011" when S5,
				  "010" when S6,
				  "011" when S7,
				  "010" when S8,
				  "011" when S9,
				  "111" when others;
				  
with q_Bus select
	A <= "00000000000000000000" when S0,
		  "00000000000000000000" when S1,
		  x"05555" when S2,
		  "00000000000000000000" when S3,
		  x"02AAA" when S4,
		  "00000000000000000000" when S5,
		  x"05555" when S6,
		  "00000000000000000000" when S7,
		  "00000000000000000111" when S8,
		  "00000000000000000000" when S9,
		  "00000000000000000000" when others;
		  
with q_Bus select
	DQ <= "00000000" when S0,
			"00000000" when S1,
			x"AA" when S2,
		   "00000000" when S3,
		   x"55" when S4,
		   "00000000" when S5,
		   x"A0" when S6,
		   "00000000" when S7,
		   "11100111" when S8,
		   "00000000" when S9,
		   "00000000" when others;
			
CE <= Salidas(2);
OE <= Salidas(1);
WE <= Salidas(0);
		
end Behavioral;

