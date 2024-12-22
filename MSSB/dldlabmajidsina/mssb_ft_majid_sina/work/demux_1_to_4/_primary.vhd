library verilog;
use verilog.vl_types.all;
entity demux_1_to_4 is
    port(
        \in\            : in     vl_logic;
        sel             : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0)
    );
end demux_1_to_4;
