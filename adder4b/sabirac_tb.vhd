library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_adder is
end tb_full_adder;

architecture Behavioral of tb_full_adder is
    component full_adder
        Port (
            A     : in  STD_LOGIC;
            B     : in  STD_LOGIC;
            C     : in  STD_LOGIC;
            SUM   : out STD_LOGIC_VECTOR (1 downto 0);
            CARRY : out STD_LOGIC
        );
    end component;

    signal A, B, C : STD_LOGIC;
    signal SUM : STD_LOGIC_VECTOR(1 downto 0);
    signal CARRY : STD_LOGIC;
begin
    uut: full_adder
        Port map (
            A => A,
            B => B,
            C => C,
            SUM => SUM,
            CARRY => CARRY
        );

    process
    begin
        -- Testiranje svih kombinacija ulaza
        A <= '0'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; wait for 10 ns;
        
        wait;
    end process;
end Behavioral;
