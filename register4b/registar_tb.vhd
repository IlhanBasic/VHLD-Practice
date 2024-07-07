library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_ShiftRegister is
end tb_ShiftRegister;

architecture Behavioral of tb_ShiftRegister is
    -- Signals to connect to the DUT (Device Under Test)
    signal CLK       : std_logic := '0';
    signal RESET     : std_logic := '0';
    signal LOAD      : std_logic := '0';
    signal DATA_IN   : std_logic_vector(3 downto 0) := "0000";
    signal DATA_OUT  : std_logic_vector(3 downto 0);

    -- Component declaration for the DUT
    component ShiftRegister is
        Port ( CLK       : in  std_logic;
               RESET     : in  std_logic;
               LOAD      : in  std_logic;
               DATA_IN   : in  std_logic_vector(3 downto 0);
               DATA_OUT  : out std_logic_vector(3 downto 0));
    end component;
	 
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
    -- Instantiate the DUT
    uut: ShiftRegister
        port map (
            CLK       => CLK,
            RESET     => RESET,
            LOAD      => LOAD,
            DATA_IN   => DATA_IN,
            DATA_OUT  => DATA_OUT
        );

    -- Clock generation
    CLK_process :process
    begin
        while true loop
            CLK <= '0';
            wait for 10 ns;
            CLK <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Test process
    stim_proc: process
    begin
        -- Reset the shift register
        RESET <= '1';
        wait for 20 ns;
        RESET <= '0';
        wait for 20 ns;

        -- Test parallel load
        LOAD <= '1';
        DATA_IN <= "1010";
        wait for 20 ns;
        
        -- Test shift right
        LOAD <= '0';
        wait for 40 ns; -- Two clock cycles to observe the shifting

        -- Test another parallel load
        LOAD <= '1';
        DATA_IN <= "1100";
        wait for 20 ns;

        -- Test shift right
        LOAD <= '0';
        wait for 40 ns; -- Two clock cycles to observe the shifting

        -- Finish simulation
        wait;
    end process;

end Behavioral;
