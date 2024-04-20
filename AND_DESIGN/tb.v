module tb_and_gate;

// Inputs
reg a, b;
// Output
wire y;

// Instantiate the AND gate
and_gate dut (
    .a(a),
    .b(b),
    .y(y)
);

// Dump signals
initial begin
    // Specify the dump file name
    $dumpfile("dump.vcd");
    // Select signals to dump (all signals in the testbench)
    $dumpvars(0, tb_and_gate);
end

// Stimulus
initial begin
    $display("a b | y");
    $display("--------");
    a = 0; b = 0; #10; $display("%b %b | %b", a, b, y);
    a = 0; b = 1; #10; $display("%b %b | %b", a, b, y);
    a = 1; b = 0; #10; $display("%b %b | %b", a, b, y);
    a = 1; b = 1; #10; $display("%b %b | %b", a, b, y);
    $finish;
end

endmodule
