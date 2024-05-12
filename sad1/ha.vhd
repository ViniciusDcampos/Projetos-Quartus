library IEEE;
use IEEE.Std_Logic_1164.all;
entity ha is
port (A: in std_logic;
      B: in std_logic;
      S: out std_logic;
      Cout: out std_logic
  );
end ha;
architecture myarch of ha is
  
begin 
  S <= A xor B; 
  Cout <=  A and B;
end myarch;
