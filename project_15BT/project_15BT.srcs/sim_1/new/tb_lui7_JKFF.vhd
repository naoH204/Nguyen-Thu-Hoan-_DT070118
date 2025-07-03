----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 12:19:15 AM
-- Design Name: 
-- Module Name: tb_lui7_JKFF - Behavioral
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

entity tb_lui7_JKFF is
end tb_lui7_JKFF;

architecture Behavioral of tb_lui7_JKFF is

    component lui7_JKFF
        Port ( CLK : in STD_LOGIC;
               Q0  : out STD_LOGIC;
               Q1  : out STD_LOGIC;
               Q2  : out STD_LOGIC);
    end component;

    signal CLK_tb, Q0_tb, Q1_tb, Q2_tb : STD_LOGIC := '0';

begin

    -- Instantiate DUT
    UUT: lui7_JKFF port map (CLK => CLK_tb, Q0  => Q0_tb, Q1  => Q1_tb,Q2  => Q2_tb);
    -- Clock generation process
    clk_process: process
    begin
        while now < 500 ns loop
            CLK_tb <= '0';
            wait for 5 ns;
            CLK_tb <= '1';
            wait for 5 ns;
        end loop;
        wait;
    end process;

end Behavioral;

