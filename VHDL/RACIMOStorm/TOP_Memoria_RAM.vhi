
-- VHDL Instantiation Created from source file TOP_Memoria_RAM.vhd -- 15:28:28 05/22/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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
		termino_escritura : OUT std_logic;
		memoria_dq_out : OUT std_logic_vector(11 downto 0)
		);
	END COMPONENT;

	Inst_TOP_Memoria_RAM: TOP_Memoria_RAM PORT MAP(
		data_in => ,
		evento => ,
		escritura_memoria => ,
		clk => ,
		sw0 => ,
		adc_reloj => ,
		en_maq => ,
		rst_maq => ,
		sel_qd_out => ,
		termino_escritura => ,
		memoria_dq_out => 
	);


