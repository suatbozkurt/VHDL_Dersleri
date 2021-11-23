
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg_7_tb is
--  Port ( );
end seg_7_tb;

architecture Behavioral of seg_7_tb is
component seg_7
 Port ( 
		a_input : in std_logic_vector(3 downto 0);
		seg_7_a  : out std_logic_vector(6 downto 0)
);
end component;

signal a_input_s:	std_logic_vector(3 downto 0) := (others => '0');
signal seg_7_s:  	std_logic_vector(6 downto 0) ;

begin

uut: seg_7 PORT MAP (
              a_input			=>  a_input_s,  	
              seg_7_a     		=>  seg_7_s 	   
            );
stim_proc: process

begin
                 a_input_s<=  "0000";
                			
wait for 50 ns; 
                 a_input_s <=  "0001";				 
                 				 
wait for 50 ns; 
                a_input_s <=  "0010";
                							 
wait for 50 ns; 
                a_input_s <=  "0011";
         				
wait for 50 ns; 
                a_input_s <=  "0100";
                				
wait for 50 ns; 
                a_input_s <=  "0101";
                				
wait for 50 ns; 
                a_input_s <=  "0110";
                				
wait for 50 ns; 
                a_input_s <=  "0111";
wait for 50 ns; 
                a_input_s <=  "1000";				
wait for 50 ns; 
                a_input_s <=  "1001";
wait for 50 ns; 
                a_input_s <=  "1010";
wait for 50 ns; 
                a_input_s <=  "1011";
wait for 50 ns; 
                a_input_s <=  "1100";
wait for 50 ns; 
                a_input_s <=  "1101";
wait for 50 ns; 
                a_input_s <=  "1110";	
wait for 50 ns; 
                a_input_s <=  "1111";				
wait;
end process;
end Behavioral;