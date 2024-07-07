library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_Stopwatch is
end tb_Stopwatch;

architecture Behavioral of tb_Stopwatch is

    -- Signals for the Unit Under Test (UUT)
    signal CLOCK : STD_LOGIC := '0';
    signal RESET : STD_LOGIC := '0';
    signal START : STD_LOGIC := '0';
    signal STOP : STD_LOGIC := '0';
    signal SMER : STD_LOGIC := '1';
    signal SECONDS : INTEGER;
    signal slow_clk : std_logic;  -- Signal for slowed down clock

    -- Component declaration for Clock Divider
    component Clock_Divider is
        Port (
            CLK_IN : in  STD_LOGIC;
            CLK_OUT : out STD_LOGIC
        );
    end component;

begin
    -- Instantiating Clock Divider component
    clock_divider_inst : Clock_Divider
    port map (
        CLK_IN => CLOCK,            -- Input clock
        CLK_OUT => slow_clk       -- Slowed down clock output
    );

    -- Instantiating the Unit Under Test (UUT)
    uut: entity work.Stopwatch
        port map (
            CLOCK => slow_clk,  -- Using slowed down clock for testing
            RESET => RESET,
            START => START,
            STOP => STOP,
            SMER => SMER,
            SECONDS => SECONDS
        );

    -- Stimulus process
    stim_proc : process
    begin
        -- Initialize inputs
        RESET <= '1';
        wait for 20 ns;
        RESET <= '0';
        wait for 20 ns;
        
        -- Start the stopwatch
        START <= '1';
        wait for 20 ns;
        START <= '0';
        wait for 20 ns;
        
        -- Let it run for some time
        wait for 200 ns;
        
        -- Stop the stopwatch
        STOP <= '1';
        wait for 40 ns;
        STOP <= '0';
        wait for 20 ns;
        
        -- Let it run again
        wait for 100 ns;
        
        -- Change the direction
        SMER <= '0';
        wait for 200 ns;
        
        -- Stop the stopwatch
        STOP <= '1';
        wait for 20 ns;
        STOP <= '0';
        wait for 20 ns;
        
        -- Let it run in reverse
        wait for 100 ns;
        
        -- Reset the stopwatch
        START <= '1';
        wait for 20 ns;
        START <= '0';
        wait for 20 ns;
        
        -- Finish the test
        wait;
    end process;

    -- Clock process definitions
    CLOCK_process : process
    begin
        while true loop
            CLOCK <= not CLOCK; -- Invert the clock
            wait for 10 ns;     -- Toggle every 10 ns (assuming 100 MHz clock)
        end loop;
    end process;

end Behavioral;
