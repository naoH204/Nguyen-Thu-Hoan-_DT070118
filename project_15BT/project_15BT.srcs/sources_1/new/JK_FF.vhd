----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 11:14:51 PM
-- Design Name: 
-- Module Name: JK_FF - Behavioral
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

entity JK_FF is
    Port ( J : in STD_LOGIC;
           K : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end JK_FF;

architecture Behavioral of JK_FF is
    signal Q_tmp : std_logic :='0';
begin
    process(CLK)--phai co clk moi chay duoc
    begin
        if falling_edge(CLK) then--clk tich cuc theo suon am
            if J = '0' and K = '0' then
                Q_tmp <= Q_tmp;
            elsif J = '0' and K = '1' then
                Q_tmp <= '0';
            elsif J = '1' and K = '0' then
                Q_tmp <= '1';
            else
                Q_tmp <= not Q_tmp;
            end if;
        end if;
    end process;

Q <= Q_tmp;
Q_inv <= not Q_tmp;
end Behavioral;
