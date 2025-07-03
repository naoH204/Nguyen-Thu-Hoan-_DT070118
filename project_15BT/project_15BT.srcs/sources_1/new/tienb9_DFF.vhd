----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 01:37:49 PM
-- Design Name: 
-- Module Name: tienb9_DFF - Behavioral
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


entity tienb9_DFF is
Port ( CLK : in std_logic;
           Q: buffer std_logic_vector(2 downto 0);
           Q_inv: buffer std_logic_vector(2 downto 0);
           Y: out std_logic);
end tienb9_DFF;

architecture Behavioral of tienb9_DFF is
component D_FF is
Port (     D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;
signal D: std_logic_vector(2 downto 0);

begin

    D(0)<= Q(1);
    D(1)<= Q_inv(1) or (Q_inv(2) and Q_inv(0));
    D(2)<= (Q(1) and Q(0)) or (Q(2) and Q(0));

Y <= '1' when Q = "110" else '0';
D0: D_FF port map(D=>D(0), CLK=>CLK, Q=>Q(0), Q_inv=>Q_inv(0));
D1: D_FF port map(D=>D(1), CLK=>CLK, Q=>Q(1), Q_inv=>Q_inv(1));
D2: D_FF port map(D=>D(2), CLK=>CLK, Q=>Q(2), Q_inv=>Q_inv(2));


end Behavioral;