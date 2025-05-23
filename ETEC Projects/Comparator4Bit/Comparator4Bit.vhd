library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
entity Comparator4Bit is
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           Greater : out STD_LOGIC; -- A>B
           Equal : out STD_LOGIC; --  A=B
           Less : out STD_LOGIC); -- A<B
end Comparator4Bit;

architecture Behavioral of Comparator4bit is

begin

    process (A, B)
    begin
        if A > B then
            Greater <= '1';
            Equal <= '0';
            Less <= '0';
        elsif A = B then
            Greater <= '0';
            Equal <= '1';
            Less <= '0';
        else 
            Greater <= '0';
            Equal <= '0';
            Less <= '1';
            
        end if;
     end process;
end Behavioral;
