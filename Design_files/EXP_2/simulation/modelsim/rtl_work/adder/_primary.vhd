library verilog;
use verilog.vl_types.all;
entity adder is
    port(
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        cin             : in     vl_logic;
        sum             : out    vl_logic_vector(7 downto 0);
        cout            : out    vl_logic
    );
end adder;
