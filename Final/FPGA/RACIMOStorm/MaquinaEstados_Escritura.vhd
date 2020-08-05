library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity MaquinaEstados_Escritura is
    Port ( escribir : in  STD_LOGIC;
           esp_esc : in  STD_LOGIC;
           en_esc : in  STD_LOGIC;
           rst_esc : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  In_Freq_ADC : in STD_LOGIC;
           a_in : in  STD_LOGIC_VECTOR (19 downto 0);
           dq_in : in  STD_LOGIC_VECTOR (11 downto 0);    
           dq_esc : out  STD_LOGIC_VECTOR (11 downto 0);
           a_esc : out  STD_LOGIC_VECTOR (19 downto 0);
           ce_esc : out  STD_LOGIC;
           oe_esc : out  STD_LOGIC;
           we_esc : out  STD_LOGIC;
           band_esc : out  STD_LOGIC;
           ocupado : out  STD_LOGIC;
			  finish_escritura : out STD_LOGIC;
           led_esc : out  STD_LOGIC_VECTOR (7 downto 0));
end MaquinaEstados_Escritura;

architecture Behavioral of MaquinaEstados_Escritura is

type Estados is (s0,s1,s2,s3,s4,s5,s6,s7,s8,Sin_ADC);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(4 downto 0);
signal bus_esc_dato : STD_LOGIC_VECTOR(11 downto 0);

begin


--- REGISRO 

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_esc='1' then   
         q_bus <= s0;
      elsif en_esc ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 

--- LOGICA DEL ESTADO SIGUIENTE

process (q_bus,d_bus,escribir,esp_esc, In_Freq_ADC)
begin
	case (q_bus) is 
		when s0 => 
			if (escribir='1') then
				d_bus <= Sin_ADC;
			else 
				d_bus <= s0;
			end if;
		
		when Sin_ADC =>
			if (In_Freq_ADC = '1') then 
				d_bus <= s1;
			else
				d_bus <= Sin_ADC;
			end if;
		
		when s1 =>
			d_bus <= s2;
		
		when s2 => 
			d_bus <= s3;
			
		when s3 =>
			d_bus <= s4;
		
		when s4 =>
			d_bus <= s5;
			
		when s5 =>
			d_bus <= s6;
			
		when s6 =>
			d_bus <= s7;
			
		when s7 =>
			d_bus <= s8;
			
		when s8 =>
			if (esp_esc='1') then 
				d_bus <= s0;
			else
				d_bus <= s8;
			end if;
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;

--- LOGICA DE SALIDA

with q_bus select
	Salidas <= "10011" when s0,
				  "00011" when Sin_ADC,
				  "01010" when s1,
				  "01011" when s2,
				  "01010" when s3,
				  "01011" when s4,
				  "01010" when s5,
				  "01011" when s6,
				  "01010" when s7,
				  "00011" when s8,
				  "00011" when others;
				  

with q_Bus select
	a_esc <= "00000000000000000000" when S0,
				"00000000000000000000" when Sin_ADC,
			   x"05555" when S1,
			   "00000000000000000000" when S2,
			   x"02AAA" when S3,
			   "00000000000000000000" when S4,
			   x"05555" when S5,
			   "00000000000000000000" when S6,
			   a_in when S7,
			   "00000000000000000000" when S8,
			   "00000000000000000000" when others;
		  
with q_Bus select
	dq_esc <= x"000" when S0,
				 x"000" when Sin_ADC,
				 x"0AA" when S1,
				 x"000" when S2,
				 x"055" when S3,
				 x"000" when S4,
				 x"0A0" when S5,
				 x"000" when S6,
				 dq_in when S7,
				 x"000" when S8,
				 x"000" when others;
				 
with q_bus select
	led_esc <= "00000011" when s0,
				  "00000011" when s1,
				  "00000011" when s2,
				  "00000011" when s3,
				  "00000011" when s4,
				  "00000011" when s5,
				  "00000011" when s6,
				  "00000011" when s7,
				  "00000011" when s8,
				  "00000011" when others;
				 
with q_bus select 
	ocupado <= '1' when s8,
				 '0' when others;
				 
 
finish_escritura <= Salidas(4);
band_esc <= Salidas(3);		 
ce_esc <= Salidas(2);
oe_esc <= Salidas(1);
we_esc <= Salidas(0);

end Behavioral;

