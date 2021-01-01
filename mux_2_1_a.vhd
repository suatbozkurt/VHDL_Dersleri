----------------------------------------------------------------------------------
-- Engineer:Suat Bozkurt 
-- Create Date: 01.01.2021 15:02:14
-- Module Name: mux_2_1_a - Behavioral
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
---------------------------------------------------------------------------------
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_1_a is
  Port ( 
          s : in std_logic;
          x : in std_logic;
          y : in std_logic;
          z : out std_logic 
);
end mux_2_1_a;

architecture Behavioral of mux_2_1_a is
begin
    mux:process(s,x,y)
begin
    if s = '0' then 
        z<= x;
    else 
        z<= y;
    end if;
end process mux;
end Behavioral;
