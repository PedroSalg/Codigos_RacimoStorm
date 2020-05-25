library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity TOP_Memoria_RAM is
    Port ( data_in : in  STD_LOGIC_VECTOR (11 downto 0);
           evento : in  STD_LOGIC;
           escritura_memoria : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           sw0 : in  STD_LOGIC;
           adc_reloj : in  STD_LOGIC;
           en_maq : in  STD_LOGIC;
           rst_maq : in  STD_LOGIC;
           sel_qd_out : out  STD_LOGIC;
           --termino_escritura : out  STD_LOGIC;
           memoria_dq_out : out  STD_LOGIC_VECTOR (11 downto 0));
end TOP_Memoria_RAM;

architecture Behavioral of TOP_Memoria_RAM is

	COMPONENT Maquina_Memoria_RAM
	PORT(
		evento : IN std_logic;
		escritura_memoria : IN std_logic;
		sw0 : IN std_logic;
		adc_reloj : IN std_logic;
		en_retenedor : in  STD_LOGIC;
		clk : IN std_logic;
		en_maquina : IN std_logic;
		rst_maquina : IN std_logic;
		numero : IN std_logic_vector(3 downto 0);          
		--termino_escritura : OUT STD_LOGIC;
		sel : out  STD_LOGIC;
		en_retenedor_out : out  STD_LOGIC;
		out_wr : OUT std_logic;
		en_cnt : OUT std_logic;
		rst_cnt : OUT std_logic;
		en_mem : OUT std_logic;
		suma_resta : OUT std_logic
		);
	END COMPONENT;
	
		COMPONENT cnt_memoria
	PORT(
		en_cnt : IN std_logic;
		rst_cnt : IN std_logic;
		suma_resta : IN std_logic;
		clk : IN std_logic;          
		cnt_out : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT Memoria_RAM
	PORT(
		clk : IN std_logic;
		address : IN std_logic_vector(3 downto 0);
		data_in : IN std_logic_vector(11 downto 0);
		en_ram : IN std_logic;
		wr : IN std_logic;          
		data_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;
	
		COMPONENT Retenedo_Memoria
	PORT(
		clk : IN std_logic;
		en_ret_mem : IN std_logic;
		rst_ret_mem : IN std_logic;          
		ocupado_mem : OUT std_logic
		);
	END COMPONENT;


signal bus_address : STD_LOGIC_VECTOR(3 downto 0):=(others => '0');
signal bus_wr,bus_en_ram, bus_suma_resta : STD_LOGIC;
signal bus_data_out, bus_data_in : STD_LOGIC_VECTOR(11 downto 0);
signal bus_en_cnt, bus_rst_cnt, bus_sel : STD_LOGIC;

signal bus_en_retenedor, bus_en_ret_mem, bus_ocupado_mem : STD_LOGIC;

begin

bus_en_ret_mem <= en_maq and bus_en_retenedor;
bus_data_in <= data_in;

	Inst_Retenedo_Memoria: Retenedo_Memoria PORT MAP(
		clk => clk,
		en_ret_mem => bus_en_ret_mem,
		rst_ret_mem => '0',
		ocupado_mem => bus_ocupado_mem
	);

	Inst_Maquina_Memoria_RAM: Maquina_Memoria_RAM PORT MAP(
		evento => evento,
		escritura_memoria => escritura_memoria,
		sw0 => sw0,
		adc_reloj => adc_reloj,
		en_retenedor => bus_ocupado_mem,
		clk => clk,
		en_maquina => en_maq,
		rst_maquina => rst_maq,
		numero => bus_address,
		--termino_escritura => bus_termino_escritura,
		sel => bus_sel,
		en_retenedor_out => bus_en_retenedor,
		out_wr => bus_wr,
		en_cnt => bus_en_cnt,
		rst_cnt => bus_rst_cnt,
		en_mem => bus_en_ram,
		suma_resta => bus_suma_resta
	);
	
		Inst_cnt_memoria: cnt_memoria PORT MAP(
		en_cnt => bus_en_cnt and en_maq,
		rst_cnt => bus_rst_cnt,
		suma_resta => bus_suma_resta,
		clk => clk,
		cnt_out => bus_address
	);
	
		Inst_Memoria_RAM: Memoria_RAM PORT MAP(
		clk => clk,
		address => bus_address,
		data_in => bus_data_in,
		en_ram => bus_en_ram,
		wr => bus_wr,
		data_out => bus_data_out
	);

memoria_dq_out <= bus_data_out;
sel_qd_out <= bus_sel;
--termino_escritura <= bus_termino_escritura;

end Behavioral;

