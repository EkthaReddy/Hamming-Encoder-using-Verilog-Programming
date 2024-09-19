module Hamming_Encoder(
    input [3:0] data_in,  // 4-bit input data
    output [6:0] data_out // 7-bit output (including 3 parity bits)
);

    // Assign parity bits and data bits to data_out
    assign data_out[0] = data_in[0] ^ data_in[1] ^ data_in[3];  // P1 = D1 ⊕ D2 ⊕ D4
    assign data_out[1] = data_in[0] ^ data_in[2] ^ data_in[3];  // P2 = D1 ⊕ D3 ⊕ D4
    assign data_out[2] = data_in[0];                            // D3
    assign data_out[3] = data_in[1] ^ data_in[2] ^ data_in[3];  // P4 = D2 ⊕ D3 ⊕ D4
    assign data_out[4] = data_in[1];                            // D5
    assign data_out[5] = data_in[2];                            // D6
    assign data_out[6] = data_in[3];                            // D7

endmodule
