----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_gate is
Port ( 
    a : in std_logic;
    b : in std_logic;
    z : out std_logic
);
end and_gate;

architecture Behavioral of and_gate is

begin
    
    z <= a and b ;

end Behavioral;
