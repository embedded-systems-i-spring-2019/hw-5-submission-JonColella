--Jonathan Colella | jc2004
--Embedded Systems Homework 5
--Due 3/7/2019

--3)

library IEEE;
use IEEE.std_logic_1164.all;

entity h5p3 is
	port(A_1, A_2, B_1, B_2, D_1 : in std_logic;
	     E_out : out std_logic);

end h5p3;

architecture behavioral of h5p3 is
signal a_out, b_out, c_out, d_not : std_logic;
begin
	a_out <= (A_1 AND A_2);
	b_out <= (B_1 OR  B_2);
	c_out <= (B_2 AND d_not);
	d_not <= (NOT D_1);
	E-out <= (a_out OR b_out OR c_out);
	
end behavioral;