/* Copyright 2020 Gregory Davill <greg.davill@gmail.com> */
`default_nettype none

/*
 *  Blink a LED on the OrangeCrab using verilog
 */

module top (
    input clk48,
    output rgb_led0_r,
    output rgb_led0_g,
    output rgb_led0_b
);
    // Create a 28 bit register
    reg [27:0] counter = 0;

    // Every positive edge increment register by 1
    always @(posedge clk48) begin
        counter <= counter + 1;
    end

    // Output inverted values of counter onto LEDs
    //assign rgb_led0_r = ~counter[24];
    assign rgb_led0_r = ~counter[0] | ~counter[1];
    assign rgb_led0_g = 1;
    assign rgb_led0_b = 1;


endmodule
