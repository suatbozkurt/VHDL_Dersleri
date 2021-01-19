LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY binarytogray2_tb IS
END binarytogray2_tb;
ARCHITECTURE binarytogray2_tb OF binarytogray2_tb IS 
    COMPONENT binarytogray_2
    PORT(
         b : IN  std_logic_vector(3 downto 0);
         g : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
          
   signal b : std_logic_vector(3 downto 0) := "0000";
   signal g : std_logic_vector(3 downto 0);
   
BEGIN
 uut: binarytogray_2 PORT MAP (
          b => b,
          g => g
        );
 stim_proc: process
 begin    
    b <= "0000";  wait for 50 ns; 
    b <= "0001";  wait for 50 ns; 
    b <= "0010";  wait for 50 ns; 
    b <= "0011";  wait for 50 ns; 
    b <= "0100";  wait for 50 ns; 
    b <= "0101";  wait for 50 ns; 
    b <= "0110";  wait for 50 ns; 
    b <= "0111";  wait for 50 ns; 
    b <= "1000";  wait for 50 ns; 
    b <= "1001";  wait for 50 ns; 
    b <= "1010";  wait for 50 ns; 
    b <= "1011";  wait for 50 ns; 
    b <= "1100";  wait for 50 ns; 
    b <= "1101";  wait for 50 ns; 
    b <= "1110";  wait for 50 ns; 
    b <= "1111";  wait for 50 ns;
    wait;
 end process;
END;