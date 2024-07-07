----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:24:27 05/06/2024 
-- Design Name: 
-- Module Name:    MULTIPLEXER - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MULTIPLEXER is
    Port ( A0 : in  STD_LOGIC;
           A1 : in  STD_LOGIC;
           A2 : in  STD_LOGIC;
           A3 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end MULTIPLEXER;

architecture Behavioral of MULTIPLEXER is
 signal SEL : std_logic_vector(1 downto 0);
begin

    SEL <= S1 & S0;

    with SEL select
        Y <= A0 when "00",
             A1 when "01",
             A2 when "10",
             A3 when others;

end Behavioral;

