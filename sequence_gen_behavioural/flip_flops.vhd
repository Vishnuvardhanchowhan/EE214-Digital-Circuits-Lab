library ieee;
use ieee.std_logic_1164.all;
package flipflops is
  
  component dff1 is 
  port(D,clk,reset:in std_logic;Q:out std_logic);
  end component dff1;
  
  component dff2 is port(D2,clk2,reset2:in std_logic;Q2:out std_logic);
  end component dff2;
  
-- Instantiate remaining components  
  

end package flipflops;



--D flip flop2
library ieee;
use ieee.std_logic_1164.all;
entity dff1 is port(D,clk,reset:in std_logic;Q:out std_logic);
end entity dff1;
architecture behav of dff1 is
begin
dff1: process (clk,reset)
begin
if(reset='1')then
Q <= '0';
elsif (clk'event and (clk='1')) then
Q <= D;
end if;
end process dff1;
end behav;

library ieee;
use ieee.std_logic_1164.all;
entity dff2 is port(D2,clk2,reset2:in std_logic;Q2:out std_logic);
end entity dff2;
architecture behav2 of dff2 is
begin
dff2: process (clk2,reset2)
begin 
if(reset2='1')then
Q2 <= '1';
elsif (clk2'event and (clk2='1')) then
Q2 <= D2;
end if;
end process dff2;
end behav2;
