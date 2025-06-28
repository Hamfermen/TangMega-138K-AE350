module led (
    output    led_pl,
    input clk
);

reg [32:0] time_cnt;
reg led_reg;
always @(posedge clk) begin
    if(time_cnt < 1000000) begin
        time_cnt <= time_cnt + 'b1;
    end else begin
        time_cnt <= 'd0;

            led_reg <= ~led_reg;            
    end
end
assign led_pl = ~led_reg;
endmodule