`timescale 1ns/1ps

module decoder2to4_tb;

reg  [1:0] a;
reg        en;
wire [3:0] y;

// Instantiate the DUT
decoder2to4 dut (
    .a(a),
    .en(en),
    .y(y)
);

initial begin
   
    $dumpfile("decoder2to4.vcd");
    $dumpvars(0, decoder2to4_tb);


    $monitor("%4t\t%b\t%b\t%b", $time, en, a, y);

    // Test enable = 0
    en = 0; a = 2'b00; #10;
             a = 2'b01; #10;
             a = 2'b10; #10;
             a = 2'b11; #10;

    // Test enable = 1
    en = 1; a = 2'b00; #10;
             a = 2'b01; #10;
             a = 2'b10; #10;
             a = 2'b11; #10;

    #10;
    $finish;
end

endmodule