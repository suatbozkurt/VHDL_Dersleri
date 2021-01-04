
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder1 is
  Port ( 
        x : in std_logic;
        y : in std_logic;
        s : out std_logic;
        c : out std_logic
);
end half_adder1;

architecture Behavioral of half_adder1 is
begin

s <= x xor y;
c <= x and y;

end Behavioral;
