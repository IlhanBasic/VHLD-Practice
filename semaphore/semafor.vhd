library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TrafficLightController is
    Port (
        clk : in STD_LOGIC;
        rst : in STD_LOGIC;
        Ga, Ya, Ra : out STD_LOGIC;
        Gb, Yb, Rb : out STD_LOGIC;
        Gw, Rw : out STD_LOGIC
    );
end TrafficLightController;

architecture Behavioral of TrafficLightController is

    type state_type is (s0, s1, s2, s3, s4, s5);
    signal state : state_type := s0;
    signal timer : integer := 0;
    signal maintenance : STD_LOGIC := '0';
    
    signal Ra_int, Rb_int, Rw_int : STD_LOGIC := '0';

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
    process (clk, rst)
    begin
        if rst = '1' then
            state <= s0;
            timer <= 0;
            maintenance <= '1';
        elsif rising_edge(clk) then
            if maintenance = '1' then
                Ra_int <= not Ra_int;
                Rb_int <= not Rb_int;
                Rw_int <= not Rw_int;
                if timer = 1 then
                    timer <= 0;
                else
                    timer <= timer + 1;
                end if;
            else
                case state is
                    when s0 => -- Ga, Rb, Rw
                        Ga <= '1'; Ya <= '0'; Ra_int <= '0';
                        Gb <= '0'; Yb <= '0'; Rb_int <= '1';
                        Gw <= '0'; Rw_int <= '1';
                        if timer = 3 then
                            state <= s1;
                            timer <= 0;
                        else
                            timer <= timer + 1;
                        end if;

                    when s1 => -- Ya, Rb, Rw
                        Ga <= '0'; Ya <= '1'; Ra_int <= '0';
                        Gb <= '0'; Yb <= '0'; Rb_int <= '1';
                        Gw <= '0'; Rw_int <= '1';
                        if timer = 2 then
                            state <= s2;
                            timer <= 0;
                        else
                            timer <= timer + 1;
                        end if;

                    when s2 => -- Ra, Gb, Rw
                        Ga <= '0'; Ya <= '0'; Ra_int <= '1';
                        Gb <= '1'; Yb <= '0'; Rb_int <= '0';
                        Gw <= '0'; Rw_int <= '1';
                        if timer = 3 then
                            state <= s3;
                            timer <= 0;
                        else
                            timer <= timer + 1;
                        end if;

                    when s3 => -- Ra, Yb, Rw
                        Ga <= '0'; Ya <= '0'; Ra_int <= '1';
                        Gb <= '0'; Yb <= '1'; Rb_int <= '0';
                        Gw <= '0'; Rw_int <= '1';
                        if timer = 1 then
                            state <= s4;
                            timer <= 0;
                        else
                            timer <= timer + 1;
                        end if;

                    when s4 => -- Ra, Rb, Gw
                        Ga <= '0'; Ya <= '0'; Ra_int <= '1';
                        Gb <= '0'; Yb <= '0'; Rb_int <= '1';
                        Gw <= '1'; Rw_int <= '0';
                        if timer = 2 then
                            state <= s5;
                            timer <= 0;
                        else
                            timer <= timer + 1;
                        end if;

                    when s5 => -- Ra, Rb, Rw
                        Ga <= '0'; Ya <= '0'; Ra_int <= '1';
                        Gb <= '0'; Yb <= '0'; Rb_int <= '1';
                        Gw <= '0'; Rw_int <= '1';
                        if timer = 6 then -- 8 - 2 seconds from s4
                            state <= s0;
                            timer <= 0;
                        else
                            timer <= timer + 1;
                        end if;
                end case;
            end if;
        end if;
    end process;

    -- Map internal signals to outputs
    Ra <= Ra_int;
    Rb <= Rb_int;
    Rw <= Rw_int;

end Behavioral;
