library verilog;
use verilog.vl_types.all;
entity one_pulser is
    generic(
        A               : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        B               : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        C               : vl_logic_vector(0 to 1) := (Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        clkPB           : in     vl_logic;
        rst             : in     vl_logic;
        clk_en          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of A : constant is 1;
    attribute mti_svvh_generic_type of B : constant is 1;
    attribute mti_svvh_generic_type of C : constant is 1;
end one_pulser;
