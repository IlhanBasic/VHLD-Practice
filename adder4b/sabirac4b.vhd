library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder is
    Port (
        A     : in  STD_LOGIC;
        B     : in  STD_LOGIC;
        C     : in  STD_LOGIC;
        SUM   : out STD_LOGIC_VECTOR (1 downto 0);
        CARRY : out STD_LOGIC
    );
end full_adder;

architecture Behavioral of full_adder is
begin
    process(A, B, C)
        variable intermediate_sum : unsigned(1 downto 0);
    begin
        
        intermediate_sum := ("0" & A) + ("0" & B) + ("0" & C);
        
        -- SUM izlaz
        SUM <= std_logic_vector(intermediate_sum);

        -- Prenos izlaz (ako je suma veca od 1)
        if intermediate_sum > 1 then
            CARRY <= '1';
        else
            CARRY <= '0';
        end if;
    end process;
end Behavioral;
