
`define CLKS_PER_BIT 868 // baudrate : 115200, for a 100MHz clock
module UART_TX
  (
   input       clk_in,
   input       tx_datav_in,
   input [7:0] in_byte, 
   output      op_tx_active,
   output reg  op_bit,
   output      tx_done_op
   );
  
  parameter idle         = 3'b000;
  parameter start_bit_ = 3'b001;
  parameter send_data = 3'b010;
  parameter stop_bit_  = 3'b011;
  parameter finished      = 3'b100;
   
  reg [2:0]    state     = 0;
  reg [14:0]    clk_count = 0;
  reg [2:0]    bit_index   = 0;
  reg [7:0]    tx_data_r     = 0;
  reg          tx_done_r     = 0;
  reg          r_tx_active   = 0;
     
  always @(posedge clk_in)
    begin
       
      case (state)
        idle :
          begin
            op_bit   <= 1'b1;         
            tx_done_r     <= 1'b0;
            clk_count <= 0;
            bit_index   <= 0;
             
            if (tx_datav_in == 1'b1)
              begin
                r_tx_active <= 1'b1;
                tx_data_r   <= in_byte;
                state   <= start_bit_;
              end
            else
              state <= idle;
          end 
         
         
        start_bit_ :
          begin
            op_bit <= 1'b0; // sending start bit
             

            if (clk_count < `CLKS_PER_BIT-1)
              begin
                clk_count <= clk_count + 1;
                state     <= start_bit_;
              end
            else
              begin
                clk_count <= 0;
                state     <= send_data;
              end
          end 
         
         
        send_data :
          begin
            op_bit <= tx_data_r[bit_index]; // sending data
             
            if (clk_count < `CLKS_PER_BIT-1)
              begin
                clk_count <= clk_count + 1;
                state     <= send_data;
              end
            else
              begin
                clk_count <= 0;
                 
                if (bit_index < 7)
                  begin
                    bit_index <= bit_index + 1;
                    state   <= send_data;
                  end
                else
                  begin
                    bit_index <= 0;
                    state   <= stop_bit_;
                  end
              end
          end 
         
         
        stop_bit_ :
          begin
            op_bit <= 1'b1; // stop bit
             
            if (clk_count < `CLKS_PER_BIT-1)
              begin
                clk_count <= clk_count + 1;
                state     <= stop_bit_;
              end
            else
              begin
           //     tx_done_r     <= 1'b1;
                clk_count <= 0;
                state     <= finished;
                r_tx_active   <= 1'b0;
              end
          end 
         
        finished :
          begin
            tx_done_r <= 1'b1;
            
            state <= idle;
          end
         
         
        default :
          state <= idle;
         
      endcase
    end
 
  assign op_tx_active = r_tx_active;
  assign tx_done_op   = tx_done_r;
   
endmodule
