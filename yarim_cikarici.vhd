
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity yarim_cikarici is
 Port ( 
        x : in std_logic;
        y : in std_logic;
        d : out std_logic;
        b : out std_logic
);
end yarim_cikarici;

architecture Behavioral of yarim_cikarici is
begin

d <= (not x and y) or (x and not y);
b <= (not x and y);
end Behavioral;
