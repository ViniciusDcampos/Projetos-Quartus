library IEEE;
use IEEE.Std_Logic_1164.all;

entity mux2p1 is
generic (
    generico : natural := 13;
)

port (E0: in std_logic_vector(generico downto 0);
      E1:in std_logic_vector(generico downto 0);
      sel: in std_logic;
      saida: out std_logic_vector(generico downto 0)
      );
end demux2p1;

architecture mux1 of demux2p1 is
begin 
 saida <= E0 when sel = '0' else
      E1;
end mux1;