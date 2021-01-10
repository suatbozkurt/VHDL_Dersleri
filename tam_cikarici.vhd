
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tam_cikarici is
  Port ( 
            x : in std_logic;
            y : in std_logic;
            z : in std_logic;
            b : out std_logic;
            d : out std_logic
);
end tam_cikarici;

architecture Behavioral of tam_cikarici is


begin
b <=    (not x and not y and z)or
        (not x and y and not z)or
        (not x and  y and  z)or
        (x and y and z );
d <=    (not x and not y and z)or
                (not x and y and not z)or
                (x and not y and not z)or
                (x and y and z );

end Behavioral;
