----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 10:55:43 PM
-- Design Name: 
-- Module Name: nor_2dau - Behavioral
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

entity nor_2dau is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           F : out STD_LOGIC);
end nor_2dau;

architecture Behavioral of nor_2dau is
signal t1,t2,t3: std_logic;
signal notA,notB,notC: std_logic;
begin
notA <= A nor A;
notB <= B nor B;
notC <= C nor C;
t1<= notB nor notC;
t2<= notA nor t1;
t3<=B nor C;
F<=t2 nor t3;
end Behavioral;
