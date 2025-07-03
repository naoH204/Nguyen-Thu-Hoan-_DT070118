----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 02:22:52 PM
-- Design Name: 
-- Module Name: tienb13_TFF - Behavioral
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


entity tienb13_TFF is
    Port ( CLK  : in STD_LOGIC;
           Q    : buffer std_logic_vector(3 downto 0);
           Q_inv: buffer std_logic_vector(3 downto 0);
           Y : out STD_LOGIC);
end tienb13_TFF;

architecture Behavioral of tienb13_TFF is
signal T: std_logic_vector (3 downto 0);

component T_FF is
Port (     T : in std_logic;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
begin
        T(0) <= '0';
        T(1) <= '1';
        T(2) <= Q(1);
        T(3) <= Q(2) and Q(1) and Q_inv(0);
    
    Y <= Q(3) and Q(2) and Q(1) and Q_inv(0);
    
    T0: T_FF port map(CLK=>CLK,T=>T(0),Q=>Q(0),Q_inv=>Q_inv(0));
    T1: T_FF port map(CLK=>CLK,T=>T(1),Q=>Q(1),Q_inv=>Q_inv(1));
    T2: T_FF port map(CLK=>CLK,T=>T(2),Q=>Q(2),Q_inv=>Q_inv(2));
    T3: T_FF port map(CLK=>CLK,T=>T(3),Q=>Q(3),Q_inv=>Q_inv(3));
end Behavioral;