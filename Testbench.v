`timescale 1ns / 1ps

module hamming_encoder_7_4_tb;

    // Inputs
    reg [3:0] data_in;

    // Outputs
    wire [6:0] code_out;

    // Instantiate the Hamming encoder
    hamming_encoder_7_4 uut (
        .data_in(data_in),
        .code_out(code_out)
    );

    // Test stimulus
    initial begin
        // Initialize inputs
        $monitor("Time=%0t data_in=%b code_out=%b", $time, data_in, code_out);
        
        // Test Case 1: input = 0000
        data_in = 4'b0000;
        #10;

        // Test Case 2: input = 0001
        data_in = 4'b0001;
        #10;

        // Test Case 3: input = 0010
        data_in = 4'b0010;
        #10;

        // Test Case 4: input = 0101
        data_in = 4'b0101;
        #10;

        // Test Case 5: input = 1111
        data_in = 4'b1111;
        #10;

        // Test Case 6: input = 1001
        data_in = 4'b1001;
        #10;

        // Test Case 7: input = 0110
        data_in = 4'b0110;
        #10;

        // End simulation
        $finish;
    end

endmodule
