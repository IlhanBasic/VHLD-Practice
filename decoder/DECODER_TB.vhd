--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:22:03 05/06/2024
-- Design Name:   
-- Module Name:   C:/Users/PC/Desktop/Predmeti/II godina/AR2/dekoder/DECODER_TB.vhd
-- Project Name:  dekoder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DECODER
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
 
ENTITY DECODER_TB IS
END DECODER_TB;
 
ARCHITECTURE behavior OF DECODER_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DECODER
    PORT(
         X0 : IN  std_logic;
         X1 : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal X0 : std_logic := '0';
   signal X1 : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DECODER PORT MAP (
          X0 => X0,
          X1 => X1,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
     wait for 10 ns;
		X0 <='0';
		X1 <='0';
		wait for 10 ns;
		X0 <='1';
		X1 <='0';
		wait for 10 ns;
		X0 <='0';
		X1 <='1';
		wait for 10 ns;
		X0 <='1';
		X1 <='1';

      wait;
   end process;

END;
