library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LED_Controller_tb is
end LED_Controller_tb;

architecture Behavioral of LED_Controller_tb is
    -- Component declaration for the unit under test (UUT)
    component LED_Controller is
        Port (
            clk      : in  STD_LOGIC;
            rst      : in  STD_LOGIC;
            inSTOP   : in  STD_LOGIC;
            inRL     : in  STD_LOGIC;
            inRR     : in  STD_LOGIC;
            inBLINK  : in  STD_LOGIC;
            oLED     : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Signal declarations to connect to UUT
    signal clk      : STD_LOGIC := '0';
    signal rst      : STD_LOGIC := '0';
    signal inSTOP   : STD_LOGIC := '0';
    signal inRL     : STD_LOGIC := '0';
    signal inRR     : STD_LOGIC := '0';
    signal inBLINK  : STD_LOGIC := '0';
    signal oLED     : STD_LOGIC_VECTOR (7 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;
begin
    -- Instantiate the Unit Under Test (UUT)
    uut: LED_Controller
        Port map (
            clk      => clk,
            rst      => rst,
            inSTOP   => inSTOP,
            inRL     => inRL,
            inRR     => inRR,
            inBLINK  => inBLINK,
            oLED     => oLED
        );

    -- Clock generation process
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process clk_process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Initialize Inputs
        rst <= '1';
        inSTOP <= '0';
        inRL <= '0';
        inRR <= '0';
        inBLINK <= '0';
        wait for 20 ns;
        
        -- Apply reset
        rst <= '0';
        wait for 20 ns;

        -- Test ROTATE_LEFT
        inRL <= '1';
        wait for 100 ns;
        inRL <= '0';
        inSTOP <= '1';
        wait for 20 ns;
        inSTOP <= '0';
        wait for 20 ns;

        -- Test ROTATE_RIGHT
        inRR <= '1';
        wait for 100 ns;
        inRR <= '0';
        inSTOP <= '1';
        wait for 20 ns;
        inSTOP <= '0';
        wait for 20 ns;

        -- Test BLINK
        inBLINK <= '1';
        wait for 200 ns;
        inBLINK <= '0';
        inSTOP <= '1';
        wait for 20 ns;
        inSTOP <= '0';
        wait for 20 ns;

        -- Stop simulation
        wait;
    end process stim_proc;
end Behavioral;
