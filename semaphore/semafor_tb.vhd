library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TrafficLightController_tb is
end TrafficLightController_tb;

architecture Behavioral of TrafficLightController_tb is

    -- Component declaration for the Unit Under Test (UUT)
    component TrafficLightController
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        Ga, Ya, Ra : out STD_LOGIC;
        Gb, Yb, Rb : out STD_LOGIC;
        Gw, Rw : out STD_LOGIC
    );
    end component;

    -- Signals to connect to UUT
    signal clk : STD_LOGIC := '0';
    signal rst : STD_LOGIC := '0';
    signal Ga, Ya, Ra : STD_LOGIC;
    signal Gb, Yb, Rb : STD_LOGIC;
    signal Gw, Rw : STD_LOGIC;

    constant clk_period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: TrafficLightController Port map (
        clk => clk,
        rst => rst,
        Ga => Ga,
        Ya => Ya,
        Ra => Ra,
        Gb => Gb,
        Yb => Yb,
        Rb => Rb,
        Gw => Gw,
        Rw => Rw
    );

    -- Clock process definitions
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize Inputs
        rst <= '1';
        wait for 100 ns;
        rst <= '0';

        -- Wait for the sequence to complete
        wait for 200 ns;

        -- Enter maintenance mode
        rst <= '1';
        wait for 100 ns;

        -- Exit maintenance mode
        rst <= '0';

        -- Wait for global reset
        wait;
    end process;

end Behavioral;
