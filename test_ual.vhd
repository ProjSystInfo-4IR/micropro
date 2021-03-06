--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:11:01 04/28/2015
-- Design Name:   
-- Module Name:   /home/hadang/4e/SystInfo/micropo/test_ual.vhd
-- Project Name:  micropo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ual
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_ual IS
END test_ual;
 
ARCHITECTURE behavior OF test_ual IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ual
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Ctrl_ALU : IN  std_logic_vector(2 downto 0);
         N : OUT  std_logic;
         O : OUT  std_logic;
         Z : OUT  std_logic;
         C : OUT  std_logic;
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Ctrl_ALU : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal N : std_logic;
   signal O : std_logic;
   signal Z : std_logic;
   signal C : std_logic;
   signal S : std_logic_vector(7 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ual PORT MAP (
          A => A,
          B => B,
          Ctrl_ALU => Ctrl_ALU,
          N => N,
          O => O,
          Z => Z,
          C => C,
          S => S
        );
	 
	 -- Test A + B
	 A <= "00000001" after 10ns, "11111111" after 20ns, "000000000" after 40ns, 
		   "00000001" after 50ns, "11111111" after 60ns, "000000000" after 70ns, 
		   "00000001" after 80ns, "11111111" after 90ns, "00000011" after 100ns,
			"00000110" after 110ns;
	 B <= "00000001",  
			"11111111" after 85ns, 
			"00000011" after 95ns, "00000000" after 120ns;
	 Ctrl_ALU <= "001" after 5ns, "011" after 45ns, "010" after 75ns, "100" after 105ns;

END;
