
-- VHDL Instantiation Created from source file maq_trigger.vhd -- 18:12:15 06/10/2020
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT maq_trigger
	PORT(
		en_maq : IN std_logic;
		rst_maq : IN std_logic;
		clk : IN std_logic;
		sig_trigger : IN std_logic;          
		Trigger_Disparo : OUT std_logic
		);
	END COMPONENT;

	Inst_maq_trigger: maq_trigger PORT MAP(
		en_maq => ,
		rst_maq => ,
		clk => ,
		sig_trigger => ,
		Trigger_Disparo => 
	);


