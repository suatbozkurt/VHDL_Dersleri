library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tam_cikarici_tb is
--  Port ( );
end tam_cikarici_tb;

architecture Behavioral of tam_cikarici_tb is
component tam_cikarici is
  Port ( 
            x       : in std_logic;
            y       : in std_logic;
            z       : in std_logic;
            b       : out std_logic;
            d   : out std_logic
  );
end component;
  signal s_x : std_logic := '0';
  signal s_y : std_logic := '0';
  signal s_z : std_logic := '0';
  signal s_b : std_logic ;
  signal s_d : std_logic ;

begin
uut: tam_cikarici PORT MAP (
          x => s_x,
          y => s_y,
          z => s_z,
          b => s_b,
          d => s_d
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