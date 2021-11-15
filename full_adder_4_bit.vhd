--Suat Bozkurt
--15-11-2021
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_4_bit is
 Port ( 

		full_adder_4_a: in std_logic_vector(3 downto 0);
		full_adder_4_b: in std_logic_vector(3 downto 0);
		full_adder_4_c: in std_logic;
		full_adder_4_sum: out std_logic_vector(3 downto 0);
		full_adder_4_carry: out std_logic
);

end full_adder_4_bit;

architecture Behavioral of full_adder_4_bit is
component full_adder 
 Port ( 
		full_adder_a: in std_logic;
		full_adder_b: in std_logic;
		full_adder_c: in std_logic;
		full_adder_sum: out std_logic;
		full_adder_carry: out std_logic
 );
end component;

signal full_adder_3_c : std_logic_vector (2 downto 0);

begin

first_full_adder : full_adder
port map( 
full_adder_a 	=> full_adder_4_a(0),
full_adder_b 	=> full_adder_4_b(0),
full_adder_c 	=> full_adder_4_c,
full_adder_sum 	=> full_adder_4_sum(0),
full_adder_carry => full_adder_3_c(0)
);

second_full_adder : full_adder
port map( 
full_adder_a 	=> full_adder_4_a(1),
full_adder_b 	=> full_adder_4_b(1),
full_adder_c 	=> full_adder_3_c(0),
full_adder_sum 	=> full_adder_4_sum(1),
full_adder_carry => full_adder_3_c(1)
);

third_full_adder : full_adder
port map( 
full_adder_a 	=> full_adder_4_a(2),
full_adder_b 	=> full_adder_4_b(2),
full_adder_c 	=> full_adder_3_c(1),
full_adder_sum 	=> full_adder_4_sum(2),
full_adder_carry => full_adder_3_c(2)
);

fourth_full_adder : full_adder
port map( 
full_adder_a 	=> full_adder_4_a(3),
full_adder_b 	=> full_adder_4_b(3),
full_adder_c 	=> full_adder_3_c(2),
full_adder_sum 	=> full_adder_4_sum(3),
full_adder_carry => full_adder_4_carry
);


end Behavioral;
