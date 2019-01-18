library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity decoder_de_bin_a_tablero is
   port( Bin: in std_logic_vector(4 downto 0);
			Tab: out std_logic_vector(1 to 20));
end decoder_de_bin_a_tablero;
 
architecture solve of decoder_de_bin_a_tablero is
begin
	Tab <=	"00000000000000000000"	when Bin = "00000" ELSE
				"00000000000000000001"  when Bin = "00001" ELSE 
				"00000000000000000011" 	when Bin = "00010" ELSE 
				"00000000000000000111"	when Bin = "00011" ELSE 
				"00000000000000001111"	when Bin = "00100" ELSE 
				"00000000000000011111"	when Bin = "00101" ELSE 
				"00000000000000111111"	when Bin = "00110" ELSE 
				"00000000000001111111"	when Bin = "00111" ELSE 
				"00000000000011111111"	when Bin = "01000" ELSE 
				"00000000000111111111"	when Bin = "01001" ELSE 
				"00000000001111111111"  when Bin = "01010" ELSE	
				"00000000011111111111"  when Bin = "01011" ELSE
				"00000000111111111111"  when Bin = "01100" ELSE
				"00000001111111111111"  when Bin = "01101" ELSE
				"00000011111111111111"  when Bin = "01110" ELSE
				"00000111111111111111"  when Bin = "01111" ELSE
				"00001111111111111111"  when Bin = "10000" ELSE
				"00011111111111111111"  when Bin = "10001" ELSE
				"00111111111111111111"  when Bin = "10010" ELSE
				"01111111111111111111"  when Bin = "10011" ELSE
				"11111111111111111111" ;
end solve;