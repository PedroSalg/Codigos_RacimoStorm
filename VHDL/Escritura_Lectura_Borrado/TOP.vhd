library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TOP is
    Port ( SW0 : in  STD_LOGIC;
           SW1 : in  STD_LOGIC;
           SW2 : in  STD_LOGIC;
           DQ_BIDIR : inout  STD_LOGIC_VECTOR (7 downto 0);
           CLK : in  STD_LOGIC;
           A : out  STD_LOGIC_VECTOR (19 downto 0);
           CE : out  STD_LOGIC;
           OE : out  STD_LOGIC;
           WE : out  STD_LOGIC;
           LED : out  STD_LOGIC_VECTOR (7 downto 0);
           RST_MEM : out  STD_LOGIC);
end TOP;

architecture Behavioral of TOP is


	COMPONENT SM_CTRL
	PORT(
		sw0 : IN std_logic;
		sw1 : IN std_logic;
		sw2 : IN std_logic;
		clk : IN std_logic;
		band_esc : in  STD_LOGIC;	
		band_lec : in  STD_LOGIC;
		band_bor : in  STD_LOGIC;
		rst_sm_ctrl : IN std_logic;
		en_sm_ctrl : IN std_logic;          
		escribir : OUT std_logic;
		borrado : OUT std_logic;
		reset : OUT std_logic;
		leer : OUT std_logic;
		selector : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;


	COMPONENT DIV_FREQ
	PORT(
		RESET : IN std_logic;
		CLK : IN std_logic;          
		FREQ_OUT : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT Escritura_SM
	PORT(
		escritura : IN std_logic;
		en_esc : IN std_logic;
		rst_esc : IN std_logic;
		clk : IN std_logic;          
		dq_esc : OUT std_logic_vector(7 downto 0);
		a_esc : OUT std_logic_vector(19 downto 0);
		ce_esc : OUT std_logic;
		oe_esc : OUT std_logic;
		we_esc : OUT std_logic;
		band_esc : OUT std_logic;
		led_esc : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Borrado
	PORT(
		borrado : IN std_logic;
		clk : IN std_logic;
		en_bor : IN std_logic;
		rst_bor : IN std_logic;          
		dq_bor : OUT std_logic_vector(7 downto 0);
		a_bor : OUT std_logic_vector(19 downto 0);
		ce_bor : OUT std_logic;
		oe_bor : OUT std_logic;
		we_bor : OUT std_logic;
		band_bor : OUT std_logic;
		led_bor : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT Lectura
	PORT(
		disp : IN std_logic;
		dq_in : IN std_logic_vector(7 downto 0);
		leer : IN std_logic;
		clk : IN std_logic;
		en_lec : IN std_logic;
		rst_lec : IN std_logic;          
		a_lec : OUT std_logic_vector(19 downto 0);
		oe_lec : OUT std_logic;
		ce_lec : OUT std_logic;
		we_lec : OUT std_logic;
		band_lec : OUT std_logic;
		led_lec : OUT std_logic_vector(7 downto 0);
		en_cnt_2s : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT CNT2S
	PORT(
		CLK : IN std_logic;
		EN_DISP : IN std_logic;
		RESET : IN std_logic;          
		DISP_OUT : OUT std_logic
		);
	END COMPONENT;


-------------------
-------------------

signal bus_reset, bus_freq_out : std_logic; 
signal bus_escribir, bus_borrado, bus_leer : std_logic; 
signal bus_selector : std_logic_vector(1 downto 0);
signal bus_dq_esc, bus_led_esc : std_logic_vector(7 downto 0);
signal bus_a_esc, bus_a_bor, bus_a_lec: std_logic_vector(19 downto 0);
signal bus_ce_esc, bus_oe_esc, bus_we_esc : std_logic; 
signal bus_dq_bor, bus_led_bor, bus_led_lec : std_logic_vector(7 downto 0);
signal bus_ce_bor, bus_oe_bor, bus_we_bor : std_logic; 
signal bus_disp, bus_en_cnt_2s : std_logic; 
signal BUS_DQ_BIDIR : std_logic_vector(7 downto 0);
signal bus_oe_lec, bus_ce_lec, bus_we_lec : std_logic; 
signal bus_band_esc, bus_band_lec, bus_band_bor : std_logic;


begin

with bus_leer select 
	DQ_BIDIR <= "ZZZZZZZZ" when '1', 
					BUS_DQ_BIDIR when others;

	Inst_SM_CTRL: SM_CTRL PORT MAP(
		sw0 => SW0,
		sw1 => SW1,
		sw2 => SW2,
		clk => clk,
		band_esc => bus_band_esc,
		band_lec => bus_band_lec,
		band_bor => bus_band_bor,
		rst_sm_ctrl => '0',
		en_sm_ctrl => bus_freq_out,
		escribir => bus_escribir,
		borrado => bus_borrado,
		reset => bus_reset,
		leer => bus_leer,
		selector => bus_selector
	);


	Inst_DIV_FREQ: DIV_FREQ PORT MAP(
		RESET => '0',
		CLK => clk,
		FREQ_OUT => bus_freq_out
	);
	
		Inst_Escritura_SM: Escritura_SM PORT MAP(
		escritura => bus_escribir,
		en_esc => bus_freq_out,
		rst_esc => '0',
		clk => clk,
		dq_esc => bus_dq_esc,
		a_esc => bus_a_esc,
		ce_esc => bus_ce_esc,
		oe_esc => bus_oe_esc,
		we_esc => bus_we_esc,
		band_esc => bus_band_esc,
		led_esc => bus_led_esc
	);
	
	Inst_Borrado: Borrado PORT MAP(
		borrado => bus_borrado,
		clk => clk,
		en_bor => bus_freq_out,
		rst_bor => '0',
		dq_bor => bus_dq_bor,
		a_bor => bus_a_bor,
		ce_bor => bus_ce_bor,
		oe_bor => bus_oe_bor,
		we_bor => bus_we_bor,
		band_bor => bus_band_bor,
		led_bor => bus_led_bor
	);
	
		Inst_Lectura: Lectura PORT MAP(
		disp => bus_disp,
		dq_in => DQ_BIDIR,
		leer => bus_leer,
		clk => clk,
		en_lec => bus_freq_out,
		rst_lec => '0',
		a_lec => bus_a_lec,
		oe_lec => bus_oe_lec,
		ce_lec => bus_ce_lec,
		we_lec => bus_we_lec,
		band_lec => bus_band_lec,
		led_lec => bus_led_lec,
		en_cnt_2s => bus_en_cnt_2s
	);
	

	Inst_CNT2S: CNT2S PORT MAP(
		CLK => clk,
		EN_DISP => bus_en_cnt_2s,
		RESET => bus_reset,
		DISP_OUT => bus_disp
	);


	
	----------------
	----------------
with bus_selector select
	BUS_DQ_BIDIR <= bus_dq_esc when "01",
					    bus_dq_bor when "10",
		             "00000000" when others;	

	
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

