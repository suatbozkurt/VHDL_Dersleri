
--Suat Bozkurt 05/01/2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder2 is
  Port ( 
            x       : in std_logic;
            y       : in std_logic;
            z       : in std_logic;
            s       : out std_logic;
            c       : out std_logic
  );
end full_adder2;

architecture Behavioral of full_adder2 is

begin
s <=  (not x and not y and z) or
       (not x and y and not z) or
       (x and not y and not z) or
        (x and y and z);
 c <= (x and not y and z)
      or (not x and y and z)
      or (x and y);                         
end Behavioral;
