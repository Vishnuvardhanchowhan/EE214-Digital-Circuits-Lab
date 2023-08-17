
library ieee;
use ieee.std_logic_1164.all;

entity alu_beh is
    generic(
        operand_width : integer:=4;
        sel_line : integer:=2
        );
    port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        sel: in std_logic_vector(sel_line-1 downto 0);
        op: out std_logic_vector((operand_width*2)-1 downto 0)
    ) ;
end alu_beh;

architecture a1 of alu_beh is
    function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
		  variable sum:std_logic_vector(4 downto 0):=(others=>'0');
		  variable carry:std_logic_vector(3 downto 0):=(others=>'0');
            
        begin 
		  sum(0):=A(0) xor B(0);
		  carry(0):=A(0) and B(0);
		  for i in 1 to 3 loop
		  sum(i):=(A(i) xor B(i)) xor carry(i-1) ;
		  carry(i):=((A(i) xor B(i)) and carry(i-1)) or (A(i) and B(i));
		  end loop;
		  sum(4):=carry(3);
		  
		  
		  
            
            return sum;
    end add;
	 function xoring(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
		  variable xored:std_logic_vector(3 downto 0):=(others=>'0');
		  
        begin
		  for i in 0 to 3 loop
		  xored(i):=A(i) xor B(i);
		  end loop;
		  
		  
           
            return xored;
    end xoring;
	 
function mult(A: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
		  variable twota :std_logic_vector(4 downto 0):=(others=>'0');
		  variable tcarry:std_logic_vector(3 downto 0):=(others=>'0');
        begin 
		  twota(0):=A(0) xor A(0);
		  tcarry(0):=A(0) and A(0);
		  for i in 1 to 3 loop
		  twota(i):=(A(i) xor A(i)) xor tcarry(i-1);
		  tcarry(i):=((A(i) xor A(i)) and tcarry(i-1)) or (A(i) and A(i));
		  end loop;
		  twota(4):=tcarry(3);
		  
		  
		  
           
            return twota;
    end mult;
function concat(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
		  variable cnct:std_logic_vector(7 downto 0);
		  
        begin 
		  for i in 0 to 3 loop
		  cnct(i):= B(i);
		  end loop;
		  for i in 4 to 7 loop
		  cnct(i):= A(i-4);
		  end loop;
		  
		  
            
            return cnct;
    end concat;

 
begin
alu : process( A, B, sel )
begin

if sel(0)='0' and sel(1)='0' then
op<=concat(A,B);
elsif sel(0)='1' and sel(1)='0' then
op<="000"&add(A,B);
elsif sel(0)='0' and sel(1)='1' then
op<="0000"&xoring(A,B);
elsif sel(0)='1' and sel(1)='1' then
op<="000"&mult(A);
end if;
   
end process ; 
end a1 ; 
