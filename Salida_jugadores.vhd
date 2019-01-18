library ieee;
use ieee.std_logic_1164.all;

entity Salida_jugadores is
port (Player1: out std_logic_vector(3 downto 0);
		Player2: out std_logic_vector(3 downto 0));
end Salida_jugadores;

architecture SOL of Salida_jugadores is
begin
	Player1<="0001";
	Player2<="0010";
end SOL;