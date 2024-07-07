library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Shift_Register is
    Port ( iCLK          : in  std_logic;
           iLOAD         : in  std_logic;
           iDATA         : in  std_logic_vector(7 downto 0);
           iSHL          : in  std_logic;
           iSHR          : in  std_logic;
           iARITH        : in  std_logic;
           iReset        : in  std_logic;
           oREG          : out std_logic_vector(7 downto 0));
end Shift_Register;

architecture Behavioral of Shift_Register is
    signal shift_reg : std_logic_vector(7 downto 0);
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
            CLK_IN => iCLK,            
            CLK_OUT => slow_clk        
        );
     
    process(slow_clk)
    begin
        if rising_edge(slow_clk) then
            if iLOAD = '1' then
                shift_reg <= iDATA;
            else
                if iSHL = '1' and iSHR = '0' then 
                    if iARITH = '1' then 
                        shift_reg <= shift_reg(6 downto 0) & shift_reg(7);
                    else 
                        shift_reg <= shift_reg(6 downto 0) & '0';
                    end if;
                elsif iSHR = '1' and iSHL = '0' then 
                    if iARITH = '1' then 
                        shift_reg <= shift_reg(0) & shift_reg(7 downto 1);
                    else
                        shift_reg <= '0' & shift_reg(7 downto 1);
                    end if;
                end if;
            end if;
        end if;
    end process;

    oREG <= shift_reg;
end Behavioral;
