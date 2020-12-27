
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY and_gate_tb IS
END and_gate_tb;
ARCHITECTURE and_gate_tb OF and_gate_tb IS 
    COMPONENT and_gate
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         z : OUT  std_logic
        );
    END COMPONENT;
    
   signal a : std_logic := '0';
   signal b : std_logic := '0';
   signal z : std_logic;
BEGIN
 uut: and_gate PORT MAP (
          a => a,
          b => b,
          z => z
        );
   stim_proc: process
   begin  
  
   a <= '0';
   b <= '0';

      wait for 50 ns; 
   a <= '0';
   b <= '1';

      wait for 50 ns; 
   a <= '0';
   b <= '1';
   
      wait for 50 ns; 
   a <= '1';
   b <= '0';

      wait for 50 ns; 
   a <= '1';
   b <= '1';
      wait;
   end process;

END;