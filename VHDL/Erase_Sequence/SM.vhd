library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity SM is
    Port ( A_IN : in  STD_LOGIC_VECTOR (19 downto 0);
           DQ_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           CNT : in  STD_LOGIC_VECTOR (2 downto 0);
           CLK : in  STD_LOGIC;
			  sw0 : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           EN_SM : in  STD_LOGIC;
			  EN_cnt : out  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           DQ : out  STD_LOGIC_VECTOR (7 downto 0);
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           WE : out  STD_LOGIC);
end SM;

architecture Behavioral of SM is

type Estados is (S0,S1,S2,S3); 
signal d_bus, q_bus : Estados;
signal salidas : std_logic_vector(3 downto 0);

begin

-------- registro 

process (CLK)
begin
   if CLK'event and CLK='1' then  
      if RST='1' then   
         q_bus <= s0;
      elsif en_sm ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;

------ logica del estado siguiente 

process (d_bus,q_bus,sw0, cnt)
begin
   case (q_bus) is 
		when s0 => 
			if ( sw0 = '0' ) then
				d_bus <= s1;
			else 
				d_bus <=  s0;
			end if;
		
		when s1 =>
			if ( sw0 = '1' ) then
				d_bus <= s2;
			else 
				d_bus <= s1;
			end if;
			
		when s2 =>
			if ( cnt = "110" ) then
				d_bus <= s0;
			else
				d_bus <= s3;
			end if;
		
		when s3 =>
			d_bus <= s2;
			
	end case;		
end process;

------ salida

with ( q_bus ) select 
	salidas <= "0000" when s0,
				  "0000" when s1,
				  "0011" when s2,
				  "1010" when s3,
				  "0000" when others;
				  
				  
en_cnt <= salidas(3);
CE <= salidas(2);
OE <= salidas(1);
WE <= salidas(0);


A <= A_IN;
DQ <= DQ_IN;


end Behavioral;

