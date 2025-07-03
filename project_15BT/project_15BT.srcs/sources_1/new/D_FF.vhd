----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 01:31:37 PM
-- Design Name: 
-- Module Name: D_FF - Behavioral
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
entity D_FF is
Port (     D : in STD_LOGIC;
           CLK : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end D_FF;

architecture Behavioral of D_FF is
signal Q_tmp : std_logic :='0';
begin
process(CLK)--phai co clk moi chay duoc
    begin
        if falling_edge(CLK) then--clk tich cuc theo suon am
            if D='0' then
                Q_tmp <= '0';
            else
                Q_tmp <= '1';
            end if;
        end if;
    end process;

Q <= Q_tmp;
Q_inv <= not Q_tmp;
end Behavioral;
