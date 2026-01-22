library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity decoder is
    port (
        sw: in std_ulogic_vector(1 downto 0);
        ld: out std_ulogic_vector(3 downto 0)
    );
end entity decoder;

architecture decoder_case of decoder is
begin
    process (sw) begin
        case sw is
            when "00" => 
                ld <= "1110";
            when "01" => 
                ld <= "1101";
            when "10" => 
                ld <= "1011";
            when "11" => 
                ld <= "0111";
            when others =>
                ld <= "0000";
        end case;
    end process;
end architecture decoder_case;
