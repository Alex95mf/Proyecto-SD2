library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity CONTADOR_5_SEGUNDOS is
   port( Clock_100Hz: in std_logic;
			Reset: in std_logic;
			sgcont: in std_logic;
			gcont5: out std_logic);
end CONTADOR_5_SEGUNDOS;
 
architecture solve of CONTADOR_5_SEGUNDOS is
constant maxcont: INTEGER := 500;
signal cont: INTEGER range 0 to maxcont;
signal q: std_logic;
begin   
process(Clock_100Hz,Reset,cont,sgcont,q)
   begin
			gcont5<='0';
			if(Clock_100Hz'event and Clock_100Hz='1') then
				if q='1' then 
					q<='0';
					cont<=0;
				elsif sgcont='1' then
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
		gcont5 <= q;	
end process;
end solve;