----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 02:23:17 PM
-- Design Name: 
-- Module Name: tienb14_TFF - Behavioral
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
entity tienb14_TFF is
    Port ( CLK  : in STD_LOGIC;
           Q    : buffer std_logic_vector(2 downto 0);
           Q_inv: buffer std_logic_vector(2 downto 0);
           Y : out STD_LOGIC);
end tienb14_TFF;

architecture Behavioral of tienb14_TFF is
component T_FF is
Port (     T : in std_logic;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
signal T: std_logic_vector (2 downto 0);

begin           
        T(0) <= (not Q(2)) and (not Q(1)) and (not Q(0));
        T(1) <= Q(0);
        T(2) <= Q(1) and Q(0);
  
    T0: T_FF port map(CLK=>CLK,T=>T(0),Q=>Q(0),Q_inv=>Q_inv(0));
    T1: T_FF port map(CLK=>CLK,T=>T(1),Q=>Q(1),Q_inv=>Q_inv(1));
    T2: T_FF port map(CLK=>CLK,T=>T(2),Q=>Q(2),Q_inv=>Q_inv(2));


Y <= '1' when Q= "001" else '0';


end Behavioral;
