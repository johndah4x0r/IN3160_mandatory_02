library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture decoder_select of decoder is
    signal c: std_ulogic_vector(3 downto 0);
begin
    -- connect signal 'c' to port 'ld'
    ld <= c;

    process (sw, ld) begin
        with sw select
            c <=
                "1110" when "00",
                "1101" when "01",
                "1011" when "10",
                "0111" when "11",
                "0000" when others;
    end process;
end architecture decoder_select;