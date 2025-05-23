library IEEE;
use IEEE.std_logic_1164.ALL;

entity tb_Comparator4Bit is 
end tb_Comparator4Bit;

architecture test of tb_Comparator4Bit is 
component Comparator4Bit
    Port ( A : in std_logic_vector(3 downto 0);
           B : in std_logic_vector(3 downto 0);
           Greater : out STD_LOGIC; -- A>B
           Equal : out STD_LOGIC; --  A=B
           Less : out STD_LOGIC); -- A<B
end component;

    signal A : std_logic_vector(3 downto 0);
    signal B : std_logic_vector(3 downto 0);
    signal Greater : STD_LOGIC;
    signal Equal : STD_LOGIC; 
    signal Less : std_logic;
    
begin

    uut: Comparator4bit
        Port map
        (
        A=>A,
        B=> B,
        Greater => Greater,
        Equal => Equal,
        Less => Less);
        
    process
    begin
         A <= "0010"; B <= "0001"; -- Greater
         wait for 10 ns;
    
         A <= "1010"; B <= "1010"; -- Equal
         wait for 10 ns;
    
         A <= "0001"; B <= "1111"; -- Less
         wait for 10 ns;
    
         wait;
    end process;
end test;