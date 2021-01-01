
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_21_tb is
--  Port ( );
end mux_21_tb;

architecture Behavioral of mux_21_tb is

COMPONENT mux2_1
    PORT(
           s : in std_logic;
           x : in std_logic;
           y : in std_logic;
           z : out std_logic 
        );      
END COMPONENT;

   signal s_s : std_logic := '0';
   signal s_x : std_logic := '0';
   signal s_y : std_logic := '0';
   signal s_z : std_logic ;

begin
uut: mux2_1 PORT MAP (
          s => s_s,
          x => s_x,
          y => s_y,
          z => s_z
        );
stim_proc: process
           begin  
          
           s_s <= '0';
           s_x <= '0';
           s_y <= '0';
           
              wait for 50 ns; 
           s_s <= '0';
           s_x <= '0';
           s_y <= '1';       
        
              wait for 50 ns; 
              s_s <= '0';
              s_x <= '1';
              s_y <= '0';          
           
              wait for 50 ns; 
              s_s <= '0';
              s_x <= '1';
              s_y <= '1';                     
        
              wait for 50 ns; 
              s_s <= '1';
              s_x <= '0';
              s_y <= '0'; 
              wait for 50 ns; 
              s_s <= '1';
              s_x <= '0';
              s_y <= '1';          
              wait for 50 ns; 
              s_s <= '1';
              s_x <= '1';
              s_y <= '0'; 
               wait for 50 ns; 
              s_s <= '1';
              s_x <= '1';
              s_y <= '1';            
              wait;
           end process;
end Behavioral;
