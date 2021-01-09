library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb1 is
--  Port ( );
end half_adder_tb1;

architecture Behavioral of half_adder_tb1 is
component yarim_cikarici 
Port(
        x : in std_logic;
        y : in std_logic;
        d : out std_logic;
        b : out std_logic
);
end component;
signal s_x : std_logic := '0';
signal s_y : std_logic := '0';
signal s_s : std_logic;
signal s_c : std_logic;
begin
uut: yarim_cikarici PORT MAP (
              x => s_x,
              y => s_y,
              d => s_s,
              b => s_c
            );
stim_proc: process
begin
                s_x <=  '0';
                s_y <=  '0';
 wait for 50 ns; 
                 s_x <= '0';
                 s_y <= '1'; 
wait for 50 ns; 
                 s_x <= '1';
                 s_y <= '0'; 
 wait for 50 ns; 
                 s_x <= '1';
                 s_y <= '1'; 
wait;
end process;
end Behavioral;
