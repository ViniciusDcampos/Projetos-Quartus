library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator is
    generic (
        xbits: natural := 7
    );
    port (
        Entrada0 : in std_logic_vector(xbits downto 0);
        Entrada1 : in std_logic_vector(xbits downto 0);
        resultado : out std_logic_vector(xbits downto 0)
    );
end subtrator;

architecture subtrai_absoluta of subtrator is
    signal temp0, temp1, temp_resultado : signed(xbits downto 0);
begin
    temp0 <= signed('0' & Entrada0);
    temp1 <= signed('0' & Entrada1);
    
    temp_resultado <= temp0 - temp1;
    
    resultado <= std_logic_vector(abs(temp_resultado));
end subtrai_absoluta;
