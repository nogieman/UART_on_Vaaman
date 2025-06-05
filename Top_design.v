// baudrate : 115200, for a 100MHz clock

module Top_design (
input i_clk,
input data, 
output f_tx_out,
output tx_done,
output LED_
);

wire valid_in;
wire [7:0] out_data;


UART_RX 
 UART_RX_inst (
   .clk_in (i_clk),
   .rx_in_input (data),
   .rx_datav_op (valid_in),
   .rx_byte_op (out_data),
   .LED_(LED_)
   );
   
UART_TX
UART_TX_inst  (
   .clk_in (i_clk),
   .tx_datav_in (valid_in),
   .in_byte (out_data), 
   .op_tx_active (),
   .op_bit (f_tx_out),
   .tx_done_op (tx_done)
   );

endmodule
