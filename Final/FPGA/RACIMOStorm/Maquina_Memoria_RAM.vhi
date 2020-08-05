
-- VHDL Instantiation Created from source file Maquina_Memoria_RAM.vhd -- 23:43:07 05/21/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Maquina_Memoria_RAM
	PORT(
		evento : IN std_logic;
		escritura_memoria : IN std_logic;
		sw0 : IN std_logic;
		adc_reloj : IN std_logic;
		clk : IN std_logic;
		en_maquina : IN std_logic;
		rst_maquina : IN std_logic;
		numero : IN std_logic_vector(3 downto 0);          
		termino_escritura : OUT std_logic;
		sel : OUT std_logic;
		out_wr : OUT std_logic;
		en_cnt : OUT std_logic;
		rst_cnt : OUT std_logic;
		en_mem : OUT std_logic;
		suma_resta : OUT std_logic
		);
	END COMPONENT;

	Inst_Maquina_Memoria_RAM: Maquina_Memoria_RAM PORT MAP(
		evento => ,
		escritura_memoria => ,
		sw0 => ,
		adc_reloj => ,
		clk => ,
		en_maquina => ,
		rst_maquina => ,
		numero => ,
		termino_escritura => ,
		sel => ,
		out_wr => ,
		en_cnt => ,
		rst_cnt => ,
		en_mem => ,
		suma_resta => 
	);


