----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 02:20:04 PM
-- Design Name: 
-- Module Name: tienb11_JKFF - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tienb11_JKFF is
Port ( CLK : in std_logic;
           Q: buffer std_logic_vector(2 downto 0);
           Q_inv: buffer std_logic_vector(2 downto 0);
           Y: out std_logic);
end tienb11_JKFF;

architecture Behavioral of tienb11_JKFF is
component JK_FF is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
signal J,K: std_logic_vector(2 downto 0);

begin
    J(0) <= '1';
    K(0) <= '0';
    J(1) <= Q(0);
    K(1) <= '1';
    J(2) <= Q(1);
    K(2) <= Q(1);
    
Y <=  Q(2) and Q(1) and Q(0);
JK0: JK_FF port map (J=>J(0), K=>K(0), CLK=>CLK, Q=>Q(0), Q_inv=>Q_inv(0));
JK1: JK_FF port map (J=>J(1), K=>K(1), CLK=>CLK, Q=>Q(1), Q_inv=>Q_inv(1));
JK2: JK_FF port map (J=>J(2), K=>K(2), CLK=>CLK, Q=>Q(2), Q_inv=>Q_inv(2));

end Behavioral;
