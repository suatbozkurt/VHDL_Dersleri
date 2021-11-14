------------
--Suat Bozkurt 
--14-11-2021 01:08


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity full_adder is
 Port ( 
		full_adder_a: in std_logic;
		full_adder_b: in std_logic;
		full_adder_c: in std_logic;
		full_adder_sum: out std_logic;
		full_adder_carry: out std_logic
 );
end full_adder;

architecture Behavioral of full_adder is
component half_adder is
  Port ( 
  half_adder_a : in std_logic;
  half_adder_b : in std_logic;
  half_adder_sum :  out std_logic;
  half_adder_carry : out std_logic
  );  
end  component half_adder;

signal firs_half_adder_carry : std_logic := '0';
signal firs_half_adder_sum : std_logic := '0';
signal second_half_adder_carry: std_logic := '0';

begin

first_half_adder : half_adder
port map( 
half_adder_a 	=> full_adder_a,
half_adder_b 	=> full_adder_b,
half_adder_sum 	=> firs_half_adder_carry,
half_adder_carry => firs_half_adder_sum
);

second_half_adder : half_adder
port map( 
half_adder_a 	=> firs_half_adder_carry,
half_adder_b 	=> full_adder_c,
half_adder_sum 	=> full_adder_sum,
half_adder_carry   => second_half_adder_carry
);
full_adder_carry	<= firs_half_adder_sum or second_half_adder_carry;




end Behavioral;
