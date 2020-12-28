
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity or_gate is
  Port (      
        a_i : in  std_logic;
        b_i : in  std_logic;
        z_o : out std_logic        
        );
end or_gate;

architecture Behavioral of or_gate is

begin
       z_o <= a_i or b_i;
       
       
end Behavioral;
