library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity DUT is
   port(input_vector: in std_logic_vector(3 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;
architecture DutWrap of DUT is
component Serial_Adder is
port(inp:in std_logic_vector(1 downto 0);
        reset,clock:in std_logic;
        s: out std_logic);
end component;
begin
add_instance:Serial_Adder
port map (
reset=>input_vector(3),
clock=>input_vector(0),
inp(1)=>input_vector(2),
inp(0)=>input_vector(1),
s=>output_vector(0));
end DutWrap;


