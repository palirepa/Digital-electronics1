library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------
-- Entity declaration for seven7-segment display decoder
------------------------------------------------------------
entity segment is
    port(
        hex_i : in  std_logic_vector(7 downto 0);
        seg_o : out std_logic_vector(6 downto 0)
    );
end entity segment;

------------------------------------------------------------
-- Architecture body for seven-segment display decoder
------------------------------------------------------------
architecture Behavioral of segment is
begin
    --------------------------------------------------------
    -- p_7seg_decoder:
    -- A combinational process for 7-segment display (Common
    -- Anode) decoder. Any time "hex_i" is changed, the process
    -- is "executed". Output pin seg_o(6) controls segment A,
    -- seg_o(5) segment B, etc.
    --       segment A
    --        | segment B
    --        |  | segment C
    --        +-+|  |   ...   segment G
    --          ||+-+          |
    --          |||            |
    -- seg_o = "0000001"-------+
    --------------------------------------------------------
    decoder : process(hex_i)
    begin
        case hex_i is
            when "00110000" =>
                seg_o <= "0000001"; -- 0
            when "00110001" =>
                seg_o <= "1001111"; -- 1
            when "00110010" =>
                seg_o <= "0010010"; -- 2
            when "00110011" =>
                seg_o <= "0000110";-- 3

            when "00110100" =>
                seg_o <= "1001100";-- 4

            when "00110101" =>
                seg_o <= "0100100";-- 5

            when "00110110" =>
                seg_o <= "0100000";-- 6

            when "00110111" =>
                seg_o <= "0001111";-- 7

            when "00111000" =>
                seg_o <= "0000000"; -- 8

            when "00111001" =>
                seg_o <= "0001000";-- 9

            when "01000001" =>
                seg_o <= "0001000";-- A

            when "01100010" =>
                seg_o <= "1100000";-- b

            when "01000011" =>
                seg_o <= "0110001";-- C

            when "01100100" =>
                seg_o <= "1000010";-- d

            when "01000101" =>
                seg_o <= "0110000"; -- E
            when "01000110" =>
                seg_o <= "0111000"; -- F
            when others     =>
                seg_o <="1111110";
        end case;
    end process decoder;

end architecture Behavioral;
