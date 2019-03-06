--Jonathan Colella | jc2004
--Embedded Systems Homework 5
--Due 3/7/2019

--2)

library IEEE;
use IEEE.std_logic_1164.all;

entity h5p2 is
	port(A_1, A_2, B_1, B_2, D_1 : in std_logic;
	     E_out : out std_logic);

end h5p2;

architecture casetype of h5p2 is
signal bundle_inputs <= A_1 & A_2 & B_1 & B_2 & D_1; --group of signals for the case statement
begin
	main: process(bundle_inputs)
	begin
		case bundle_inputs is
		when "00001" => E-out <= '0';
		when "01001" => E-out <= '0';
		when "10001" => E-out <= '0';
		when "11001" => E-out <= '0';
		when others  => E-out <= '1';
		end case;
	end process main;
end casetype;

architecture iftype of h5p2 is
signal bundle_inputs <= A_1 & A_2 & B_1 & B_2 & D_1; --group of signals for the case statement
begin
	main: process(bundle_inputs)
	begin
		if    (bundle_inputs = "00001") then E-out <= '0';
		elsif (bundle_inputs = "01001") then E-out <= '0';
		elsif (bundle_inputs = "10001") then E-out <= '0';
		elsif (bundle_inputs = "11001") then E-out <= '0';
		else  E-out <= '1';
		end if;
	end process main;
end iftype;