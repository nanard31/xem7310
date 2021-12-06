library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library unisim;
use unisim.vcomponents.all;

entity ADCs is
    port(
        
        --------------------------------------------------------------------------------------------
        -- Reset
        --------------------------------------------------------------------------------------------
        i_Rst_n      : in  std_logic;             -- General Reset, negative polarity
        --------------------------------------------------------------------------------------------
        -- Clocks
        --------------------------------------------------------------------------------------------
        i_Clk        : in  std_logic;             -- SPI Serial Clock reference
        --------------------------------------------------------------------------------------------
        -- ADC
        --------------------------------------------------------------------------------------------
        o_Ready      : out std_logic_vector(0 to 7);             -- Ready flag when data register is up to date
        o_Dout   : out std_logic_vector(16*8-1 downto 0); -- Output data register from conversion
        --------------------------------------------------------------------------------------------
        -- ADC SPI
        --------------------------------------------------------------------------------------------
        o_ADC_SCK_p    : out std_logic_vector(0 to 7);             -- SPI Serial Clock
        o_ADC_SCK_n    : out std_logic_vector(0 to 7);             -- SPI Serial Clock
        
        o_ADC_CNV_n    : out std_logic_vector(0 to 7);             -- SPI Convert Input, negative polarity
        
        i_ADC_SDO_p    : in  std_logic_vector(0 to 7);              -- SPI Slave Data Output (MISO)
        i_ADC_SDO_n    : in  std_logic_vector(0 to 7)              -- SPI Slave Data Output (MISO)     
           
    );
end entity ADCs;

architecture RTL of ADCs is
    
signal iADC_SCK    : std_logic_vector(0 to 7);             -- SPI Serial Clock
signal iADC_SDO    : std_logic_vector(0 to 7);              -- SPI Slave Data Output (MISO)
signal iADC_CNV_n  : std_logic_vector(0 to 7);         

signal iSCK  : std_logic_vector(0 to 7); 
signal iSDO  : std_logic_vector(0 to 7); 

begin

gen_ADCs:   for i in 0 to 0 generate

    ADC: entity work.ADCLTC2311_Driver
        port map(
            i_Rst_n     => i_Rst_n,
            i_Clk       => i_Clk,
            o_Ready     => o_Ready(i),
            o_Dout  => o_Dout(16*(i+1)-1 downto 16*i),
            o_ADC_SCK   => iADC_SCK(i),
            o_ADC_CNV_n => iADC_CNV_n(i),
            i_ADC_SDO   => iADC_SDO(i)
        );
        
        U1: OBUFDS
            port map (
            I => iSCK(i),
            O => o_ADC_SCK_p(i),
            OB => o_ADC_SCK_n(i)
            );
         
        U3: IBUFDS
            port map (
            I => i_ADC_SDO_p(i),
            IB => i_ADC_SDO_n(i),
            O => iSDO(i)
            );
    
end generate;

o_ADC_CNV_n <= iADC_CNV_n;

iSCK(0) <= not iADC_SCK(0);             -- DU 1
iSCK(1) <= iADC_SCK(1);
iADC_SDO(0) <= iSDO(0);
iADC_SDO(1) <= iSDO(1);

iSCK(2) <= not iADC_SCK(2);             -- DU 2
iSCK(3) <= iADC_SCK(3);
iADC_SDO(2) <= iSDO(2);
iADC_SDO(3) <= not iSDO(3);

iSCK(4) <= not iADC_SCK(4);             -- DU 3
iSCK(5) <= iADC_SCK(5);
iADC_SDO(4) <= iSDO(4);
iADC_SDO(5) <= iSDO(5);

iSCK(6) <= iADC_SCK(6);                 -- DU 4
iSCK(7) <= iADC_SCK(7);
iADC_SDO(6) <= iSDO(6);
iADC_SDO(7) <= not iSDO(7);


end architecture RTL;
