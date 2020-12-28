
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gate_or_tb is

end gate_or_tb;

architecture Behavioral of gate_or_tb is

component or_gate
PORT(
        a_i : in  std_logic;
        b_i : in  std_logic;
        z_o : out std_logic
     ); 
end component;
    
        signal a_i : std_logic := '0';
        signal b_i : std_logic := '0';
        signal z_o : std_logic;
        
BEGIN
         uut: or_gate PORT MAP (
                  a_i => a_i,
                  b_i => b_i,
                  z_o => z_o
                );
         stim_proc: process
begin
            a_i <= '0';   
            b_i <= '0';
            
wait for 10 ns;
            a_i <= '0';   
            b_i <= '1';
wait for 10 ns;
            a_i <= '1';   
            b_i <= '0';                              
     wait;
end process;
end Behavioral;
