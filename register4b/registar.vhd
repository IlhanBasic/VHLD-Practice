library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ShiftRegister is
    Port ( CLK    : in  STD_LOGIC;
           RESET  : in  STD_LOGIC;
           LOAD   : in  STD_LOGIC;
           DATA_IN  : in  STD_LOGIC_VECTOR (3 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (3 downto 0));
end ShiftRegister;

architecture Behavioral of ShiftRegister is
    signal reg : STD_LOGIC_VECTOR (3 downto 0);
	 
	 signal slow_clk : std_logic;  -- signal za usporeni clock
	 component Clock_Divider is
        Port (
            CLK_IN : in  STD_LOGIC;
            CLK_OUT : out STD_LOGIC
        );
	end component;
	begin
	 clock_divider_inst : Clock_Divider
    port map (
        CLK_IN => CLK,            -- Input clock
        CLK_OUT => slow_clk       -- Slowed down clock output
    );
    process(slow_clk, RESET)
    begin
        if RESET = '1' then
            reg <= "0000";  -- Asinhrono resetovanje
        elsif rising_edge(CLK) then
            if LOAD = '1' then
                reg <= DATA_IN;  -- Paralelni upis
            else
                reg <= reg(3) & reg(3 downto 1);  -- Pomeranje udesno
            end if;
        end if;
    end process;
    DATA_OUT <= reg;
end Behavioral;
