library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Parpadeo is
port (clock_medioHz: in std_logic;
		tablero: out std_logic_vector(4 downto 0));
end Parpadeo;

architecture SOL of Parpadeo is
begin
	Process(clock_medioHz)
	begin
		if clock_medioHz='1' then tablero<="10100";
		else tablero<="00000";
		end if;
	end Process;
		
end SOL;