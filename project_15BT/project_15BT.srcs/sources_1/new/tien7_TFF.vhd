----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 12:18:43 AM
-- Design Name: 
-- Module Name: tien7_TFF - Behavioral
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

entity tien7_TFF is
    Port ( clk : in STD_LOGIC;
           Q: buffer std_logic_vector (2 downto 0);
           Q_inv: buffer std_logic_vector (2 downto 0);
           y : out STD_LOGIC);
end tien7_TFF;

architecture Behavioral of tien7_TFF is
component T_FF is
Port (     T : in std_logic;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
signal T: std_logic_vector (2 downto 0);
begin
 T(0) <= Q_inv(1) or (Q(1) and Q(0)) or (Q_inv(2) and Q(1));
 T(1) <= Q(0) or (Q(2) and Q(1));
 T(2) <= (Q(1) and Q(0))or (Q(2) and Q(1));
T0: T_FF port map(clk=>clk,T=>T(0),Q=>Q(0),Q_inv=>Q_inv(0));
T1: T_FF port map(clk=>clk,T=>T(1),Q=>Q(1),Q_inv=>Q_inv(1));
T2: T_FF port map(clk=>clk,T=>T(2),Q=>Q(2),Q_inv=>Q_inv(2));
y <= '1' when Q = "000" else '0';
end Behavioral;
