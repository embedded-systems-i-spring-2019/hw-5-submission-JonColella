--Jonathan Colella | jc2004
--Embedded Systems Homework 5
--Due 3/7/2019

--6)

library IEEE;
use IEEE.std_logic_1164.all;

entity h5p6 is
	port(data_in : in std_logic_vector(7 downto 0);
	     select  : in std_logic_vector(2 downto 0);
	     output  : out std_logic);

end h5p6;

architecture casetype of h5p6 is
begin
	main: process(select)
	begin
		case select is
		when "000" => output <= data_in(0);
		when "001" => output <= data_in(1);
		when "010" => output <= data_in(2);
		when "011" => output <= data_in(3);
		when "100" => output <= data_in(4);
		when "101" => output <= data_in(5);
		when "110" => output <= data_in(6);
		when "111" => output <= data_in(7);
		when others => output <= '0';
		end case;
	end process main;
end casetype;

architecture iftype of h5p6 is
begin
	main: process(select)
	begin
		if    (select = "000") then output <= data_in(0);
		elsif (select = "001") then output <= data_in(1);
		elsif (select = "010") then output <= data_in(2);
		elsif (select = "011") then output <= data_in(3);
		elsif (select = "100") then output <= data_in(4);
		elsif (select = "101") then output <= data_in(5);
		elsif (select = "110") then output <= data_in(6);
		elsif (select = "111") then output <= data_in(7);
		else  output <= '0';
		end if;
	end process main;
end iftype;