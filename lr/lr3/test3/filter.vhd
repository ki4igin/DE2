--------------------------------------------------------
-- Описание цифровых фильтров
-- Пример: КИХ фильтр
--------------------------------------------------------

--Подключение библиотек
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
USE ieee.std_logic_arith.all;

--------------------------------------------------------
-- ENTITY
ENTITY filter IS
	GENERIC(
		taps : INTEGER := 10); -- количество коэффициентов
	PORT(
		clk		: IN	STD_LOGIC;						-- тактовый сигнал                                  --system clock
		reset_n	: IN	STD_LOGIC;						-- асинхронный сброс
		data	: IN	STD_LOGIC_VECTOR(15 DOWNTO 0);	-- входные данные
		result	: OUT	STD_LOGIC_VECTOR(15 DOWNTO 0));	-- выходные данные
END filter;

--------------------------------------------------------
-- ARCHITECTURE
ARCHITECTURE behavior OF filter IS
	-- тип данных для коэффициентов фильтра
	TYPE ROM_Array IS ARRAY (0 TO taps-1)	
	OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	-- тип данных для массива промежуточных входных данных
	TYPE Data_Array IS ARRAY (0 TO taps-1)	
	OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	-- тип данных для массива промежуточных произведений
	TYPE Product_Array IS ARRAY (0 TO taps-1)	
	OF STD_LOGIC_VECTOR(31 DOWNTO 0);
	
	-- целочисленные коэффициенты	
	CONSTANT Coef: ROM_Array := (	
	0 => conv_std_logic_vector(9682,16),	
	1 => conv_std_logic_vector(12375,16),
	2 => conv_std_logic_vector(14803,16),	
	3 => conv_std_logic_vector(16558,16),
	4 => conv_std_logic_vector(17210,16),
	5 => conv_std_logic_vector(16558,16),
	6 => conv_std_logic_vector(14803,16),
	7 => conv_std_logic_vector(12375,16),
	8 => conv_std_logic_vector(9682,16),
	9 => conv_std_logic_vector(7021,16));
	
	-- промежуточные входные данные
	SIGNAL data_pipeline : Data_Array;
	-- промежуточные произведения
	SIGNAL products 		: Product_Array;
BEGIN
	
	PROCESS(clk, reset_n)
		VARIABLE sum : STD_LOGIC_VECTOR(31+taps-1 DOWNTO 0); -- сумма произведений
		-- максимальная разрядность определяется количеством коэффициентов
	BEGIN
		
		IF(reset_n = '0') THEN -- асинхронный сброс
			
			data_pipeline <= (OTHERS => (OTHERS => '0')); 
			result <= (OTHERS => '0');   
			
		ELSIF(clk'EVENT AND clk = '1') THEN -- фронт тактового сигнала
			
			-- сдвиг промежуточных входных данных с запоминаем входных данных
			FOR i IN 0 TO taps-2 LOOP
				data_pipeline(i+1) <= data_pipeline(i);
			END LOOP;
			data_pipeline(0) <= data;
			
			-- формирование итоговой суммы
			sum := (OTHERS => '0'); 
			FOR i IN 0 TO taps-1 LOOP
				sum := sum + products(i);
			END LOOP;
			
			-- приведение результата к диапазону 16-и разрядов
			result <= sum(15+17 DOWNTO 17);
			
		END IF;
	END PROCESS;
	
	-- реализация умножителей
	product_calc: FOR i IN 0 TO taps-1 GENERATE
		products(i) <= data_pipeline(i) * Coef(i);
	END GENERATE;
	
END behavior;