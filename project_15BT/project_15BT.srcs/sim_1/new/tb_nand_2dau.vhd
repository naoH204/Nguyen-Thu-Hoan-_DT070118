----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 08:51:36 PM
-- Design Name: 
-- Module Name: tb_nand_2dau - Behavioral
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

entity tb_nand_2dau is
--  Port ( );
end tb_nand_2dau;

architecture Behavioral of tb_nand_2dau is
component nand_2dau is
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
nand2dau: nand_2dau port map (A=>A, B=>B, C=>C, F=>F);
tb_nand_2dau: process
begin
    wait for 10ns;
    A <='0'; B<='0'; C<='0'; 
     wait for 10ns;
     A <='0'; B<='0'; C<='1';
     wait for 10ns;
     A<='0'; B<='1'; C<='0';
     wait for 10ns;
     A<='0'; B<='1';  C<='1';
     wait for 10ns;
     A <='1'; B<='0';  C<='0'; 
     wait for 10ns;
     A <='1'; B<='0';  C<='1'; 
     wait for 10ns;
     A <='1'; B<='1';  C<='0'; 
     wait for 10ns;
     A <='1'; B<='1';  C<='1'; 
     wait for 10ns;
end process; 

end Behavioral;