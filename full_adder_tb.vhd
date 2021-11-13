------------
Suat Bozkurt 
14-11-2021 01:08

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
--  Port ( );
end full_adder_tb;

architecture Behavioral of full_adder_tb is
component full_adder 
Port(
		full_adder_a: in std_logic;
		full_adder_b: in std_logic;
		full_adder_c: in std_logic;
		full_adder_sum: out std_logic;
		full_adder_carry: out std_logic
);
end component;

signal full_adder_s_a : std_logic := '0';
signal full_adder_s_b : std_logic := '0';
signal full_adder_s_c : std_logic := '0';
signal full_adder_s_s : std_logic;
signal full_adder_s_ca : std_logic;
begin
uut: full_adder PORT MAP (
              full_adder_a => full_adder_s_a,
              full_adder_b => full_adder_s_b,
              full_adder_c => full_adder_s_c,
              full_adder_sum => 	full_adder_s_s,
			  full_adder_carry =>   full_adder_s_ca
            );
			
stim_proc: process
begin
                full_adder_s_a <=  '0';
                full_adder_s_b <=  '0';
				full_adder_s_c <=  '0';
 wait for 50 ns; 
                 full_adder_s_a <=  '0';				 
                 full_adder_s_b <=  '0';
				 full_adder_s_c <=  '1';
wait for 50 ns; 
                full_adder_s_a <=  '0';
                full_adder_s_b <=  '1';
				full_adder_s_c <=  '0';				 
wait for 50 ns; 
                full_adder_s_a <=  '0';
                full_adder_s_b <=  '1';
				full_adder_s_c <=  '1';
wait for 50 ns; 
                full_adder_s_a <=  '1';
                full_adder_s_b <=  '0';
				full_adder_s_c <=  '0';
wait for 50 ns; 
                full_adder_s_a <=  '1';
                full_adder_s_b <=  '0';
				full_adder_s_c <=  '1';
wait for 50 ns; 
                full_adder_s_a <=  '1';
                full_adder_s_b <=  '1';
				full_adder_s_c <=  '0';
wait for 50 ns; 
                full_adder_s_a <=  '1';
                full_adder_s_b <=  '1';
				full_adder_s_c <=  '1';				 
wait;
end process;
end Behavioral;
