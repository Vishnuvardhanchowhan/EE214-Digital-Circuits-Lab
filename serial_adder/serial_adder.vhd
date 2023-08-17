library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Serial_Adder is
port (reset: in std_logic; 
inp:in std_logic_vector(1 downto 0);
clock: in std_logic;
 s: out std_logic);
end entity;

architecture BHV of Serial_Adder is

type state is (c0,c1);
signal y_present,y_next: state:=c0;


begin
clock_proc:process(clock,reset)
begin
if(reset='1') then
            y_present<=c0; 

    
	elsif(clock='1' and clock' event) then
        
  
		      y_present<=y_next;
      
    end if;
end process;
state_transition_proc:process(inp,y_present)
begin
if(reset='1') then
					  y_next<=c0;
					  s<='0';
else

    case y_present is
	 
	  when c0=>
	  
		 if(unsigned(inp)=0) then    
                y_next<=c0;
					 s<='0';
					 elsif (unsigned(inp)=1) then 
					 y_next<=c0;
					  s<='1';
					  elsif (unsigned(inp)=2) then 
					 y_next<=c0;
					  s<='1';
					  elsif (unsigned(inp)=3) then 
					 y_next<=c1;
					  s<='0';
				 end if;
	 when c1=>
		 if(unsigned(inp)=0) then    
                y_next<=c0;
					 s<='1';
					 elsif (unsigned(inp)=1) then 
					 y_next<=c1;
					  s<='0';
					  elsif (unsigned(inp)=2) then 
					 y_next<=c1;
					  s<='0';
					  elsif (unsigned(inp)=3) then 
					 y_next<=c1;
					  s<='1';
					   
				 end if;
				 end case;
				 end if;
				 end process;
				 
				


end BHV;