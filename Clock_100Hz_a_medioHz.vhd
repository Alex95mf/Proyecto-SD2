library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Clock_100Hz_a_medioHz is
port (Clock_100Hz: in std_logic;
		Clock_medioHz: out std_logic);
end Clock_100Hz_a_medioHz;

architecture SOL of Clock_100Hz_a_medioHz is
constant max_count: INTEGER := 25;
	signal count: INTEGER range 0 to max_count;
	signal clk_state: STD_LOGIC := '0';
	
begin
	gen_clock: process(Clock_100Hz, clk_state, count)
	begin
		if (Clock_100Hz'event and Clock_100Hz='1') then
			if count < max_count then 
				count <= count+1;
			else
				clk_state <= not clk_state;
				count <= 0;
			end if;
		end if;
	end process;
	
	persecond: process (clk_state)
	begin
		Clock_medioHz <= clk_state;
	end process;
end SOL;