library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(5 downto 0);
       	output_vector: out std_logic_vector(0 downto 0));
end entity;

architecture DutWrap of DUT is
   component MUX41 is
     port (l:in std_logic_vector(3 downto 0);
Sel:in std_logic_vector(1 downto 0);
 Yout: out std_logic);
   end component;
begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: MUX41 
			port map (
l(3)=> input_vector(5),
l(2)=> input_vector(4),
l(1)=> input_vector(3),
l(0)=> input_vector(2),
Sel(1)=> input_vector(1),
Sel(0)=> input_vector(0),
Yout=> output_vector(0));
end DutWrap;

