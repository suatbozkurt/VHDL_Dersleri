----------------------------------------------------------------------------------
--        s   x   y |  z
--        0   0   0 |  0 
--        0   0   1 |  0   
--        0   1   0 |  1
--        0   1   1 |  1
--        1   0   0 |  0   
--        1   0   1 |  1
--        1   1   0 |  0
--        1   1   1 |  1

----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2_1 is
  Port ( 
        s : in std_logic;
        x : in std_logic;
        y : in std_logic;
        z : out std_logic 
          );
end mux2_1;

architecture Behavioral of mux2_1 is

begin

    z <= (not s and x) or ( s and y);

end Behavioral;
