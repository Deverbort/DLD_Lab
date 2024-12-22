library verilog;
use verilog.vl_types.all;
entity lsh_reg is
    generic(
        WIDTH           : vl_notype
    );
    port(
        clk             : in     vl_logic;
        clk_en          : in     vl_logic;
        rst             : in     vl_logic;
        sh_en           : in     vl_logic;
        serIn           : in     vl_logic;
        regOut          : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 5;
end lsh_reg;
