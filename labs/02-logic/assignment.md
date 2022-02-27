# Lab 2: PAVOL REPA

### 2-bit comparator

1. Karnaugh maps for other two functions:

   Greater than:

   ![image](https://user-images.githubusercontent.com/99768688/155853084-e6c6a328-9060-46f9-b629-2fae8bdc0fec.png)

   Less than:

   ![image](https://user-images.githubusercontent.com/99768688/155853475-025c1d5e-0b12-4ab2-a812-e378a729057a.png)

2. Equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](images/comparator_min.png)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx32**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case ...
        s_b <= "0011"; -- Such as "0011" if ID = xxxx32
        s_a <= "0010"; -- Such as "0010" if ID = xxxx32
        wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0011, 0010 FAILED" severity error;
        
        -- Second test case ...
        s_b <= "0011"; -- Such as "0011" if ID = xxxx33
        s_a <= "0011"; -- Such as "0010" if ID = xxxx33
        wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0011, 0011 FAILED" severity error;
        
        -- Third test case ...
        s_b <= "0111"; -- Such as "0011" if ID = xxxx75
        s_a <= "0101"; -- Such as "0010" if ID = xxxx75
        wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0111, 0101 FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
```

2. Text console screenshot during your simulation, including reports.

   ![image](https://user-images.githubusercontent.com/99768688/155883460-83bae385-7308-41ad-85ea-88c70ca1f0bf.png)

3. Link to your public EDA Playground example:

   [https://www.edaplayground.com/x/9yRG](https://www.edaplayground.com/x/9yRG)
