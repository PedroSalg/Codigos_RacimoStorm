library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulo_Escritura is
    Port ( clk : in  STD_LOGIC;
           en_cnt_dir : in  STD_LOGIC;
           rst_cnt_dir : in  STD_LOGIC;
           escribir : in  STD_LOGIC;
           div_frec : in  STD_LOGIC;
           dq_in_esc : in  STD_LOGIC_VECTOR(11 downto 0);
           stop_cnt_dir : out  STD_LOGIC;
           a_esc : out  STD_LOGIC_VECTOR (19 downto 0);
           dq_esc : out  STD_LOGIC_VECTOR (11 downto 0);
           ce_esc : out  STD_LOGIC;
           oe_esc : out  STD_LOGIC;
           we_esc : out  STD_LOGIC;
           led_esc : out  STD_LOGIC_VECTOR (7 downto 0);
           band_esc : out  STD_LOGIC);
end Modulo_Escritura;

architecture Behavioral of Modulo_Escritura is

COMPONENT MaquinaEstados_Escritura
	PORT(
		escribir : IN std_logic;
		esp_esc : IN std_logic;
		en_esc : IN std_logic;
		rst_esc : IN std_logic;
		clk : IN std_logic;
		a_in : IN std_logic_vector(19 downto 0);
		dq_in : IN std_logic_vector(11 downto 0);          
		dq_esc : OUT std_logic_vector(11 downto 0);
		a_esc : OUT std_logic_vector(19 downto 0);
		ce_esc : OUT std_logic;
		oe_esc : OUT std_logic;
		we_esc : OUT std_logic;
		band_esc : OUT std_logic;
		ocupado : OUT std_logic;
		led_esc : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	COMPONENT Contador_Dir_Esc
	PORT(
		clk : IN std_logic;
		en_cnt_dir : IN std_logic;
		rst_cnt_dir : IN std_logic;          
		ocuapdo : OUT std_logic;
		cnt_dir : OUT std_logic_vector(19 downto 0)
		);
	END COMPONENT;
	COMPONENT Retenedor_Lectura
	PORT(
		clk : IN std_logic;
		en_ret_esc : IN std_logic;
		rst_ret_esc : IN std_logic;          
		ocupado_ret : OUT std_logic
		);
	END COMPONENT;

signal bus_esp_esc, bus_ocupado, bus_en_ret_esc : STD_LOGIC;
signal bus_a_in : STD_LOGIC_VECTOR(19 downto 0);
signal bus_ce_esc, bus_oe_esc, bus_we_esc : STD_LOGIC;

begin

bus_en_ret_esc <= div_frec and bus_ocupado;

	Inst_MaquinaEstados_Escritura: MaquinaEstados_Escritura PORT MAP(
		escribir => escribir,
		esp_esc => bus_esp_esc,
		en_esc => div_frec,
		rst_esc => '0',
		clk => clk,
		a_in => bus_a_in,
		dq_in => dq_in_esc,
		dq_esc => dq_esc,
		a_esc => a_esc,
		ce_esc => bus_ce_esc,
		oe_esc => bus_oe_esc,
		we_esc => bus_we_esc,
		band_esc => band_esc,
		ocupado => bus_ocupado,
		led_esc => led_esc
	);
	
	Inst_Contador_Dir_Esc: Contador_Dir_Esc PORT MAP(
		clk => clk,
		en_cnt_dir => en_cnt_dir,
		rst_cnt_dir => rst_cnt_dir,
		ocuapdo => stop_cnt_dir,
		cnt_dir => bus_a_in
	);

	Inst_Retenedor_Lectura: Retenedor_Lectura PORT MAP(
		clk => clk,
		en_ret_esc => bus_en_ret_esc,
		rst_ret_esc => '0',
		ocupado_ret => bus_esp_esc
	);

ce_esc <= bus_ce_esc;
oe_esc <= bus_oe_esc;
we_esc <= bus_we_esc;
end Behavioral;

