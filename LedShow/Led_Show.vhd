library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity LED_Controller is
    Port (
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        inSTOP   : in  STD_LOGIC;
        inRL     : in  STD_LOGIC;
        inRR     : in  STD_LOGIC;
        inBLINK  : in  STD_LOGIC;
        oLED     : out STD_LOGIC_VECTOR (7 downto 0)
    );
end LED_Controller;

architecture Behavioral of LED_Controller is

    type state_type is (IDLE, ROTATE_LEFT, ROTATE_RIGHT, BLINK);
    signal current_state, next_state : state_type;
    signal led_reg : STD_LOGIC_VECTOR (7 downto 0);
    signal blink_toggle : STD_LOGIC;
	 
	 signal slow_clk : std_logic;  
	 component Clock_Divider is
        Port (
            CLK_IN : in  STD_LOGIC;
            CLK_OUT : out STD_LOGIC
        );
	 end component;

begin
	 clock_divider_inst : Clock_Divider
    port map (
        CLK_IN => clk,            -- Input clock
        CLK_OUT => slow_clk       -- Slowed down clock output
    );

    -- prelasci stanja
    process (slow_clk, rst)
    begin
        if rst = '1' then
            current_state <= IDLE;
            led_reg <= "00000001";
            blink_toggle <= '0';
        elsif rising_edge(slow_clk) then
            current_state <= next_state;
            if current_state = BLINK then
                if blink_toggle = '1' then
                    led_reg <= (others => '0');
                else
                    led_reg <= (others => '1');
                end if;
                blink_toggle <= not blink_toggle;
            elsif current_state = ROTATE_LEFT then
                led_reg <= led_reg(6 downto 0) & led_reg(7);
            elsif current_state = ROTATE_RIGHT then
                led_reg <= led_reg(0) & led_reg(7 downto 1);
            elsif current_state = IDLE then
                led_reg <= "00000001";
            end if;
        end if;
    end process;

    -- buduce stanje
    process (current_state, inSTOP, inRL, inRR, inBLINK)
    begin
        case current_state is
            when IDLE =>
                if inRL = '1' then
                    next_state <= ROTATE_LEFT;
                elsif inRR = '1' then
                    next_state <= ROTATE_RIGHT;
                elsif inBLINK = '1' then
                    next_state <= BLINK;
                else
                    next_state <= IDLE;
                end if;
            when ROTATE_LEFT =>
                if inSTOP = '1' then
                    next_state <= IDLE;
                else
                    next_state <= ROTATE_LEFT;
                end if;
            when ROTATE_RIGHT =>
                if inSTOP = '1' then
                    next_state <= IDLE;
                else
                    next_state <= ROTATE_RIGHT;
                end if;
            when BLINK =>
                if inSTOP = '1' then
                    next_state <= IDLE;
                else
                    next_state <= BLINK;
                end if;
        end case;
    end process;

    
    oLED <= led_reg;

end Behavioral;
