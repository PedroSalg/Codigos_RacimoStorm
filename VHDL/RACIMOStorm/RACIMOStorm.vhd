library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RACIMOStorm is
    Port ( SW0 : in  STD_LOGIC;
           SW1 : in  STD_LOGIC;
           SW2 : in  STD_LOGIC;
           RESET : in  STD_LOGIC;
			  FROM_RP : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           DQ_BIDIR : inout  STD_LOGIC_VECTOR (11 downto 0);
			  SDA : inout  STD_LOGIC;
			  SCL : inout  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           WE : out  STD_LOGIC;
			  CLK_ADC : out  STD_LOGIC;
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
		en_cnt_bor : OUT std_logic;
		selector : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Modulo_Escritura
	PORT(
		clk : IN std_logic;
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

signal bus_a_esc, bus_a_bor, bus_a_lec : STD_LOGIC_VECTOR(19 downto 0);
signal bus_dq_esc, bus_dq_bor, bus_dq_in_esc: STD_LOGIC_VECTOR(11 downto 0);
signal bus_band_esc, bus_band_bor, bus_freq_out, bus_reset : STD_LOGIC;
signal bus_stop_final, bus_escribir, bus_leer, bus_borrado : STD_LOGIC;
signal bus_en_cnt_dir, bus_rst_contador, bus_en_cnt_bor : STD_LOGIC;
signal bus_selector : STD_LOGIC_VECTOR(1 downto 0);

signal bus_ce_esc, bus_ce_bor, bus_ce_lec, bus_Stop_cnt_lec : STD_LOGIC;
signal bus_oe_esc, bus_oe_bor, bus_oe_lec : STD_LOGIC;
signal bus_we_esc, bus_we_bor, bus_we_lec : STD_LOGIC;
signal bus_led_esc, bus_led_bor, bus_led_lec : STD_LOGIC_VECTOR(7 downto 0);
signal BUS_DQ_BIDIR : STD_LOGIC_VECTOR(11 downto 0);
signal bus_stop_cnt_dir, bus_stop_cnt_bor, bus_Freq_ADC : STD_LOGIC;

begin

bus_dq_in_esc <= "000000001010";

bus_stop_final <= bus_stop_cnt_dir or bus_stop_cnt_bor;

with bus_leer select 
DQ_BIDIR <= "ZZZZZZZZZZZZ" when '1', 
				BUS_DQ_BIDIR when others;

	Inst_SM_CTRL: SM_CTRL PORT MAP(
		sw0 => SW0,
		sw1 => SW1,
		sw2 => SW2,
		clk => CLK,
		band_esc => bus_band_esc,
		band_bor => bus_band_bor,
		band_lec => bus_Stop_cnt_lec,
		rst_sm_ctrl => not(RESET),
		en_sm_ctrl => bus_freq_out,
		stop => bus_stop_final,
		escribir => bus_escribir,
		borrado => bus_borrado,
		reset => bus_reset,
		leer => bus_leer,
		en_cnt_dir => bus_en_cnt_dir,
		rst_contador => bus_rst_contador,
		en_cnt_bor => bus_en_cnt_bor,
		selector => bus_selector
	);
	Inst_Modulo_Escritura: Modulo_Escritura PORT MAP(
		clk => CLK,
		en_cnt_dir => bus_en_cnt_dir,
		rst_cnt_dir => bus_rst_contador,
		escribir => bus_escribir,
		div_frec => bus_freq_out,
		dq_in_esc => bus_dq_in_esc,     -- FALTA
		In_Freq_ADC => bus_Freq_ADC, 
		stop_cnt_dir => bus_stop_cnt_dir,
		a_esc => bus_a_esc,
		dq_esc => bus_dq_esc,
		ce_esc => bus_ce_esc,
		oe_esc => bus_oe_esc,
		we_esc => bus_we_esc,
		led_esc => bus_led_esc,
		band_esc => bus_band_esc
	);
	
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


	Inst_DIV_FREQ: DIV_FREQ PORT MAP(
		RESET => '0',
		CLK => CLK,
		FREQ_OUT => bus_freq_out
	);

	Inst_ADC: ADC PORT MAP(
		CLK => CLK,
		Freq_ADC => bus_Freq_ADC,
		PWM_OUT => CLK_ADC 
	);

	----------------------------------------------------------------
	----------------
	----------------
	
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
			
with bus_selector select
	LED <= bus_led_esc when "01",
		   bus_led_bor when "10",
		   bus_led_lec when "11",
		   "11111111" when others;
			
RST_MEM <= '1';

end Behavioral;
