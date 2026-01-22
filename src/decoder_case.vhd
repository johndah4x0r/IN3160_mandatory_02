library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

architecture decoder_case of decoder is
    signal c: std_ulogic_vector(3 downto 0);
begin
    -- connect signal 'c' to port 'ld'
    ld <= c;

    process (sw, ld) begin
        case sw is
            when "00" => 
                c <= "1110";
            when "01" => 
                c <= "1101";
            when "10" => 
                c <= "1011";
            when "11" => 
                c <= "0111";
            when others =>
                c <= "0000";
        end case;
    end process;
end architecture decoder_case;