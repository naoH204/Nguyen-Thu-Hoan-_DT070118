----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 08:46:16 AM
-- Design Name: 
-- Module Name: T_FF - Behavioral
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


entity T_FF is
    Port ( T : in STD_LOGIC;
           clk : in STD_LOGIC;
           Q : buffer STD_LOGIC;
           Q_inv : buffer STD_LOGIC);
end T_FF;

architecture Behavioral of T_FF is

signal Q_tmp: std_logic :='0';

begin
    process(clk)
        begin
            if falling_edge(clk) then
                if T='0' then
                    Q_tmp <= Q_tmp;
                else 
                    Q_tmp<= not Q_tmp;
                end if;
            end if;
    end process;
        Q<= Q_tmp;
        Q_inv<=not Q_tmp;
end Behavioral;
