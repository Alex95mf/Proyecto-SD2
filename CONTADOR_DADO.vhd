library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CONTADOR_DADO is
   port( Clock_1Mhz: in std_logic;
			Res: in std_logic;
			Enable, fin: in std_logic;
			Q: out std_logic_vector(3 downto 0));
end CONTADOR_DADO;
 
architecture solve of CONTADOR_DADO is
signal cont: std_logic_vector(3 downto 0);
begin   
process(Res,Clock_1Mhz,Enable,cont)
   begin
         cont <= "0000";
			Q <= "0000";
			if (res='1' or fin='1') then
				cont <= "0000";
			elsif(Clock_1Mhz'event and Clock_1Mhz='1') then
				if (Enable='1') then
					if cont="0110" then
						cont <= "0001";
					else
						cont <= cont + 1;
					end if;
				else cont <= cont;
				end if;
			else cont <= cont;
		end if;
		Q <= cont;
   end process;
 end solve;