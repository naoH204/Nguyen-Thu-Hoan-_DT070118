----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 10:56:15 PM
-- Design Name: 
-- Module Name: tb_nor_2dau - Behavioral
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

entity tb_nor_2dau is
end tb_nor_2dau;

architecture Behavioral of tb_nor_2dau is
    component nor_2dau
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               C : in STD_LOGIC;
               F : out STD_LOGIC);
    end component;
signal A: std_logic :='0';
signal B: std_logic :='0';
signal C: std_logic :='0';
signal F: std_logic ;

begin
nor2dau: nor_2dau port map (A=>A, B=>B, C=>C, F=>F);
tbnor2dau: process
    begin
        wait for 10 ns;
        A <= '0'; B <= '0'; C <= '0';
        wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1';
        wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0';
        wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1';
        wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0';
        wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1';
        wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0';
        wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1';
        wait for 10 ns;

    end process;

end Behavioral;

