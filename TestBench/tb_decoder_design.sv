/* tb_lab3_q_4.sv
*Hazırlayan:
* Abdullah MEMISOGLU
* ELM235 2020 Bahar Lab3 - Problem 4
Testbench
* SEÇICI TASARIM
*/
// Time Units and resolution of the simulation
`timescale 1ns/1ps
module tb_lab3_q_4 ();
logic [7:0] in; // all the inputs
logic [3:0] out; // all the outputs
lab3_q_4 my_dut(.in(in) , .out(out));
initial begin
in[7] = 1'b1 ; in[6:0] = $random ; #10 ; in[7] = 0;
in[7] = 1'b1 ; in[6:0] = $random ; #10 ; in[7] = 0;
in[6] = 1'b1 ; in[5:0] = $random ; #10 ; in[6] = 0;
in[6] = 1'b1 ; in[5:0] = $random ; #10 ; in[6] = 0;
in[5] = 1'b1 ; in[4:0] = $random ; #10 ; in[5] = 0;
in[5] = 1'b1 ; in[4:0] = $random ; #10 ; in[5] = 0;
in[4] = 1'b1 ; in[3:0] = $random ; #10 ; in[4] = 0;
in[4] = 1'b1 ; in[3:0] = $random ; #10 ; in[4] = 0;
in[3] = 1'b1 ; in[2:0] = $random ; #10 ; in[3] = 0;
in[3] = 1'b1 ; in[2:0] = $random ; #10 ; in[3] = 0;
in[2] = 1'b1 ; in[1:0] = $random ; #10 ; in[2] = 0;
in[2] = 1'b1 ; in[1:0] = $random ; #10 ; in[2] = 0;
in[1] = 1'b1 ; in[0] = $random ; #10 ; in[1] = 0;
in[1] = 1'b1 ; in[0] = $random ; #10 ; in[1] = 0;
in[0] = 1'b1 ; #10 ;
in[0] = 1'b1 ; #10 ;
$stop; // stop the simulation
end
endmodule
