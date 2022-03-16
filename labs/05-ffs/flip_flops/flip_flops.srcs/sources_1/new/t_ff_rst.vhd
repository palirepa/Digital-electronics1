library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t_ff_rst is
    Port ( clk : in STD_LOGIC;
           rst : in STD_LOGIC;
           t : in STD_LOGIC;
           q : out STD_LOGIC;
           q_bar : out STD_LOGIC);
           signal s_q : STD_logic;
end t_ff_rst;
--------------------------------------------------------
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active synchro reset,
    -- rising-edge clk.
    -- q(n+1) = t./q(n) + /t.q(n)
    -- q(n+1) =  q(n) if t = 0 (no change)
    -- q(n+1) = /q(n) if t = 1 (inversion)
    --------------------------------------------------------

architecture Behavioral of t_ff_rst is
begin

 p_t_ff_rst : process(clk)
    begin
        if rising_edge(clk) then  -- Synchronous process

            if (rst = '1')then
                s_q <= '0';
            else
                if (t = '0')then
                    s_q <= s_q;
                else
                    s_q <= not t;        
                end if;               
            end if;
       end if; 
       
    end process p_t_ff_rst;
    
    q <= s_q;
    q_bar <= not s_q;
    
end architecture Behavioral;