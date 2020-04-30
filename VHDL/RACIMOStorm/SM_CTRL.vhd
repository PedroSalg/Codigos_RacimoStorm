library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SM_CTRL is
    Port ( sw0 : in  STD_LOGIC;
           sw1 : in  STD_LOGIC;
           sw2 : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  band_esc : in  STD_LOGIC;			  
			  band_bor : in  STD_LOGIC;
			  band_lec : in  STD_LOGIC;
			  rst_sm_ctrl : in  STD_LOGIC;
			  en_sm_ctrl : in STD_LOGIC;
			  stop : in STD_LOGIC;
			  escribir : out  STD_LOGIC;
           borrado : out  STD_LOGIC;
           reset : out  STD_LOGIC;
           leer : out  STD_LOGIC;
			  en_cnt_dir : out  STD_LOGIC;
           rst_contador : out  STD_LOGIC;
			  en_cnt_bor : out  STD_LOGIC;
           selector : out  STD_LOGIC_VECTOR (1 downto 0));
end SM_CTRL;

architecture Behavioral of SM_CTRL is

type Estados is (s0,s1,s2,s3,s4,s5,s6,s7,esp_esc,esp_bor,p_esc,p_bor,r_esc,r_bor, Sin_ADC);
signal d_bus, q_bus : Estados;
signal Salidas : STD_LOGIC_VECTOR(6 downto 0);
signal con_rep_esc : STD_LOGIC_vECTOR(1 downto 0);

begin


----- REGISTRO 

process (clk)
begin
   if clk'event and clk='1' then  
      if rst_sm_ctrl='1' then   
         q_bus <= s0;
      elsif en_sm_ctrl ='1' then
         q_bus <= d_bus;
      end if;
   end if;
end process;
 
----- LOGICA DEL ESTADO SIGUIENTE 

process (d_bus, q_bus, sw0, sw1, sw2, band_esc, band_bor,stop,con_rep_esc,band_lec)
begin

	case (q_bus) is 
		when s0 => 
			if (sw0 = '0') then
				d_bus <= s1;
			elsif (sw1 = '0') then 
				d_bus <= s3;
			elsif (sw2 = '0') then 
				d_bus <= s5;
			else 
				d_bus <= s0;
			end if;
			
		when s1 =>
			if (sw0 = '1') then 
				d_bus <= p_esc;
			else 
				d_bus <= s1;
			end if;
	
--	when Sin_ADC => 
--		if (In_Freq_ADC = '1') then 
--			d_bus <= p_esc;
--		else
--			d_bus <= Sin_ADC;
--		end if;
			
		when s2 =>
			if (band_esc = '1') then 
				d_bus <= esp_esc;
			else 
				d_bus <= s2;
			end if;
			
		when s3 => 
			if (sw1 = '1') then 
				d_bus <= s4;
			else 
				d_bus <= s3;
			end if;
			
		when s4 =>
			if (band_lec = '1') then 
				d_bus <= s7;
			else
				d_bus <= s4;
			end if;
			
--		when s4 => 
--			if (stop = '1') then 
--				d_bus <= s7;
--			elsif (band_lec = '1') then 
--				d_bus <= esp_lec;
--			else
--				d_bus <= s4;
--			end if;
			
		when s5 =>
			if (sw2 = '1') then 
				d_bus <= p_bor;
			else 
				d_bus <= s5;
			end if;
			
		when s6 =>
			if (band_bor = '1') then 
				d_bus <= esp_bor;
			else
				d_bus <= s6;
			end if;
			
		when esp_esc =>
			if (band_esc = '0') then 
				d_bus <= r_esc;
			else 
				d_bus <= esp_esc;
			end if;
			
--		when esp_lec =>
--			if (band_lec = '0') then 
--				d_bus <= r_lec;
--			else
--				d_bus <= esp_lec;
--			end if;
		
		when esp_bor =>
			if (band_bor = '0') then 
				d_bus <= r_bor;
			else 
				d_bus <= esp_bor;
			end if;
			
		when s7 =>
				d_bus <= s0;
				
		when p_esc =>
			d_bus <= s2;
				
--		when p_lec =>
--			d_bus <= s4;
			
		when p_bor =>
			d_bus <= s6;
			
		when r_esc =>
			if (stop = '1') then
				d_bus <= s7;
			else
				d_bus <= p_esc;
			end if;
			
--		when r_lec =>
--			if (stop = '1') then
--				d_bus <= s7;
--			else
--				d_bus <= p_lec;
--			end if;
			
		when r_bor =>
			if (stop = '1') then 
				d_bus <= s7;
			else
				d_bus <= p_bor;
			end if;
			
		when others =>
			d_bus <= s0;
			
	end case;
end process;

----- LÓGICA DE SALIDA 

with q_bus select
	selector <= "00" when s0,
					"01" when s1,
					"01" when s2,
					"01" when esp_esc,
					"01" when p_esc,
					"01" when r_esc,
					"11" when s3,
					"11" when s4, 
					--"11" when esp_lec,
					--"11" when p_lec,
					--"11" when r_lec,
					"10" when s5,
					"10" when s6,
					"10" when esp_bor,
					"10" when p_bor,
					"10" when r_bor,
					"00" when s7,
					"00" when others;
 
with q_bus select
	Salidas <= "0010001" when s0,
				  "0001000" when s2,
				  "0000100" when s4,
				  "0000010" when s6,
				  "0001000" when esp_esc,
				  --"0000100" when esp_lec,
				  "0000010" when esp_bor,
				  "0101000" when p_esc,
				  "0000000" when r_esc,
				  --"0000100" when p_lec,
				  --"0000000" when r_lec,
				  "1000010" when p_bor,
				  "0000000" when r_bor,
				  "0000000" when others;
				  
en_cnt_bor <= Salidas(6);
en_cnt_dir <= Salidas(5);
rst_contador <= Salidas(4);
escribir <= Salidas(3);
leer <= Salidas(2);
borrado <= Salidas(1);
reset <= Salidas(0);
				  
				  


end Behavioral;

