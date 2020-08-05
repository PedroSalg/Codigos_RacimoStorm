library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity RACIMOStorm is
    Port ( PPS : in  STD_LOGIC;
           --SW1 : in  STD_LOGIC;
           --SW2 : in  STD_LOGIC;
			  D : in STD_LOGIC_VECTOR(11 downto 0);
           --RESET : in  STD_LOGIC;
			  FROM_RP : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DQ_BIDIR : inout  STD_LOGIC_VECTOR (11 downto 0);
			  SDA : inout  STD_LOGIC;
			  SCL : inout  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           WE : out  STD_LOGIC;
			  TEST : out STD_LOGIC;
			  Reloj_ADC : out  STD_LOGIC;
			  TO_RP : out  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0);
           RST_MEM : out  STD_LOGIC);
end RACIMOStorm;



architecture Behavioral of RACIMOStorm is

	COMPONENT SM_CTRL
	PORT(
		sw0 : IN std_logic;
		sw1 : IN std_logic;
		sw2 : IN std_logic;
		clk : IN std_logic;
		band_esc : IN std_logic;
		band_bor : IN std_logic;
		band_lec : in  STD_LOGIC;
		rst_sm_ctrl : IN std_logic;
		en_sm_ctrl : IN std_logic;
		stop : IN std_logic;          
		escribir : OUT std_logic;
		borrado : OUT std_logic;
		reset : OUT std_logic;
		leer : OUT std_logic;
		en_cnt_dir : OUT std_logic;
		rst_contador : OUT std_logic;
		finish : out STD_LOGIC;
		en_cnt_bor : OUT std_logic;
		selector : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Modulo_Escritura
	PORT(
		clk : IN std_logic;
		--M_in : in STD_LOGIC_VECTOR(19 downto 0);
		en_cnt_dir : IN std_logic;
		rst_cnt_dir : IN std_logic;
		escribir : IN std_logic;
		div_frec : IN std_logic;
		dq_in_esc : IN std_logic_vector(11 downto 0);    
	   In_Freq_ADC : IN std_logic; 
		stop_cnt_dir : OUT std_logic;
		a_esc : OUT std_logic_vector(19 downto 0);
		dq_esc : OUT std_logic_vector(11 downto 0);
		ce_esc : OUT std_logic;
		oe_esc : OUT std_logic;
		we_esc : OUT std_logic;
		led_esc : OUT std_logic_vector(7 downto 0);
		sig_termina_maq : out STD_LOGIC;
		sig_bandera_memoria : out STD_LOGIC;
		sig_bande3 : OUT std_logic;
		sig_bande2 : OUT std_logic;
		sig_bande1 : OUT std_logic;
		band_esc : OUT std_logic
		);
	END COMPONENT;
COMPONENT Modulo_Borrado
	PORT(
		div_frec : IN std_logic;
		borrar : IN std_logic;
		clk : IN std_logic;
		en_cnt_bor : IN std_logic;
		rst_cnt_bor : IN std_logic;          
		dq_bor : OUT std_logic_vector(11 downto 0);
		a_bor : OUT std_logic_vector(19 downto 0);
		ce_bor : OUT std_logic;
		oe_bor : OUT std_logic;
		we_bor : OUT std_logic;
		band_bor : OUT std_logic;
		led_bor : OUT std_logic_vector(7 downto 0);
		stop_cnt_bor : OUT std_logic
		);
	END COMPONENT;
	
			COMPONENT Modulo_Lectura
	PORT(
		SW0 : IN std_logic;
		CLK : IN std_logic;
		DQ : IN std_logic_vector(11 downto 0);
		RESET : IN std_logic;
		freq_out : IN std_logic;
		FROM_RP : IN std_logic;   
		SDA : INOUT std_logic;
		SCL : INOUT std_logic;      
		TO_RP : OUT std_logic;
		A : OUT std_logic_vector(19 downto 0);
		CE : OUT std_logic;
		OE : OUT std_logic;
		WE : OUT std_logic;
		Stop_cnt_lec : out  STD_LOGIC;
		LED : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	
	COMPONENT DIV_FREQ
	PORT(
		RESET : IN std_logic;
		CLK : IN std_logic;          
		FREQ_OUT : OUT std_logic
		);
	END COMPONENT;

	COMPONENT ADC
	PORT(
		CLK : IN std_logic;    
		Freq_ADC: out  STD_LOGIC;
		PWM_OUT : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT Event_Detect
	PORT(
		D : IN std_logic_vector(11 downto 0);
		Disparo : in STD_LOGIC;
		--finish_esc : IN std_logic;
		clk : IN std_logic;
		in_trigger : in STD_LOGIC;
		en_maquina : IN std_logic;
		rst_maquina : IN std_logic;
		stop : IN std_logic;    
		sig_leds : OUT STD_LOGIC_VECTOR(7 downto 0);	
	   reset_sis : out STD_LOGIC;	
      en_cnt_gps : out STD_LOGIC;
		rst_cnt_gps : out STD_LOGIC;		
		--en_cnt_espera : out  STD_LOGIC;
		--rst_cnt_espera : out  STD_LOGIC;
		--disparo_out : out  STD_LOGIC;
		sw0 : OUT std_logic;
		sw1 : OUT std_logic;
		sw2 : OUT std_logic
		);
	END COMPONENT;
	COMPONENT TOP_Memoria_RAM
	PORT(
		data_in : IN std_logic_vector(11 downto 0);
		evento : IN std_logic;
		escritura_memoria : IN std_logic;
		clk : IN std_logic;
		sw0 : IN std_logic;
		adc_reloj : IN std_logic;
		en_maq : IN std_logic;
		rst_maq : IN std_logic;          
		sel_qd_out : OUT std_logic;
		--termino_escritura : OUT std_logic;
		memoria_dq_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Contador_Inicial
	PORT(
		en_cnt_ini : IN std_logic;
		rst_cnt_ini : IN std_logic;
		clk : IN std_logic;          
		end_cnt_ini : OUT std_logic
		);
	END COMPONENT;

	COMPONENT maq_trigger
	PORT(
		en_maq : IN std_logic;
		rst_maq : IN std_logic;
		clk : IN std_logic;
		sig_trigger : IN std_logic;          
		Trigger_Disparo : OUT std_logic
		);
	END COMPONENT;

	COMPONENT modulo_gps
	PORT(
		clk : IN std_logic;
		in_pps : IN std_logic;
		reset_sis : IN std_logic;
		evento_in : IN std_logic;  
		pin_test : out STD_LOGIC;
		conteo_gps : OUT std_logic_vector(26 downto 0)
		);
	END COMPONENT;


signal bus_a_esc, bus_a_bor, bus_a_lec : STD_LOGIC_VECTOR(19 downto 0);
signal bus_dq_esc, bus_dq_bor, bus_dq_in_esc, Data_Esc, bus_memoria_dq_out : STD_LOGIC_VECTOR(11 downto 0);
signal bus_band_esc, bus_band_bor, bus_freq_out, bus_reset : STD_LOGIC;
signal bus_stop_final, bus_escribir, bus_leer, bus_borrado : STD_LOGIC;
signal bus_en_cnt_dir, bus_rst_contador, bus_en_cnt_bor : STD_LOGIC;
signal bus_selector : STD_LOGIC_VECTOR(1 downto 0);

signal bus_ce_esc, bus_ce_bor, bus_ce_lec, bus_Stop_cnt_lec : STD_LOGIC;
signal bus_oe_esc, bus_oe_bor, bus_oe_lec, bus_finish : STD_LOGIC;
signal bus_we_esc, bus_we_bor, bus_we_lec : STD_LOGIC;
signal bus_led_esc, bus_led_bor, bus_led_lec : STD_LOGIC_VECTOR(7 downto 0);
signal BUS_DQ_BIDIR : STD_LOGIC_VECTOR(11 downto 0);
signal bus_stop_cnt_dir, bus_stop_cnt_bor, bus_Freq_ADC, bus_PWM_ADC : STD_LOGIC:='0';
signal bus_SW0, bus_SW1, bus_SW2 : STD_LOGIC;
--signal bus_en_cnt_espera, bus_rst_cnt_espera, bus_salida_espera : STD_LOGIC;

signal bus_sel_qd_out, bus_sig_bandera_memoria : STD_LOGIC;
signal bus_sig_termina_maq : STD_LOGIC;

signal bus_s_bande1, bus_s_bande2, bus_s_bande3 : STD_LOGIC;
signal cnt_gps_p1, cnt_gps_p2, cnt_gps_p3 : STD_LOGIC_VECTOR(11 downto 0); 				 -- BYTES PARA ENVIAR EL CNT GPS
signal selector_escritura : STD_LOGIC_VECTOR(3 downto 0);    									 -- SENAL PARA MULPLEXAR ESC. DE MEMRORIA FISICA

signal Trigger_Event, bus_Trigger_Disparo : STD_LOGIC;											 -- SENAL EN ALTO CUANDO SE DETECTO EL EVENTO
signal Sig_Volt :STD_LOGIC_VECTOR(11 downto 0);														 -- NIVEL UADC PARA EL TRIGGER DEL EVENTO

signal bus_sig_leds : STD_LOGIC_VECTOR(7 downto 0);												 -- SENAL PARA INDICACION DE LEDs DESDE EVENT_DETECT
signal bus_sig_reset, bus_reset_sis : STD_LOGIC; 													 -- SENAL DE RESET 

signal bus_rst_cnt_gps, bus_en_cnt_gps, bus_end_cnt_ini : STD_LOGIC;							 -- SENALES DE CONTROL DEL CNT DE INICIO
signal bus_conteo_gps : STD_LOGIC_VECTOR(26 downto 0);											 -- SENAL CONTADOR GPS
signal bus_escritura_memoria_f, bus_pint_test : std_logic;								


begin
------ ASIGNACION DE SENALES CONSTANTES
bus_dq_in_esc <= D; 																							 -- SENAL CONECTADA AL ADC
bus_stop_final <= bus_stop_cnt_dir or bus_stop_cnt_bor;
bus_sig_reset <= bus_reset_sis;		   																 -- SENAL PARA RST DEL TODO EL SISTEMA
bus_escritura_memoria_f <= bus_sig_bandera_memoria and bus_sig_termina_maq;

------ LOGICA CONTADOR DEL GPS 
-- ASIGNACION 
cnt_gps_p1 <= bus_conteo_gps(11 downto 0);															 -- LSByte
cnt_gps_p2 <= bus_conteo_gps(23 downto 12);
cnt_gps_p3 <= "000000000" & bus_conteo_gps(26 downto 24);										 -- MSByte
--- CONSTANTES DE PRUEBA
---cnt_gps_p1 <= conv_std_logic_Vector(1212,12);               										 -- LSByte 
--cnt_gps_p2 <= conv_std_logic_Vector(21,12);
--cnt_gps_p3 <= conv_std_logic_Vector(22,12);															 -- MSByte

--MULTIPLEXOR


-------------------------------
------- SENAL A ESCRIIR EN LA MEMORIA

selector_escritura <= bus_s_bande3 & bus_s_bande2 & bus_s_bande1 & bus_sel_qd_out;      -- DEFINICION DEL SELECTOR
with selector_escritura select 
	Data_Esc <= bus_dq_in_esc when "0000",
					cnt_gps_p1 when "0010",
					cnt_gps_p2 when "0110",
					cnt_gps_p3 when "1110",
					bus_memoria_dq_out when "1111",
					D when others;

------------------------------
------ DETECCION DEL EVENTO

Sig_Volt <= conv_std_logic_Vector(500,12); 															 -- 500 uADC_ 50 mv - VALOR PARA TRIGGER
Trigger_Event <= '1' when (D >= Sig_Volt) else														 -- SENAL TRIGGER
            '0';
--Trigger_Event <= bus_Trigger_Disparo;
------------------------------

with bus_leer select 
DQ_BIDIR <= "ZZZZZZZZZZZZ" when '1', 
				BUS_DQ_BIDIR when others;
	
------------------- MOODULO CONTADOR GPS
	Inst_modulo_gps: modulo_gps PORT MAP(
		clk => clk,
		in_pps => PPS,
		reset_sis => bus_sig_reset,
		evento_in => Trigger_Event,
		pin_test => bus_pint_test,
		conteo_gps => bus_conteo_gps
	);
---------------------------------------


------------------- MOODULO MEMORIA TEMPORAL		
	Inst_Contador_Inicial: Contador_Inicial PORT MAP(
		en_cnt_ini => bus_en_cnt_gps,
		rst_cnt_ini => bus_rst_cnt_gps,
		clk => clk,
		end_cnt_ini => bus_end_cnt_ini
	);

---------------------------------------------
------------------- MOODULO DETECTOR DE EVENTOS		
	Inst_maq_trigger: maq_trigger PORT MAP(
		en_maq => '1',
		rst_maq => bus_sig_reset,
		clk => CLK,
		sig_trigger => Trigger_Event,
		Trigger_Disparo => bus_Trigger_Disparo
	);
---------------------------------------------
------------------- MOODULO MEMORIA TEMPORAL					
	Inst_TOP_Memoria_RAM: TOP_Memoria_RAM PORT MAP(
		data_in => bus_dq_in_esc,
		evento => Trigger_Event,
		escritura_memoria => bus_escritura_memoria_f,
		clk => CLK,
		sw0 => bus_end_cnt_ini,
		adc_reloj => bus_PWM_ADC,
		en_maq => bus_freq_out,
		rst_maq => bus_sig_reset,
		sel_qd_out => bus_sel_qd_out,
		--termino_escritura => bus_termino_escritura,
		memoria_dq_out => bus_memoria_dq_out
	);
-------------------------------------------

	Inst_Event_Detect: Event_Detect PORT MAP(
		D => bus_dq_in_esc,
		Disparo => bus_end_cnt_ini,
	   --finish_esc => bus_termino_escritura,
		clk => clk,
		in_trigger => Trigger_Event,
		en_maquina => bus_freq_out,
		rst_maquina => bus_sig_reset,
		stop => bus_finish,
		sig_leds => bus_sig_leds,
		reset_sis => bus_reset_sis,
		en_cnt_gps => bus_en_cnt_gps,
		rst_cnt_gps => bus_rst_cnt_gps, 		
		--en_cnt_espera => bus_en_cnt_espera,
		--rst_cnt_espera => bus_rst_cnt_espera,
		--disparo_out => bus_disparo_out,
		sw0 => bus_SW0,
		sw1 => bus_SW1,
		sw2 => bus_SW2
	);
-------------------------------------------

	Inst_SM_CTRL: SM_CTRL PORT MAP(
		sw0 => bus_SW0,
		sw1 => bus_SW1,
		sw2 => bus_SW2,
		clk => CLK,
		band_esc => bus_band_esc,
		band_bor => bus_band_bor,
		band_lec => bus_Stop_cnt_lec,
		rst_sm_ctrl => bus_sig_reset,
		en_sm_ctrl => bus_freq_out,
		stop => bus_stop_final,
		escribir => bus_escribir,
		borrado => bus_borrado,
		reset => bus_reset,
		leer => bus_leer,
		en_cnt_dir => bus_en_cnt_dir,
		rst_contador => bus_rst_contador,
		finish => bus_finish,
		en_cnt_bor => bus_en_cnt_bor,
		selector => bus_selector
	);
-------------------------------------------

	Inst_Modulo_Escritura: Modulo_Escritura PORT MAP(
		clk => CLK,
		--M_in => bus_M_in,
		en_cnt_dir => bus_en_cnt_dir,
		rst_cnt_dir => bus_rst_contador,
		escribir => bus_escribir,
		div_frec => bus_freq_out,
		dq_in_esc => Data_Esc,     -- FALTA
		In_Freq_ADC => bus_Freq_ADC, 
		stop_cnt_dir => bus_stop_cnt_dir,
		a_esc => bus_a_esc,
		dq_esc => bus_dq_esc,
		ce_esc => bus_ce_esc,
		oe_esc => bus_oe_esc,
		we_esc => bus_we_esc,
		led_esc => bus_led_esc,
		sig_termina_maq => bus_sig_termina_maq,
		sig_bandera_memoria => bus_sig_bandera_memoria,
		sig_bande1 => bus_s_bande1,
		sig_bande2 => bus_s_bande2,
		sig_bande3 => bus_s_bande3,
		band_esc => bus_band_esc
	);
-------------------------------------------

	Inst_Modulo_Borrado: Modulo_Borrado PORT MAP(
		div_frec => bus_freq_out,
		borrar => bus_borrado,
		clk => CLK,
		en_cnt_bor => bus_en_cnt_bor,
		rst_cnt_bor => bus_rst_contador,
		dq_bor => bus_dq_bor,   
		a_bor => bus_a_bor,
		ce_bor => bus_ce_bor,
		oe_bor => bus_oe_bor,
		we_bor => bus_we_bor,
		band_bor => bus_band_bor,
		led_bor => bus_led_bor,
		stop_cnt_bor => bus_stop_cnt_bor
	);
-------------------------------------------
	
	Inst_Modulo_Lectura: Modulo_Lectura PORT MAP(
		SW0 => bus_leer,
		CLK => CLK,
		DQ => DQ_BIDIR, 						
		RESET => '0',
		freq_out => bus_freq_out,
		FROM_RP => FROM_RP,
		SDA => SDA,
		SCL => SCL,
		TO_RP => TO_RP,
		A => bus_a_lec,
		CE => bus_ce_lec,
		OE => bus_oe_lec,
		WE => bus_we_lec,
		Stop_cnt_lec => bus_Stop_cnt_lec,
		LED => bus_led_lec
	);
-------------------------------------------


	Inst_DIV_FREQ: DIV_FREQ PORT MAP(
		RESET => '0',
		CLK => CLK,
		FREQ_OUT => bus_freq_out
	);
-------------------------------------------

	Inst_ADC: ADC PORT MAP(
		CLK => CLK,
		Freq_ADC => bus_Freq_ADC,
		PWM_OUT => bus_PWM_ADC 
	);
-------------------------------------------
----------------------- SALIDAS
	
with bus_selector select
	BUS_DQ_BIDIR <= bus_dq_esc when "01",
					    bus_dq_bor when "10",
		             "000000000000" when others;	
	
with bus_selector select
	A <= bus_a_esc when "01",
		  bus_a_bor when "10",
		  bus_a_lec when "11",
		  x"00000" when others;
		  
with bus_selector select
	CE <= bus_ce_esc when "01",
		   bus_ce_bor when "10",
		   bus_ce_lec when "11",
		   '0' when others;
			
with bus_selector select
	OE <= bus_oe_esc when "01",
		   bus_oe_bor when "10",
		   bus_oe_lec when "11",
		   '1' when others;
			
with bus_selector select
	WE <= bus_we_esc when "01",
		   bus_we_bor when "10",
		   bus_we_lec when "11",
		   '1' when others;
			
--with bus_selector select
--	LED <= bus_led_esc when "01",
--		   bus_led_bor when "10",
--		   bus_led_lec when "11",
--		   "11111111" when others;

LED <= bus_sig_leds;			
RST_MEM <= '1';
Reloj_ADC <= bus_PWM_ADC;
--Reloj_ADC <= '1';
TEST <= bus_pint_test;

end Behavioral;

