----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 12:18:43 AM
-- Design Name: 
-- Module Name: lui7_JKFF - Behavioral
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

entity lui7_JKFF is
    Port ( clk : in STD_LOGIC;
           Q: buffer std_logic_vector (2 downto 0);
           Q_inv: buffer std_logic_vector (2 downto 0);
           y : out STD_LOGIC);
end lui7_JKFF;

architecture Behavioral of lui7_JKFF is

signal T: std_logic_vector (2 downto 0);

component T_FF is
Port (     T : in std_logic;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
begin
    T(0)<= '1';
    T(1)<= Q(0) or (Q(2)and Q(1));
    T(2)<=(Q(1) and Q(0)) or (Q(2) and Q(1));
    y<= Q(2);

T0: T_FF port map(clk=>clk,T=>T(0),Q=>Q(0),Q_inv=>Q_inv(0));
T1: T_FF port map(clk=>clk,T=>T(1),Q=>Q(0),Q_inv=>Q_inv(0));
T2: T_FF port map(clk=>clk,T=>T(2),Q=>Q(0),Q_inv=>Q_inv(0));

end Behavioral;