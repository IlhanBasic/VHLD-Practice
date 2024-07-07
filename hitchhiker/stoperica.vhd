library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Stopwatch is
    Port ( CLOCK : in STD_LOGIC;
           RESET : in STD_LOGIC;
           START : in STD_LOGIC;
           STOP : in STD_LOGIC;
           SMER : in STD_LOGIC;
           SECONDS : out INTEGER);
end Stopwatch;

architecture Behavioral of Stopwatch is
    signal counter : INTEGER := 0;
    signal counting : STD_LOGIC := '0';
    signal slow_clk : STD_LOGIC;  -- signal za usporeni clock

    component Clock_Divider is
        Port (
            CLK_IN : in  STD_LOGIC;
            CLK_OUT : out STD_LOGIC
        );
    end component;

begin

    -- Instanciranje Clock Divider komponente
    clock_divider_inst : Clock_Divider
    port map (
        CLK_IN => CLOCK,         -- Input clock
        CLK_OUT => slow_clk      -- Slowed down clock output
    );

    process(slow_clk, RESET)
    begin
        if RESET = '1' then
            counter <= 0;
            counting <= '0';
            SECONDS <= 0;
        elsif rising_edge(slow_clk) then
            if START = '1' then
                counter <= 0;
                SECONDS <= 0;
                counting <= '1';
            elsif STOP = '1' then
                counting <= '0';
            elsif STOP = '0' then
                counting <= '1';
            end if;
            
            if counting = '1' then
                if SMER = '1' then
                    counter <= counter + 1;
                else
                    counter <= counter - 1;
                end if;
                SECONDS <= counter;
            end if;
        end if;
    end process;
    
end Behavioral;
