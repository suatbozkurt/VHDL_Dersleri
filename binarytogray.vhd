----------------------------------------------------------------------------------
-- Engineer: Suat Bozkurt
-- 
-- Create Date: 18.01.2021 13:58:50 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binarytogray is
 Port ( 
        b : in std_logic_vector(3 downto 0);
        g : out std_logic_vector(3 downto 0)
 );
end binarytogray;

architecture Behavioral of binarytogray is
begin
            g(3) <= b(3);
            g(2) <= b(3) xor b(2);
            g(1) <= b(2) xor b(1);
            g(0) <= b(1) xor b(0);

end Behavioral;
