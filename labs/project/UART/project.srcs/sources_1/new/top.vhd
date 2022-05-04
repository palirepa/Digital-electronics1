library ieee;
use ieee.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity top is
    Port ( CLK100MHZ      : in  std_logic;
           BTNC           : in  std_logic; 
           reset          : in  std_logic;
           SW             : in  std_logic_vector (7 downto 0);
           LED            : out std_logic_vector (7 downto 0); 
           rx             : in  std_logic;
           tx             : out std_logic;
           
           CA          : out std_logic;
           CB          : out std_logic;
           CC          : out std_logic;
           CD          : out std_logic;
           CE          : out std_logic;
           CF          : out std_logic;
           CG          : out std_logic;
           AN          : out std_logic_vector(7 downto 0)
           );
           
end top;

architecture Behavioral of top is

    signal button_pressed : std_logic;

begin

    transmitter : entity work.UART_tx
        port map (
            clk            => CLK100MHZ,
            reset          => reset,
            tx_start       => button_pressed,
            tx_data_in     => SW,
            tx_data_out    => tx
        );
        
       
    receiver : entity work.UART_rx
        port map (
            clk            => CLK100MHZ,
            reset          => reset,
            rx_data_in     => rx,
            rx_data_out    => LED
        );

    button : entity work.button_debounce
        port map(
            clk            => CLK100MHZ,
            reset          => reset,
            button_in      => BTNC,
            button_out     => button_pressed
            );
     
    segment : entity work.segment 
        port map(
            hex_i      => SW,
            seg_o(6)   => CA,
            seg_o(5)   => CB,
            seg_o(4)   => CC,
            seg_o(3)   => CD,
            seg_o(2)   => CE,
            seg_o(1)   => CF,
            seg_o(0)   => CG
        );
        
        AN <= b"0000_0001";  
end Behavioral;
