library ieee;
use ieee.std_logic_1164.all;
entity registrador is 
    generic (
	    nbits: natural := 8
	);
    port (
	Entrada: in std_logic_vector(nbits-1 downto 0);
	carga: in std_logic;
	Reset: in std_logic;
	clock: in std_logic;	
	saida: out std_logic_vector(nbits-1 downto 0));
end pA;
architecture behv of pA is
begin
	process(clock, Reset)
	begin
		if Reset = '1' then
		    saida <= (others => '0');
		elsif (clock'event and clock = '1') then
            if E = '1' then
                saida <= Entrada;
            end if;		
		end if;
	end process;
end behv;
