/* 
* Author:
* Abdullah MEMİŞOĞLU
* Notlar:
*/
`timescale 1ns/1ps
module tb_lab4_q3_a_m ();
logic [31:0] a,b ;
logic [31:0] res ;
logic [3:0] op ;
logic v , z , n , c;
lab4_q3_a_m uut0(.a(a) , .b(b) , .op(op) , .res(res) ,.hata(hata) ,.v(v) ,.z(z) ,.n(n) ,.c(c) ) ;
initial begin
// verilen a – b – op değerlerine ait çıkışlar ve n – v – c – z değerleri lab4_p3_testvector.txt dosyasından alındı.
a = 32'b10011100110000110101000000111011 ; b = 32'b11100111000110111100001001001001 ; op = 4'b0000 ; #10 ;
// 10000011110111110001001010000100,1,0,0,1
a = 32'b01011001010000011000001010011010 ; b = 32'b00011011001011011001101000010011 ; op = 4'b0000 ; #10 ;
// 01110100011011110001110010101101,0,0,0,0
a = 32'b00000001010101110101110100100001 ; b = 32'b11110110110101111110111010000101 ; op = 4'b0000 ; #10 ;
// 11111000001011110100101110100110,1,0,0,0
a = 32'b11111000011100111011111101000001 ; b = 32'b01101001001000101001000010101001 ; op = 4'b1000 ; #10 ;
//10001111010100010010111010011000,1,0,0,1
a = 32'b00100011111111110110011101111101 ; b = 32'b01110100011111011000010001101110 ; op = 4'b1000 ; #10 ;
//10101111100000011110001100001111,1,0,0,0
a = 32'b00001101010001001101110011100110 ; b = 32'b10110011100000110101000110010011 ; op = 4'b1000 ; #10 ;
//01011001110000011000101101010011,0,0,0,0
a = 32'b10000100001100001001001111001110 ; b = 32'b00000000110101101110001111001111 ; op = 4'b0111 ; #10 ;
// 00000000000100001000001111001110,0,0,0,0
a = 32'b10011010000001101010101011101111 ; b = 32'b11111100001001001001100011100100 ; op = 4'b0111 ; #10 ;
// 10011000000001001000100011100100,1,0,0,0
a = 32'b11001001111101011111101010010100 ; b = 32'b00100000011001100010110101101010 ; op = 4'b0111 ; #10 ;
// 00000000011001000010100000000000,0,0,0,0
a = 32'b11110000011001011100011111100000 ; b = 32'b01100000011100010011100110111000 ; op = 4'b0110 ;
#10 ; //11110000011101011111111111111000,1,0,0,0
a = 32'b11011010111011111101111111110100 ; b = 32'b11101000101011110101001111101100 ; op = 4'b0110 ;
#10 ; //11111010111011111101111111111100,1,0,0,0
a = 32'b00100111100101000010101100110110 ; b = 32'b10110010000001110001010100111100 ; op = 4'b0110 ;
#10 ; //10110111100101110011111100111110,1,0,0,0
a = 32'b10010101100000101110000001111000 ; b = 32'b01010101001110000010000010110010 ; op = 4'b0100 ;
#10 ; //11000000101110101100000011001010,1,0,0,0
a = 32'b11100001011010011001001011011100 ; b = 32'b10001100100110110010100110100010 ; op = 4'b0100 ;
#10 ; //01101101111100101011101101111110,0,0,0,0
a = 32'b00110111011010110101101001110110 ; b = 32'b01011110011101111110111001011001 ; op = 4'b0100 ;
#10 ; //01101001000111001011010000101111,0,0,0,0
a = 32'b11110010000011000001100101111001 ; b = 32'b00101011000000111111010000100110 ; op = 4'b0001 ;
#10 ; //10000011000001100101111001000000,1,0,0,0
a = 32'b00000011110101111111100111000001 ; b = 32'b10001011110010101010000101010111 ; op = 4'b0001 ;
#10 ; //11100000100000000000000000000000,1,0,0,0
a = 32'b01001000101111010000010010010101 ; b = 32'b10010111000010010100000010111000 ; op = 4'b0001 ;
#10 ; //10010101000000000000000000000000,1,0,0,0
a = 32'b10101110101011110101110110111010 ; b = 32'b00101000110110010110101100101010 ; op = 4'b0101 ;
#10 ; //00000000001010111010101111010111,0,0,0,0
a = 32'b00101010001001100000101010100101 ; b = 32'b00110001100101111110000000010110 ; op = 4'b0101 ;
#10 ; //00000000000000000000000010101000,0,0,0,1
a = 32'b00100000010001010100010101101110 ; b = 32'b10010101011000110111101100011011 ; op = 4'b0101 ;
#10 ; //00000000000000000000000000000100,0,0,0,0
a = 32'b01011001101101110001010000001011 ; b = 32'b00100100100010010110001101100111 ; op = 4'b1101 ;
#10 ; //00000000101100110110111000101000,0,0,0,0
a = 32'b00000000110011111000110001000000 ; b = 32'b01011011110110001100100101101101 ; op = 4'b1101 ;
#10 ; //00000000000000000000011001111100,0,0,0,0
a = 32'b00011111100100000101011111101110 ; b = 32'b01101101011100001111010001110110 ; op = 4'b1101 ;
#10 ; //00000000000000000000000001111110,0,0,0,0
a = 32'b11100000001100111110100110101001 ; b = 32'b00001010100010101001100110010011 ; op = 4'b0011 ;
#10 ; //00000000000000000000000000000001,0,0,0,0
a = 32'b01101011101010011000100111100110 ; b = 32'b01011010011110110100110101001100 ; op = 4'b0011 ;
#10 ; //00000000000000000000000000000001,0,0,0,0
a = 32'b01100110010010111001111100111110 ; b = 32'b10110111001110111110010000011111 ; op = 4'b0011 ;
#10 ; //00000000000000000000000000000000,0,1,0,0
a = 32'b01110011111111100101111000011011 ; b = 32'b01000101101111111101011010001010 ; op = 4'b0010 ;
#10 ; //00000000000000000000000000000001,0,0,0,0
a = 32'b00000000100110000110011100100110 ; b = 32'b10000110111010101000100111111010 ; op = 4'b0010 ;
#10 ; //00000000000000000000000000000001,0,0,0,0
a = 32'b11010000111100110110000110100010 ; b = 32'b11100000101101011000001111001110 ; op = 4'b0010 ;
#10 ; //00000000000000000000000000000000,0,1,0,0
//HATALI SEÇİMLER
a = 32'b11010000111100110110000110100010 ; b = 32'b11100000101101011000001111001110 ; op = 4'b1111 ;
#10 ; //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
a = 32'b11100000001100111110100110101001 ; b = 32'b00001010100010101001100110010011 ; op = 4'b1111 ;
#10 ; //xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//Burada deney föyünde tabloda bulunan her bir durum incelendi ve doğruluğu test edildi.
//Ayrıca hatalı bir case girilerek tasarımın herhangi bir case girmediğinde latch oluşumu engellenmesi sağlandı
//hatalı seçimde lojik devrenin çıkışı xxxx… atandı.
$stop ;
end
endmodule


