// baudrate : 115200, for a 100MHz clock
 
`define CLKS_PER_BIT 868
module UART_RX (
   input        clk_in,
   input        rx_in_input,
   output       rx_datav_op,
   output [7:0] rx_byte_op,
   output LED_
   );
    
  parameter idle         = 3'b000;
  parameter start_bit = 3'b001;
  parameter rx_data = 3'b010;
  parameter stop_bit  = 3'b011;
  parameter finished      = 3'b100;
   
//  reg           rx_data_extrab = 1'b1;
  reg           rx_data_reg   = 1'b1;
  reg led_ind = 1'b0;
  reg [14:0]     clk_count = 0;
  reg [2:0]     bit_index   = 0; 
  reg [7:0]     rx_byte_reg     = 0;
  reg           rx_datav_reg       = 0;
  reg [2:0]     state     = 0;
   
//  always @(posedge clk_in)
//    begin
//      rx_data_extrab <= rx_in_input;
//      rx_data_reg   <= rx_data_extrab;
//    end

  always @(posedge clk_in)
    begin
      rx_data_reg <= rx_in_input;
    end
   
  always @(posedge clk_in)
    begin
       
      case (state)
        idle :
          begin
            rx_datav_reg  <= 1'b0;
            clk_count <= 0;
            bit_index   <= 0;
             
            if (rx_data_reg == 1'b0)  // check for start bit
              state <= start_bit;
            else
              state <= idle;
          end
         

        start_bit :
          begin
            if (clk_count == (`CLKS_PER_BIT-1)/2)
              begin
                if (rx_data_reg == 1'b0) // verify the start bit
                  begin
                    clk_count <= 0;  
                    state     <= rx_data;
                  end
                else
                  state <= idle;
              end
            else
              begin
                clk_count <= clk_count + 1;
                state     <= start_bit;
              end
          end 
         
        rx_data :
          begin
            if (clk_count < `CLKS_PER_BIT-1)
              begin
                clk_count <= clk_count + 1;
                state     <= rx_data;
              end
            else
              begin
                clk_count          <= 0;
                rx_byte_reg[bit_index] <= rx_data_reg;
                 
                if (bit_index < 7)
                  begin
                    bit_index <= bit_index + 1;
                    state   <= rx_data;
                  end
                else
                  begin
                    bit_index <= 0;
                    state   <= stop_bit;
                  end
              end
          end 
     
     
        stop_bit :
          begin
            if (clk_count < `CLKS_PER_BIT-1)
              begin
                clk_count <= clk_count + 1;
                state     <= stop_bit;
              end
            else
              begin
                if(rx_byte_reg == 8'h1F) begin
                	led_ind <= 1'b1; // turn on led 
                end
                else if(rx_byte_reg == 8'h0F) led_ind <= 1'b0; // turn off led
                
                rx_datav_reg       <= 1'b1;
                clk_count <= 0;
                state     <= finished;
              end
          end 
     
        finished :
          begin
            state <= idle;
            rx_datav_reg   <= 1'b0; // wrap up
          end
         
         
        default :
          state <= idle;
         
      endcase
    end   
   
  assign rx_datav_op   = rx_datav_reg;
  assign rx_byte_op = rx_byte_reg;
  assign LED_ = led_ind;
   
endmodule // uart_rx
