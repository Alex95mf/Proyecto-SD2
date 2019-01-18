library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity Decoder_de_binario_a_bcd_2_cifras_junto is
   port( bin: in std_logic_vector(5 downto 0);
			bcd: out std_logic_vector(7 downto 0));
end Decoder_de_binario_a_bcd_2_cifras_junto;
 
architecture solve of Decoder_de_binario_a_bcd_2_cifras_junto is
begin
	bcd  <=	"00000000"	when bin = "000000" ELSE
				"00000001"	when bin = "000001" ELSE
				"00000010"	when bin = "000010" ELSE
				"00000011"	when bin = "000011" ELSE
				"00000100"	when bin = "000100" ELSE
				"00000101"	when bin = "000101" ELSE
				"00000110"	when bin = "000110" ELSE
				"00000111"	when bin = "000111" ELSE
				"00001000"	when bin = "001000" ELSE
				"00001001"	when bin = "001001" ELSE

				"00010000"	when bin = "001010" ELSE
				"00010001"	when bin = "001011" ELSE
				"00010010"	when bin = "001100" ELSE
				"00010011"	when bin = "001101" ELSE
				"00010100"	when bin = "001110" ELSE
				"00010101"	when bin = "001111" ELSE
				"00010110"	when bin = "010000" ELSE
				"00010111"	when bin = "010001" ELSE
				"00011000"	when bin = "010010" ELSE
				"00011001"	when bin = "010011" ELSE
				
				"00100000"	when bin = "010100" ELSE
				"00100001"	when bin = "010101" ELSE
				"00100010"	when bin = "010110" ELSE
				"00100011"	when bin = "010111" ELSE
				"00100100"	when bin = "011000" ELSE
				"00100101"	when bin = "011001" ELSE
				"00100110"	when bin = "011010" ELSE
				"00100111"	when bin = "011011" ELSE
				"00101000"	when bin = "011100" ELSE
				"00101001"	when bin = "011101" ELSE
				
				"00110000"	when bin = "011110" ELSE
				"00110001"	when bin = "011111" ELSE
				"00110010"	when bin = "100000" ELSE
				"00110011"	when bin = "100001" ELSE
				"00110100"	when bin = "100010" ELSE
				"00110101"	when bin = "100011" ELSE
				"00110110"	when bin = "100100" ELSE
				"00110111"	when bin = "100101" ELSE
				"00111000"	when bin = "100110" ELSE
				"00111001"	when bin = "100111" ELSE
				
				"01000000"	when bin = "101000" ELSE
				"01000001"	when bin = "101001" ELSE
				"01000010"	when bin = "101010" ELSE
				"01000011"	when bin = "101011" ELSE
				"01000100"	when bin = "101100" ELSE
				"01000101"	when bin = "101101" ELSE
				"01000110"	when bin = "101110" ELSE
				"01000111"	when bin = "101111" ELSE
				"01001000"	when bin = "110000" ELSE
				"01001001"	when bin = "110001" ELSE
				
				"01010000"	when bin = "110010" ELSE
				"01010001"	when bin = "110011" ELSE
				"01010010"	when bin = "110100" ELSE
				"01010011"	when bin = "110101" ELSE
				"01010100"	when bin = "110110" ELSE
				"01010101"	when bin = "110111" ELSE
				"01010110"	when bin = "111000" ELSE
				"01010111"	when bin = "111001" ELSE
				"01011000"	when bin = "111010" ELSE
				"01011001"	when bin = "111011" ELSE
				
				"01100000"	when bin = "111100" ELSE
				"01100001"	when bin = "111101" ELSE
				"01100010"	when bin = "111110" ELSE
				"01100011"	when bin = "111111" ELSE
				
				"10011001" ; 
end solve;