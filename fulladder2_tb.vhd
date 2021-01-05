
--Suat Bozkurt 05/01/2021

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder2_tb is
--  Port ( );
end fulladder2_tb;

architecture Behavioral of fulladder2_tb is
component full_adder2 is
  Port ( 
            x       : in std_logic;
            y       : in std_logic;
            z       : in std_logic;
            s       : out std_logic;
            c   : out std_logic
  );
end component;
  signal s_x : std_logic := '0';
  signal s_y : std_logic := '0';
  signal s_z : std_logic := '0';
  signal s_s : std_logic ;
  signal s_c : std_logic ;

begin
uut: full_adder2 PORT MAP (
          x => s_x,
          y => s_y,
          z => s_z,
          s => s_s,
          c => s_c
        );
stim_proc: process
begin            
           s_x <= '0';
           s_y <= '0';
           s_z <= '0';         
wait for 50 ns; 
           s_x <= '0';
           s_y <= '0';
           s_z <= '1';              
wait for 50 ns; 
              s_x <= '0';
              s_y <= '1';
              s_z <= '0';          
 wait for 50 ns; 
              s_x <= '0';
              s_y <= '1';
              s_z <= '1';                     
wait for 50 ns; 
              s_x <= '1';
              s_y <= '0';
              s_z <= '0'; 
 wait for 50 ns; 
              s_x <= '1';
              s_y <= '0';
              s_z <= '1';          
 wait for 50 ns; 
              s_x <= '1';
              s_y <= '1';
              s_z <= '0'; 
wait for 50 ns; 
              s_x <= '1';
              s_y <= '1';
              s_z <= '1';            
wait;
end process;              
end Behavioral;
