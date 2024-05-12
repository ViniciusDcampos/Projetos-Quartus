library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity somador is
    generic (
        valor : natural := 13
    );
    port (
        a, b : in std_logic_vector(valor downto 0);
        cout  : out std_logic_vector(valor downto 0)
    );
end entity somador;

architecture Behavioral of somador is
    signal resultado: unsigned(valor downto 0);
begin
    resultado <= unsigned(a) + unsigned(b);
    cout <= std_logic_vector(resultado);
end Behavioral;
