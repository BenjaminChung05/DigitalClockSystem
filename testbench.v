`timescale 1ns / 1ps

module testbench;

    // Parameters for the testbench
    parameter CLOCK_PERIOD = 10; // Adjust as necessary

    // Inputs to the DUT
    reg A0;
    reg A1;
    reg A2;
    reg A3;
    reg A4;
    reg A5;
    reg A6;
    reg A7;
    reg A8;
    reg A9;
    reg A10;
    reg A11;
    reg A12;
    reg A13; 
    reg A14;
    reg A15;  
    reg A16;
    reg A17;
    reg A18;
    reg A19;
    reg A20;   
    reg A21;
    reg A22;
    reg A23;  

    // Outputs from the DUT
    wire D0;
    wire D1;
    wire D2;
    wire D3;
    wire Digit3;
    wire Digit4;

    // Instantiate the DUT
    TEAMBD_DESIGN_2 uut (
        .A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .A4(A4),
        .A5(A5),
        .A6(A6),
        .A7(A7),
        .A8(A8),
        .A9(A9),
        .A10(A10),
        .A11(A11),
        .A12(A12),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3),
        .Digit3(Digit3),
        .Digit4(Digit4)
    );

    // Clock generation
    reg clk;
    initial begin
        clk = 0;
        forever #(CLOCK_PERIOD / 2) clk = ~clk; // Toggle clock
    end

    // Test stimulus
    initial begin
        // Initialize inputs
        A0 = 0; A1 = 0; A2 = 0; A3 = 0;
        A4 = 0; A5 = 0; A6 = 0; A7 = 0;
        A8 = 0; A9 = 0; A10 = 0; A11 = 0;
        A12 = 0;

        // Apply test vectors
        // Example test case 1
        #20;
        A0 = 1; A1 = 0; A2 = 1; A3 = 0; 
        // Add more input variations and expected behavior checks...

        // Example test case 2
        #20;
        A0 = 0; A1 = 1; A2 = 0; A3 = 1;

        // Continue applying test cases...

        // Finish the simulation
        #100;
        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %0t | A0: %b A1: %b A2: %b A3: %b | D0: %b D1: %b D2: %b D3: %b | Digit3: %b Digit4: %b",
                 $time, A0, A1, A2, A3, D0, D1, D2, D3, Digit3, Digit4);
    end

endmodule
