----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07/02/2025 09:05:42 AM
-- Design Name: 
-- Module Name: tb_tien7_TFF - Behavioral
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

entity tb_tien7_TFF is
--  Port ( );
end tb_tien7_TFF;

architecture Behavioral of tb_tien7_TFF is

    -- Component declaration
    component tien7_TFF is  
   Port ( clk : in STD_LOGIC;
           Q: buffer std_logic_vector (2 downto 0);
           Q_inv: buffer std_logic_vector (2 downto 0);
           y : out STD_LOGIC);
    end component;

signal CLK: std_logic := '0';
signal Q_inv: std_logic_vector(2 downto 0):="111";
signal Q: std_logic_vector(2 downto 0);
signal Y: std_logic;
constant CLK_PERIOD: time:=10ns;
begin
 UUT:tien7_TFF port map (CLK=>CLK,Q=>Q,Q_inv=>Q_inv,Y=>Y);
    clk_process: process--tao xung clk
    begin
        while true loop
            CLK<='0';
            wait for CLK_PERIOD /2;
            CLK<='1';
            wait for CLK_PERIOD /2;
        end loop;
    end process;
    -- Qu� tr�nh m� ph?ng ho?t ??ng
    stim_proc: process
    begin
        wait for CLK_PERIOD;
        for i in 0 to 9 loop
            wait for CLK_PERIOD;
        end loop;
        wait;
   end process;

end Behavioral;
