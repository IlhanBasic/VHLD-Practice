--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:30:27 06/19/2024
-- Design Name:   
-- Module Name:   C:/Users/Korisnik/OneDrive/Desktop/Xillinx share/IspitZ1/ISPIUTZ1TB.vhd
-- Project Name:  IspitZ1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ckt1
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
 
ENTITY ISPIUTZ1TB IS
END ISPIUTZ1TB;
 
ARCHITECTURE behavior OF ISPIUTZ1TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ckt1
    PORT(
         C_IN : IN  std_logic_vector(7 downto 0);
         BTN : IN  std_logic;
         CLK : IN  std_logic;
         C_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal C_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal BTN : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal C_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ckt1 PORT MAP (
          C_IN => C_IN,
          BTN => BTN,
          CLK => CLK,
          C_OUT => C_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		BTN <= '0';
      wait for CLK_period*20;
		BTN <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
