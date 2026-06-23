module sequence_generator_tb;
    parameter SEQ_LENGTH = 8;
    parameter [SEQ_LENGTH-1 : 0] SEQUENCE = 8'b10110111;

    reg clk, rst;
    wire seq_out;

    sequence_generator #(
            .SEQ_LENGTH(SEQ_LENGTH),
            .SEQUENCE(SEQUENCE)
        ) dut (
            .clk(clk),
            .rst(rst),
            .seq_out(seq_out)
        );

    always #5 clk = ~clk;

    initial begin
        clk = 0;
        rst = 0;
        #20;
        rst = 1;

        #100;
        $finish(2);
    end

    initial begin
        $dumpfile("sequence_generator_dump.vcd");
        $dumpvars(0, sequence_generator_tb);
    end

    initial begin
        $monitor("Time=%0t\t seq_out=%b", $time, seq_out);
    end
endmodule
