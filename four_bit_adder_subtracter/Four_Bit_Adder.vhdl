
library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;
use work.Full_Adder;

entity Four_Bit_Adder is
port (A3,A2,A1,A0,B3,B2,B1,B0, M: in std_logic; C,S3,S2,S1,S0: out std_logic);
end entity Four_Bit_Adder;
architecture Struct of  Four_Bit_Adder is
signal TB0,TB1,TB2,TB3,TCin01,TCin12,TCin23: std_logic;
component Full_Adder is
port(A,B,Cin: in std_logic;
        S,Cout: out std_logic);
		  end component;
begin
  -- component instances
  X11:XOR_11
  port map(A => M, B => B0, Y => TB0);
  X12:XOR_12
  port map(A => M, B => B1, Y => TB1);
  X13:XOR_13 
  port map(A => M, B => B2, Y => TB2);
  X14:XOR_14
  port map(A => M, B => B3, Y => TB3);
  
  
  F0:Full_Adder
  port map(A=>A0,B=>TB0,Cin=>M,S=>S0,Cout=>TCin01);
  F1:Full_Adder
  port map(A=>A1,B=>TB1,Cin=>TCin01,S=>S1,Cout=>TCin12);
  F2:Full_Adder
  port map(A=>A2,B=>TB2,Cin=>TCin12,S=>S2,Cout=>TCin23);
  F3:Full_Adder
  port map(A=>A3,B=>TB3,Cin=>TCin23,S=>S3,Cout=>C);
  
  
  
  
end Struct; 