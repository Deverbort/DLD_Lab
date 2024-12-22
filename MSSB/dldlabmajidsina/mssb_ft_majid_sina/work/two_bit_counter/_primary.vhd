library verilog;
use verilog.vl_types.all;
entity two_bit_counter is
    port(
        clk             : in     vl_logic;
        clk_en          : in     vl_logic;
        rst             : in     vl_logic;
        count_en        : in     vl_logic;
        ld_en           : in     vl_logic;
        ld              : in     vl_logic_vector(3 downto 0);
        count           : out    vl_logic_vector(3 downto 0);
        cout            : out    vl_logic
    );
end two_bit_counter;
