----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 12:23:50 PM
-- Design Name: 
-- Module Name: lui6_TFF - Behavioral
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

entity lui6_TFF is
Port ( CLK : in std_logic;
           Q: buffer std_logic_vector(2 downto 0);
           Q_inv: buffer std_logic_vector(2 downto 0);
           Y: out std_logic);
end lui6_TFF;

architecture Behavioral of lui6_TFF is
component T_FF is
Port (     T : in std_logic;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;

signal T: std_logic_vector (2 downto 0);
begin
T(0) <= '1';
T(1) <= (Q(1) and Q_inv(0)) or (Q(2) and Q_inv(0));
T(2) <= Q_inv(1) and Q_inv(0);

T0: T_FF port map(clk=>clk,T=>T(0),Q=>Q(0),Q_inv=>Q_inv(0));
T1: T_FF port map(clk=>clk,T=>T(1),Q=>Q(1),Q_inv=>Q_inv(1));
T2: T_FF port map(clk=>clk,T=>T(2),Q=>Q(2),Q_inv=>Q_inv(2));
Y <= not(Q(2) or Q(1) or Q(0));--y <= '1' when Q = "000" else '0';
end Behavioral;
