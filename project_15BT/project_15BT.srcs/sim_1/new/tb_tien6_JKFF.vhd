----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/01/2025 11:19:18 PM
-- Design Name: 
-- Module Name: tb_tien6_JKFF - Behavioral
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

entity tb_tien6_JKFF is
end tb_tien6_JKFF;

architecture Behavioral of tb_tien6_JKFF is

    -- Component declaration
    component tien6_JKFF is  
    Port ( CLK : in STD_LOGIC;
           Q : buffer std_logic_vector(2 downto 0);
           Q_inv : buffer std_logic_vector(2 downto 0);
           Y : out STD_LOGIC);
    end component;

signal CLK: std_logic := '0';
signal Q_inv: std_logic_vector(2 downto 0):="111";
signal Q: std_logic_vector(2 downto 0);
signal Y: std_logic;
constant CLK_PERIOD: time:=10ns;

begin

--Ket noi UUT   
    UUT:tien6_JKFF port map (CLK=>CLK,Q=>Q,Q_inv=>Q_inv,Y=>Y);
    clk_process: process--tao xung clk
    begin
        while true loop
            CLK<='0';
            wait for CLK_PERIOD /2;
            CLK<='1';
            wait for CLK_PERIOD /2;
        end loop;
    end process;
    -- Quá trình mô ph?ng ho?t ??ng
    stim_proc: process
    begin
        wait for CLK_PERIOD;
        for i in 0 to 9 loop
            wait for CLK_PERIOD;
        end loop;
        wait;
   end process; 

end Behavioral;
