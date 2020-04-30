library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Modulo_Borrado is
    Port ( div_frec : in  STD_LOGIC;
           borrar : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           en_cnt_bor : in  STD_LOGIC;
           rst_cnt_bor : in  STD_LOGIC;
           dq_bor : out  STD_LOGIC_VECTOR (11 downto 0);
           a_bor : out  STD_LOGIC_VECTOR (19 downto 0);
           ce_bor : out  STD_LOGIC;
           oe_bor : out  STD_LOGIC;
           we_bor : out  STD_LOGIC;
           band_bor : out  STD_LOGIC;
           led_bor : out  STD_LOGIC_VECTOR (7 downto 0);
           stop_cnt_bor : out  STD_LOGIC);
end Modulo_Borrado;

architecture Behavioral of Modulo_Borrado is

COMPONENT MaquinaEstados_Borrado
	PORT(
		borrado : IN std_logic;
		A_in : IN std_logic_vector(5 downto 0);
		clk : IN std_logic;
		en_bor : IN std_logic;
		rst_bor : IN std_logic;
		esp_bor : IN std_logic;          
		dq_bor : OUT std_logic_vector(11 downto 0);
		a_bor : OUT std_logic_vector(19 downto 0);
		ce_bor : OUT std_logic;
		oe_bor : OUT std_logic;
		we_bor : OUT std_logic;
		band_bor : OUT std_logic;
		ocupado : OUT std_logic;
		led_bor : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Retenedor_Borrado
	PORT(
		en_ret_bor : IN std_logic;
		rst_ret_bor : IN std_logic;
		clk : IN std_logic;          
		esp_bor : OUT std_logic
		);
	END COMPONENT;

	COMPONENT Contador_Dir_Bor
	PORT(
		clk : IN std_logic;
		en_cnt_bor : IN std_logic;
		rst_cnt_bor : IN std_logic;          
		cnt_dir_bor : OUT std_logic_vector(5 downto 0);
		stop_cnt_bor : OUT std_logic
		);
	END COMPONENT;

signal bus_cnt_dir_bor : STD_LOGIC_VECTOR(5 downto 0);
signal bus_stop_cnt_bor, bus_esp_bor, bus_en_ret_bor : STD_LOGIC;
signal bus_ocupado : STD_LOGIC;

begin

bus_en_ret_bor <= div_frec and bus_ocupado;

	Inst_MaquinaEstados_Borrado: MaquinaEstados_Borrado PORT MAP(
		borrado => borrar,
		A_in => bus_cnt_dir_bor,
		clk => clk,
		en_bor => div_frec,
		rst_bor => '0',
		esp_bor => bus_esp_bor,
		dq_bor => dq_bor,
		a_bor => a_bor,
		ce_bor => ce_bor,
		oe_bor => oe_bor,
		we_bor => we_bor,
		band_bor => band_bor,
		ocupado => bus_ocupado,
		led_bor => led_bor
	);
	

	Inst_Retenedor_Borrado: Retenedor_Borrado PORT MAP(
		en_ret_bor => bus_en_ret_bor,
		rst_ret_bor => '0',
		clk => clk,
		esp_bor => bus_esp_bor
	);

	Inst_Contador_Dir_Bor: Contador_Dir_Bor PORT MAP(
		clk => clk,
		en_cnt_bor => en_cnt_bor,
		rst_cnt_bor => rst_cnt_bor,
		cnt_dir_bor => bus_cnt_dir_bor,
		stop_cnt_bor => stop_cnt_bor
	);


end Behavioral;

