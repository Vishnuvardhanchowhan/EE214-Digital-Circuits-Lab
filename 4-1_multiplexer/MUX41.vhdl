library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.mux;
entity MUX41 is
port (l:in std_logic_vector(3 downto 0);
Sel:in std_logic_vector(1 downto 0);
 Yout: out std_logic);
end entity MUX41;
architecture Struct of MUX41 is
signal A: std_logic_vector(1 downto 0);
component mux is
port(I:in std_logic_vector(1 downto 0); 
S: std_logic; Y: out std_logic);
		  end component;
begin
    m1:mux
    port map (I(0)=>l(0), I(1)=>l(1), S=>Sel(0), Y=>A(0));
	 m2:mux
    port map (I(0)=>l(2), I(1)=>l(3), S=>Sel(0), Y=>A(1));
	 m3:mux
    port map (I(0)=>A(0), I(1)=>A(1), S=>Sel(1), Y=>Yout);
	 end struct;
