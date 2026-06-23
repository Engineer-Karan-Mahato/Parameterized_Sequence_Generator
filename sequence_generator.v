module sequence_generator #(
        parameter SEQ_LENGTH = 8,
        parameter [SEQ_LENGTH-1 : 0] SEQUENCE = 8'b10110111
    )(
        input clk, rst,
        output reg seq_out    
    );

        localparam CNT_WIDTH = (SEQ_LENGTH <= 1) ? 1 : $clog2(SEQ_LENGTH) ;

        reg [CNT_WIDTH-1 : 0] count;

        always @(posedge clk or negedge rst) begin
            if (!rst) begin
                count   <= 0;
                seq_out <= SEQUENCE[SEQ_LENGTH-1];
            end
            else begin
                seq_out <= SEQUENCE[SEQ_LENGTH-1-count];

                if (count == (SEQ_LENGTH-1))
                    count <= 0;
                else
                    count <= count + 1;
            end
        end
endmodule
