`include "config.v"

module stall_ctrl (
    input  wire clk,
    input  wire rst,
    input  wire rdy,

    input  wire if_stall,
    input  wire id_stall,
    input  wire mem_stall,

    output reg [`StallBus] stall_ctrler
);

always @(*) begin
    if(rst==`Enable) begin
        stall_ctrler=`NoStall;
    end else if(rdy==`Enable) begin
        if(mem_stall==`Enable) begin
            stall_ctrler<=`MemStall;
        end else if(id_stall==`Enable) begin
            stall_ctrler<=`IdStall;
        end else if(if_stall==`Enable) begin
            stall_ctrler<=`IfStall;
        end else begin
            stall_ctrler<=`NoStall;
        end
    end 
end

endmodule //stall_ctrl