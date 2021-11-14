------------
--Suat Bozkurt 
--14-11-2021 01:08


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
--  Port ( );
end half_adder_tb;

architecture Behavioral of half_adder_tb is
component half_adder 
Port(
        half_adder_a : in std_logic;
        half_adder_b : in std_logic;
        half_adder_sum : out std_logic;
        half_adder_carry : out std_logic
);
end component;
signal half_adder_a_s : std_logic := '0';
signal half_adder_b_s : std_logic := '0';
signal half_adder_sum_s : std_logic;
signal half_adder_carry_s : std_logic;
begin
uut: half_adder PORT MAP (
              half_adder_a => half_adder_a_s,
              half_adder_b => half_adder_b_s,
              half_adder_sum => half_adder_sum_s,
              half_adder_carry => half_adder_carry_s
            );
stim_proc: process
begin
                half_adder_a_s <=  '0';
                half_adder_b_s <=  '0';
 wait for 50 ns; 
                 half_adder_a_s <= '0';
                 half_adder_b_s <= '1'; 
wait for 50 ns; 
                 half_adder_a_s <= '1';
                 half_adder_b_s <= '0'; 
wait for 50 ns; 
                 half_adder_a_s <= '1';
                 half_adder_b_s <= '1'; 
wait;
end process;
end Behavioral;
