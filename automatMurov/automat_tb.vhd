library ieee;
use ieee.std_logic_1164.all;

entity my_fsm4_tb is
end my_fsm4_tb;

architecture testbench of my_fsm4_tb is
  -- Constants
  constant CLK_PERIOD : time := 10 ns; -- Clock period
  
  -- Signals
  signal X, CLK, RESET : std_logic := '0'; -- Inputs
  signal Y : std_logic_vector(1 downto 0); -- Output
  signal Z1, Z2 : std_logic; -- Outputs

  -- Component instantiation
  component my_fsm4
    port (
      X, CLK, RESET : in std_logic;
      Y : out std_logic_vector(1 downto 0);
      Z1, Z2 : out std_logic
    );
  end component;

begin
  -- Clock process
  clk_process: process
  begin
    while now < 1000 ns loop -- Simulation time
      CLK <= '0';
      wait for CLK_PERIOD / 2;
      CLK <= '1';
      wait for CLK_PERIOD / 2;
    end loop;
    wait;
  end process;

  -- Stimulus process
  stimulus_process: process
  begin
    wait for 20 ns; -- Initial delay
    RESET <= '1'; -- Assert RESET
    wait for CLK_PERIOD; -- Wait one clock cycle
    RESET <= '0'; -- Deassert RESET

    -- Test scenarios
    wait for 100 ns;
    X <= '0';
    wait for CLK_PERIOD;
    X <= '1';
    wait for CLK_PERIOD * 2;
    X <= '0';
    wait for CLK_PERIOD;
    X <= '1';
    wait for CLK_PERIOD * 3;
    X <= '0';
    wait for CLK_PERIOD;
    X <= '1';

    wait;
  end process;

  -- Instantiate the DUT
  dut: my_fsm4 port map (
    X => X,
    CLK => CLK,
    RESET => RESET,
    Y => Y,
    Z1 => Z1,
    Z2 => Z2
  );

end testbench;
