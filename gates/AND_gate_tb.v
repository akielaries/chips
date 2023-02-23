module AND_gate_tb;

    // Inputs
    reg A;
    reg B;

    // Outputs
    wire Y;

    // Instantiate the unit under test (UUT)
    AND_gate uut (
        .Y(Y),
        .A(A),
        .B(B)
    );

    initial begin
        // Initialize inputs
        A = 0;
        B = 0;

        // Wait for 10 simulation ticks for inputs to settle
        #10;

        // Test case 1: A = 0, B = 0
        if (Y !== 0) $error("Test case 1 failed");

        // Test case 2: A = 0, B = 1
        B = 1;
        if (Y !== 0) $error("Test case 2 failed");

        // Test case 3: A = 1, B = 0
        A = 1;
        B = 0;
        if (Y !== 0) $error("Test case 3 failed");

        // Test case 4: A = 1, B = 1
        B = 1;
        if (Y !== 1) $error("Test case 4 failed");

        $display("All test cases passed");
        $finish;
    end
endmodule
