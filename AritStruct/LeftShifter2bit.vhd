library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LeftShifter2bit is
    Port (
			EN: in std_logic;
        A : in  STD_LOGIC_VECTOR (1 downto 0);
        Y : out STD_LOGIC_VECTOR (1 downto 0)
    );
end LeftShifter2bit;

architecture Behavioral of LeftShifter2bit is
begin
    process(A, EN)
    begin
        -- Perform left shift
		  if(EN = '1') then
			  Y(1) <= A(0); -- MSB takes the value of the previous bit
			  Y(0) <= '0';  -- LSB is set to 0
			else
				Y <= A;
			end if;
    end process;
end Behavioral;

