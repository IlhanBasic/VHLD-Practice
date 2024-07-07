library ieee;
use ieee.std_logic_1164.all;

entity my_fsm4 is
  port (
    X, CLK, RESET : in std_logic;
    Y : out std_logic_vector(1 downto 0);
    Z1, Z2 : out std_logic
  );
end my_fsm4;

architecture fsm4 of my_fsm4 is
  type state_type is (ST0, ST1, ST2, ST3);
  signal PS, NS : state_type;
  
  signal slow_clk : std_logic;  
  
  component Clock_Divider is
    Port (
      CLK_IN : in  STD_LOGIC;
      CLK_OUT : out STD_LOGIC
    );
  end component;
begin
  -- Clock Divider instantiation
  clock_divider_inst : Clock_Divider
    port map (
      CLK_IN => CLK,            
      CLK_OUT => slow_clk     
    );

  sync_proc: process(slow_clk, NS, RESET)
  begin
    if (RESET = '1') then 
      PS <= ST0;
    elsif (rising_edge(slow_clk)) then 
      PS <= NS;
    end if;
  end process sync_proc;
  
  comb_proc: process(PS, X)
  begin
    Z1 <= '0'; 
    Z2 <= '0'; 
    
    case PS is
      when ST0 => 
        Z1 <= '1'; 
        if (X = '0') then 
          NS <= ST1; 
          Z2 <= '0';
        else 
          NS <= ST0; 
          Z2 <= '1';
        end if;
      when ST1 => 
        Z1 <= '1'; 
        if (X = '0') then 
          NS <= ST2; 
          Z2 <= '0';
        else 
          NS <= ST1; 
          Z2 <= '1';
        end if;
      when ST2 => 
        Z1 <= '0'; 
        if (X = '0') then 
          NS <= ST3; 
          Z2 <= '0';
        else 
          NS <= ST2; 
          Z2 <= '1';
        end if;
      when ST3 => 
        Z1 <= '1'; 
        if (X = '0') then 
          NS <= ST0; 
          Z2 <= '0';
        else 
          NS <= ST3; 
          Z2 <= '1';
        end if;
      when others => 
        Z1 <= '1'; 
        Z2 <= '0'; 
        NS <= ST0;
    end case;
  end process comb_proc;

  with PS select
    Y <= "00" when ST0,
         "01" when ST1,
         "10" when ST2,
         "11" when ST3,
         "00" when others;
end fsm4;
