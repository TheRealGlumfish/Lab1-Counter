module counter #(
    parameter WIDTH = 8
)(
    input logic clk,
    input logic reset,
    input logic en,
    output logic [WIDTH-1:0] count
);

always_ff @ (posedge clk)
    if (reset) count <= {WIDTH{1'b0}};
    else count <= count + {{WIDTH-1{1'b0}}, en};

endmodule
