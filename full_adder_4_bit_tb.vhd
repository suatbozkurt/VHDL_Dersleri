--Suat Bozkurt
--15-11-2021
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_4_bit_tb is
--  Port ( );
end full_adder_4_bit_tb;

architecture Behavioral of full_adder_4_bit_tb is
component full_adder_4_bit 
 Port ( 
		full_adder_4_a: 	in std_logic_vector(3 downto 0) ;
		full_adder_4_b: 	in std_logic_vector(3 downto 0) ;
		full_adder_4_c: 	in std_logic ;
		full_adder_4_sum: 	out std_logic_vector(3 downto 0) ;
		full_adder_4_carry: out std_logic
);
end component;


signal full_adder_4_a_s:  		std_logic_vector(3 downto 0) := (others => '0');
signal full_adder_4_b_s:  		std_logic_vector(3 downto 0) := (others => '0');
signal full_adder_4_c_s:  		std_logic := '0';
signal full_adder_4_sum_s:  	std_logic_vector(3 downto 0);
signal full_adder_4_carry_s:	std_logic;

begin

uut: full_adder_4_bit PORT MAP (
              full_adder_4_a			=>  full_adder_4_a_s,  	
              full_adder_4_b 			=>  full_adder_4_b_s,  	
              full_adder_4_c 			=>  full_adder_4_c_s,  	
              full_adder_4_sum			=>  full_adder_4_sum_s,  
			  full_adder_4_carry 		=>  full_adder_4_carry_s
            );
stim_proc: process
begin
                full_adder_4_a_s <=  "0000";
                full_adder_4_b_s <=  "0000";
				
 wait for 50 ns; 
                 full_adder_4_a_s <=  "0000";				 
                 full_adder_4_b_s <=  "0001";
				 
wait for 50 ns; 
                full_adder_4_a_s <=  "0001";
                full_adder_4_b_s <=  "0001";
							 
wait for 50 ns; 
                full_adder_4_a_s <=  "0010";
                full_adder_4_b_s <=  "0101";
				
wait for 50 ns; 
                full_adder_4_a_s <=  "0110";
                full_adder_4_b_s <=  "1010";
				
wait for 50 ns; 
                full_adder_4_a_s <=  "0011";
                full_adder_4_b_s <=  "1000";
				
wait for 50 ns; 
                full_adder_4_a_s <=  "0000";
                full_adder_4_b_s <=  "1111";
				
wait for 50 ns; 
                full_adder_4_a_s <=  "1111";
                full_adder_4_b_s <=  "1111";
							 
wait;
end process;

end Behavioral;
