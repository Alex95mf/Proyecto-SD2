library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CONTADOR_3_SEGUNDOS is
   port( Clock_100Hz: in std_logic;
			Reset: in std_logic;
			sncont: in std_logic;
			ncont3: out std_logic);
end CONTADOR_3_SEGUNDOS;
 
architecture solve of CONTADOR_3_SEGUNDOS is
constant maxcont: INTEGER := 300;
signal cont: INTEGER range 0 to maxcont;
signal q: std_logic;
begin   
process(Clock_100Hz,Reset,cont,sncont,q)
   begin
			ncont3<='0';
			if(Clock_100Hz'event and Clock_100Hz='1') then
				if q='1' then 
					q<='0';
					cont<=0;
				elsif sncont='1' then
					if cont=maxcont-1 then
					q<='1';
					cont<=0;
					else
					cont <= cont + 1;
					end if;
				else q <= q;cont<=cont;
				end if;	
			else q <= q;cont<=cont;
			end if;
		ncont3 <= q;	
end process;
end solve;