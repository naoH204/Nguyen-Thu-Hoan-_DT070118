----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 01:06:58 PM
-- Design Name: 
-- Module Name: lui5_TFF - Behavioral
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

entity lui5_TFF is
Port ( CLK : in std_logic;
           Q: buffer std_logic_vector(2 downto 0);
           Q_inv: buffer std_logic_vector(2 downto 0);
           Y: out std_logic);
end lui5_TFF;

architecture Behavioral of lui5_TFF is
component T_FF is
Port (     T : in std_logic;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end component;

signal T: std_logic_vector (2 downto 0);

begin
T(0) <= Q(2) or Q(1) or Q(0);
T(1) <= (Q(2) and not Q(1) and not Q(0)) or (not Q(2) and Q(1) and not Q(0));
T(2) <= (Q(2) and not Q(1) and not Q(0)) or (not Q(2) and not Q(1) and not Q(0));

T0: T_FF port map(clk=>clk,T=>T(0),Q=>Q(0),Q_inv=>Q_inv(0));
T1: T_FF port map(clk=>clk,T=>T(1),Q=>Q(1),Q_inv=>Q_inv(1));
T2: T_FF port map(clk=>clk,T=>T(2),Q=>Q(2),Q_inv=>Q_inv(2));
Y <= Q_inv(0) and Q_inv(1) and Q_inv(2);
end Behavioral;
