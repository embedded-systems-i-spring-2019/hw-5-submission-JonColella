--Jonathan Colella | jc2004
--Embedded Systems Homework 5
--Due 3/7/2019

--7)

library IEEE;
use IEEE.std_logic_1164.all;

entity h5p7 is
	port(data_in : in std_logic_vector(2 downto 0);
	     output  : out std_logic_vector(7 downto 0));

end h5p7;

architecture casetype of h5p7 is
begin
	main: process(data_in)
	begin
		case data_in is
		when "000" => output(0) <= '1';
		when "001" => output(1) <= '1';
		when "010" => output(2) <= '1';
		when "011" => output(3) <= '1';
		when "100" => output(4) <= '1';
		when "101" => output(5) <= '1';
		when "110" => output(6) <= '1';
		when "111" => output(7) <= '1';
		when others => output <= '0';
		end case;
	end process main;
end casetype;

architecture iftype of h5p7 is
begin
	main: process(data_in)
	begin
		if    (data_in = "000") then output(0) <= '1';
		elsif (data_in = "001") then output(1) <= '1';
		elsif (data_in = "010") then output(2) <= '1';
		elsif (data_in = "011") then output(3) <= '1';
		elsif (data_in = "100") then output(4) <= '1';
		elsif (data_in = "101") then output(5) <= '1';
		elsif (data_in = "110") then output(6) <= '1';
		elsif (data_in = "111") then output(7) <= '1';
		else  output <= '0';
		end if;
	end process main;
end iftype;