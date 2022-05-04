library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;



entity top_tb is
--  Port ( );
end top_tb;

architecture testbench of top_tb is


   component top
       port(
             CLK100MHZ      : in std_logic;
             BTNC           : in std_logic;
             reset          : in std_logic;
             SW             : in std_logic_vector (7 downto 0);
             LED            : out std_logic_vector (7 downto 0);

             rx             : in std_logic;
             tx             : out std_logic
           
            );
    end component;



    signal clk            : std_logic := '0';
    signal reset          : std_logic := '0';
    signal tx_start       : std_logic := '0';

    signal tx_data_in     : std_logic_vector (7 downto 0) := (others => '0');
    signal rx_data_out    : std_logic_vector (7 downto 0) := (others => '0');

    signal tx_serial_out  : std_logic := '1';
    signal rx_serial_in   : std_logic := '1';

    constant clock_cycle : time := 10 ns;    -- 1/clk (1 / 100 000 000)

begin

    uut: top
    port map(
            CLK100MHZ => clk,
            reset     => reset,
            BTNC      => tx_start,

            SW        => tx_data_in,
            LED       => rx_data_out,

            tx        => tx_serial_out,
            rx        => rx_serial_in
           
         );
    rx_serial_in <= tx_serial_out;


    clk_gen: process
    begin
        while now < 750000 ns loop -- 75 periods of 100MHz clock
            clk <= '0';
            wait for clock_cycle / 2;
            clk <= '1';
            wait for clock_cycle / 2;
        end loop;
        wait;
    end process clk_gen;


    signals_gen: process
    begin
        tx_data_in <= "01000001"; -- A
        tx_start <= '0';

        wait for 25 ns;
            tx_start <= '1';
        wait for 110 ns;    
            tx_start <= '0';
        wait for 205 ns;

        tx_data_in <= "00111001";  -- 9

        wait for 28 ns;
            tx_start <= '1';
        wait for 110 ns;
            tx_start <= '0';
        wait for 200 ns;

    end process signals_gen;


end testbench;
