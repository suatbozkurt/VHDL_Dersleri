------------
Suat Bozkurt 
14-11-2021 01:08

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
  Port ( 
  half_adder_a : in std_logic;
  half_adder_b : in std_logic;
  half_adder_sum :  out std_logic;
  half_adder_carry : out std_logic
  );  
end half_adder;

architecture Behavioral of half_adder is

begin
half_adder_sum <= half_adder_a xor half_adder_b;
half_adder_carry <= half_adder_a and half_adder_b;

end Behavioral;
