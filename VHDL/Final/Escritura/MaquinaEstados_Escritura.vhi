
-- VHDL Instantiation Created from source file MaquinaEstados_Escritura.vhd -- 08:00:23 04/27/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

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

	Inst_MaquinaEstados_Escritura: MaquinaEstados_Escritura PORT MAP(
		escribir => ,
		esp_esc => ,
		en_esc => ,
		rst_esc => ,
		clk => ,
		a_in => ,
		dq_in => ,
		dq_esc => ,
		a_esc => ,
		ce_esc => ,
		oe_esc => ,
		we_esc => ,
		band_esc => ,
		ocupado => ,
		led_esc => 
	);


