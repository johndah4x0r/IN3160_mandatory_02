library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture decoder_select of decoder is
begin
    process (sw) begin
        with sw select
            -- patched case for sw = "01"
            ld <=
                "1110" when "00",
                "1001" when "01",
                "1011" when "10",
                "0111" when "11",
                "0000" when others;
    end process;
end architecture decoder_select;
