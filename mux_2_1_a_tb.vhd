----------------------------------------------------------------------------------
-- Engineer:Suat Bozkurt  
-- 
-- Create Date: 01.01.2021 15:11:08
-- Design Name: 
-- Module Name: mux_2_1_a_tb - Behavioral

----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_2_1_a_tb is
--  Port ( );
end mux_2_1_a_tb;

architecture Behavioral of mux_2_1_a_tb is
COMPONENT mux_2_1_a
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
        uut: mux_2_1_a PORT MAP (
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
