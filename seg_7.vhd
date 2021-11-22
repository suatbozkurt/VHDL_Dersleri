
--Suat Bozkurt

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity seg_7 is
  Port ( 
		
		a_input : in std_logic_vector(3 downto 0);
		seg_7_a  : out std_logic_vector(6 downto 0)
  
  );
end seg_7;

architecture Behavioral of seg_7 is

begin
process(a_input)
begin
	case a_input is
			when "0000" => seg_7_a <= "0000001"; 
			when "0001" => seg_7_a <= "1001111"; 
			when "0010" => seg_7_a <= "0010010";
			when "0011" => seg_7_a <= "0000110";
			when "0100" => seg_7_a <= "1001100";
			when "0101" => seg_7_a <= "0100100";
			when "0110" => seg_7_a <= "0100000";
			when "0111" => seg_7_a <= "0001111";
			when "1000" => seg_7_a <= "0000000";
			when "1001" => seg_7_a <= "0000100";
			when "1010" => seg_7_a <= "0001000";
			when "1011" => seg_7_a <= "1100000";
			when "1100" => seg_7_a <= "0110001";
			when "1101" => seg_7_a <= "1000010";
			when "1110" => seg_7_a <= "0110000";
			when "1111" => seg_7_a <= "0111000";
			when others => NULL;
	end case;
end process;
end Behavioral;
