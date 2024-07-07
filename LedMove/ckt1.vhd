library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ckt1 is
port(
	C_IN: in std_logic_vector(7 downto 0);
	BTN, CLK: in std_logic;
	C_OUT: out std_logic_vector(7 downto 0)
);
end ckt1;

architecture Behavioral of ckt1 is
signal slow_clk: std_logic;
signal state : integer range 0 to 7 := 0;
signal temp: std_logic_vector(7 downto 0) := "10000000";
signal flag: std_logic := '1';

component clock_divider is
port(
	CLK_IN: in std_logic;
	CLK_OUT: out std_logic
);
end component;

begin
	clk_divider: clock_divider port map(CLK_IN => CLK, CLK_OUT => slow_clk);
	process(slow_clk)
	begin
		if(rising_edge(slow_clk)) then
			if(BTN = '0') then
				if(state = 8) then
					state <= 0;
				end if;
				if(flag = '1') then
					C_OUT <= temp;
					state <= state + 1;
				else
					C_OUT <= (others => '0');
				end if;
				flag <= not flag;
			else
				if(flag ='0') then
				C_OUT <= "11111111"; 
				else
				C_OUT <= "00000000";
				end if;
			end if;
		end if;
	end process;

	with state select
	temp <= "00000001" when 0,
			"00000010" when 1,
			"00000100" when 2,
			"00001000" when 3,
			"00010000" when 4,
			"00100000" when 5,
			"01000000" when 6,
			"10000000" when 7,
			"11111111" when others;

end Behavioral;