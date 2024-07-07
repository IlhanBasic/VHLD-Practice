--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:25:53 05/06/2024
-- Design Name:   
-- Module Name:   C:/Users/PC/Desktop/Predmeti/II godina/AR2/multiplexer/MULTIPLEXER_TB.vhd
-- Project Name:  multiplexer
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MULTIPLEXER
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
 
ENTITY MULTIPLEXER_TB IS
END MULTIPLEXER_TB;
 
ARCHITECTURE behavior OF MULTIPLEXER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MULTIPLEXER
    PORT(
         A0 : IN  std_logic;
         A1 : IN  std_logic;
         A2 : IN  std_logic;
         A3 : IN  std_logic;
         S1 : IN  std_logic;
         S0 : IN  std_logic;
         Y : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A0 : std_logic := '0';
   signal A1 : std_logic := '0';
   signal A2 : std_logic := '0';
   signal A3 : std_logic := '0';
   signal S1 : std_logic := '0';
   signal S0 : std_logic := '0';

 	--Outputs
   signal Y : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MULTIPLEXER PORT MAP (
          A0 => A0,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          S1 => S1,
          S0 => S0,
          Y => Y
        );


   -- Stimulus process
   stim_proc: process
   begin		
-- Test case 1: Select input A0
        A0 <= '1';
        A1<= '0';
        A2 <= '0';
        A3 <= '0';
        S0<= '0';
        S1<= '0';
        wait for 10 ns;
        
        -- Test case 2: Select input A1
        A0 <= '0';
        A1 <= '1';
        A2 <= '0';
        A3 <= '0';
        S0 <= '1';
        S1 <= '0';
        wait for 10 ns;
        
        -- Test case 3: Select input A2
        A0 <= '0';
        A1 <= '0';
        A2 <= '1';
        A3 <= '0';
        S0 <= '0';
        S1 <= '1';
        wait for 10 ns;
        
        -- Test case 4: Select input A3
        A0 <= '0';
        A1 <= '0';
        A2 <= '0';
        A3 <= '1';
        S0 <= '1';
        S1 <= '1';
        wait for 10 ns;
   end process;

END;
