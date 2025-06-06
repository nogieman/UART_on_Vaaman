
//
// Verific Verilog Description of module UART_on_Vaaman
//

module UART_on_Vaaman (i_clk, data, f_tx_out, tx_done, LED_);
    input i_clk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(4)
    input data /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(5)
    output f_tx_out /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(6)
    output tx_done /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(7)
    output LED_ /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(8)
    
    wire [14:0]\UART_RX_inst/clk_count ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(21)
    
    wire valid_in;
    wire [7:0]out_data;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(12)
    wire [2:0]\UART_RX_inst/bit_index ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(22)
    wire [2:0]\UART_RX_inst/state ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(25)
    
    wire \UART_RX_inst/rx_data_reg ;
    wire [14:0]\UART_TX_inst/clk_count ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(20)
    wire [2:0]\UART_TX_inst/bit_index ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(21)
    wire [7:0]\UART_TX_inst/tx_data_r ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(22)
    wire [2:0]\UART_TX_inst/state ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(19)
    
    wire \UART_RX_inst/n543 , ceg_net15, \UART_RX_inst/n573 , ceg_net32, 
        \UART_RX_inst/n571 , \UART_RX_inst/equal_36/n15 , ceg_net16, \UART_RX_inst/n550 , 
        ceg_net27, \UART_RX_inst/n142 , \UART_RX_inst/n615 , \UART_RX_inst/n450 , 
        \UART_RX_inst/n540 , \i_clk~O , \UART_RX_inst/n457 , \UART_RX_inst/n460 , 
        \UART_RX_inst/n463 , \UART_RX_inst/n466 , \UART_RX_inst/n469 , 
        \UART_RX_inst/n472 , \UART_RX_inst/n475 , \UART_RX_inst/n478 , 
        \UART_RX_inst/n481 , \UART_RX_inst/n484 , \UART_RX_inst/n487 , 
        \UART_RX_inst/n490 , \UART_RX_inst/n493 , \UART_RX_inst/n496 , 
        \UART_RX_inst/n601 , \UART_RX_inst/n603 , \UART_RX_inst/n605 , 
        \UART_RX_inst/n607 , \UART_RX_inst/n609 , \UART_RX_inst/n611 , 
        \UART_RX_inst/n613 , \UART_RX_inst/n522 , \UART_RX_inst/n526 , 
        \UART_TX_inst/n500 , \UART_TX_inst/n517 , \UART_TX_inst/n362 , 
        \UART_TX_inst/n504 , ceg_net29, \UART_TX_inst/n572 , \UART_TX_inst/n496 , 
        \UART_TX_inst/n412 , \UART_TX_inst/n415 , \UART_TX_inst/n418 , 
        \UART_TX_inst/n421 , \UART_TX_inst/n424 , \UART_TX_inst/n427 , 
        \UART_TX_inst/n430 , \UART_TX_inst/n433 , \UART_TX_inst/n436 , 
        \UART_TX_inst/n455 , \UART_TX_inst/n459 , \UART_TX_inst/n404 , 
        \UART_TX_inst/LessThan_8/n20 , \UART_TX_inst/n556 , n125, n126, 
        n127, n128, n129, n130, n131, n132, n133, n134, n135, 
        n136, n137, n138, n139, n140, n141, n142, n143, n144, 
        n145, n146, n147, n148, n149, n150, n151, n152, n153, 
        n154, n155, n156, n157, n158, n159, n160, n161, n162, 
        n163, n164, n165, n166, n167, n168, n169;
    
    EFX_LUT4 LUT__194 (.I0(\UART_RX_inst/clk_count [13]), .I1(\UART_RX_inst/clk_count [14]), 
            .I2(\UART_RX_inst/clk_count [4]), .I3(\UART_RX_inst/clk_count [7]), 
            .O(n125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__194.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__195 (.I0(\UART_RX_inst/clk_count [10]), .I1(\UART_RX_inst/clk_count [11]), 
            .I2(\UART_RX_inst/clk_count [12]), .O(n126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__195.LUTMASK = 16'h0101;
    EFX_FF \UART_RX_inst/clk_count[0]~FF  (.D(\UART_RX_inst/n543 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[0]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \valid_in~FF  (.D(\UART_RX_inst/n573 ), .CE(ceg_net32), .CLK(\i_clk~O ), 
           .SR(1'b0), .Q(valid_in)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \valid_in~FF .CLK_POLARITY = 1'b1;
    defparam \valid_in~FF .CE_POLARITY = 1'b0;
    defparam \valid_in~FF .SR_POLARITY = 1'b1;
    defparam \valid_in~FF .D_POLARITY = 1'b1;
    defparam \valid_in~FF .SR_SYNC = 1'b1;
    defparam \valid_in~FF .SR_VALUE = 1'b0;
    defparam \valid_in~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[0]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n571 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[0]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[0]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[0]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[0]~FF .D_POLARITY = 1'b0;
    defparam \out_data[0]~FF .SR_SYNC = 1'b1;
    defparam \out_data[0]~FF .SR_VALUE = 1'b0;
    defparam \out_data[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \LED_~FF  (.D(\UART_RX_inst/equal_36/n15 ), .CE(ceg_net16), .CLK(\i_clk~O ), 
           .SR(1'b0), .Q(LED_)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \LED_~FF .CLK_POLARITY = 1'b1;
    defparam \LED_~FF .CE_POLARITY = 1'b0;
    defparam \LED_~FF .SR_POLARITY = 1'b1;
    defparam \LED_~FF .D_POLARITY = 1'b0;
    defparam \LED_~FF .SR_SYNC = 1'b1;
    defparam \LED_~FF .SR_VALUE = 1'b0;
    defparam \LED_~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/bit_index[0]~FF  (.D(\UART_RX_inst/n550 ), .CE(ceg_net27), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/bit_index [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/bit_index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[0]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/bit_index[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/bit_index[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/bit_index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/state[2]~FF  (.D(\UART_RX_inst/n142 ), .CE(1'b1), 
           .CLK(\i_clk~O ), .SR(\UART_RX_inst/n615 ), .Q(\UART_RX_inst/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[2]~FF .CE_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \UART_RX_inst/state[2]~FF .D_POLARITY = 1'b0;
    defparam \UART_RX_inst/state[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/state[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/state[1]~FF  (.D(\UART_RX_inst/n450 ), .CE(1'b1), 
           .CLK(\i_clk~O ), .SR(\UART_RX_inst/state [2]), .Q(\UART_RX_inst/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[1]~FF .CE_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/state[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/state[0]~FF  (.D(\UART_RX_inst/n540 ), .CE(1'b1), 
           .CLK(\i_clk~O ), .SR(\UART_RX_inst/state [2]), .Q(\UART_RX_inst/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[0]~FF .CE_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/state[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/state[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/rx_data_reg~FF  (.D(data), .CE(1'b1), .CLK(\i_clk~O ), 
           .SR(1'b0), .Q(\UART_RX_inst/rx_data_reg )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(36)
    defparam \UART_RX_inst/rx_data_reg~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/rx_data_reg~FF .CE_POLARITY = 1'b1;
    defparam \UART_RX_inst/rx_data_reg~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/rx_data_reg~FF .D_POLARITY = 1'b0;
    defparam \UART_RX_inst/rx_data_reg~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/rx_data_reg~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/rx_data_reg~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[1]~FF  (.D(\UART_RX_inst/n457 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[1]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[2]~FF  (.D(\UART_RX_inst/n460 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[2]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[2]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[3]~FF  (.D(\UART_RX_inst/n463 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[3]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[3]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[3]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[3]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[3]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[4]~FF  (.D(\UART_RX_inst/n466 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[4]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[4]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[4]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[4]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[4]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[5]~FF  (.D(\UART_RX_inst/n469 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[5]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[5]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[5]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[5]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[5]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[6]~FF  (.D(\UART_RX_inst/n472 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[6]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[6]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[6]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[6]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[6]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[7]~FF  (.D(\UART_RX_inst/n475 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[7]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[7]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[7]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[7]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[7]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[8]~FF  (.D(\UART_RX_inst/n478 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[8]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[8]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[8]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[8]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[8]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[9]~FF  (.D(\UART_RX_inst/n481 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[9]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[9]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[9]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[9]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[9]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[10]~FF  (.D(\UART_RX_inst/n484 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [10])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[10]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[10]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[10]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[10]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[10]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[11]~FF  (.D(\UART_RX_inst/n487 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [11])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[11]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[11]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[11]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[11]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[11]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[12]~FF  (.D(\UART_RX_inst/n490 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [12])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[12]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[12]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[12]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[12]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[12]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[13]~FF  (.D(\UART_RX_inst/n493 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [13])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[13]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[13]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[13]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[13]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[13]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/clk_count[14]~FF  (.D(\UART_RX_inst/n496 ), .CE(ceg_net15), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/clk_count [14])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/clk_count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[14]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/clk_count[14]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[14]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/clk_count[14]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/clk_count[14]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/clk_count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[1]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n601 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[1]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[1]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[1]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[1]~FF .D_POLARITY = 1'b0;
    defparam \out_data[1]~FF .SR_SYNC = 1'b1;
    defparam \out_data[1]~FF .SR_VALUE = 1'b0;
    defparam \out_data[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[2]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n603 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[2]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[2]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[2]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[2]~FF .D_POLARITY = 1'b0;
    defparam \out_data[2]~FF .SR_SYNC = 1'b1;
    defparam \out_data[2]~FF .SR_VALUE = 1'b0;
    defparam \out_data[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[3]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n605 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[3]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[3]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[3]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[3]~FF .D_POLARITY = 1'b0;
    defparam \out_data[3]~FF .SR_SYNC = 1'b1;
    defparam \out_data[3]~FF .SR_VALUE = 1'b0;
    defparam \out_data[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[4]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n607 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[4]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[4]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[4]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[4]~FF .D_POLARITY = 1'b0;
    defparam \out_data[4]~FF .SR_SYNC = 1'b1;
    defparam \out_data[4]~FF .SR_VALUE = 1'b0;
    defparam \out_data[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[5]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n609 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[5]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[5]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[5]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[5]~FF .D_POLARITY = 1'b0;
    defparam \out_data[5]~FF .SR_SYNC = 1'b1;
    defparam \out_data[5]~FF .SR_VALUE = 1'b0;
    defparam \out_data[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[6]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n611 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[6]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[6]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[6]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[6]~FF .D_POLARITY = 1'b0;
    defparam \out_data[6]~FF .SR_SYNC = 1'b1;
    defparam \out_data[6]~FF .SR_VALUE = 1'b0;
    defparam \out_data[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \out_data[7]~FF  (.D(\UART_RX_inst/rx_data_reg ), .CE(\UART_RX_inst/n613 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(out_data[7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \out_data[7]~FF .CLK_POLARITY = 1'b1;
    defparam \out_data[7]~FF .CE_POLARITY = 1'b1;
    defparam \out_data[7]~FF .SR_POLARITY = 1'b1;
    defparam \out_data[7]~FF .D_POLARITY = 1'b0;
    defparam \out_data[7]~FF .SR_SYNC = 1'b1;
    defparam \out_data[7]~FF .SR_VALUE = 1'b0;
    defparam \out_data[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/bit_index[1]~FF  (.D(\UART_RX_inst/n522 ), .CE(ceg_net27), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/bit_index [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/bit_index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[1]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/bit_index[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/bit_index[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/bit_index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_RX_inst/bit_index[2]~FF  (.D(\UART_RX_inst/n526 ), .CE(ceg_net27), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_RX_inst/bit_index [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(131)
    defparam \UART_RX_inst/bit_index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[2]~FF .CE_POLARITY = 1'b0;
    defparam \UART_RX_inst/bit_index[2]~FF .SR_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[2]~FF .D_POLARITY = 1'b1;
    defparam \UART_RX_inst/bit_index[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_RX_inst/bit_index[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_RX_inst/bit_index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[0]~FF  (.D(\UART_TX_inst/n500 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[0]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \tx_done~FF  (.D(\UART_TX_inst/state [2]), .CE(\UART_TX_inst/n517 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(tx_done)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \tx_done~FF .CLK_POLARITY = 1'b1;
    defparam \tx_done~FF .CE_POLARITY = 1'b0;
    defparam \tx_done~FF .SR_POLARITY = 1'b1;
    defparam \tx_done~FF .D_POLARITY = 1'b1;
    defparam \tx_done~FF .SR_SYNC = 1'b1;
    defparam \tx_done~FF .SR_VALUE = 1'b0;
    defparam \tx_done~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \f_tx_out~FF  (.D(\UART_TX_inst/n362 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(f_tx_out)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \f_tx_out~FF .CLK_POLARITY = 1'b1;
    defparam \f_tx_out~FF .CE_POLARITY = 1'b0;
    defparam \f_tx_out~FF .SR_POLARITY = 1'b1;
    defparam \f_tx_out~FF .D_POLARITY = 1'b1;
    defparam \f_tx_out~FF .SR_SYNC = 1'b1;
    defparam \f_tx_out~FF .SR_VALUE = 1'b0;
    defparam \f_tx_out~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/bit_index[0]~FF  (.D(\UART_TX_inst/n504 ), .CE(ceg_net29), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/bit_index [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/bit_index[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[0]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/bit_index[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/bit_index[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/bit_index[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[0]~FF  (.D(out_data[0]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[0]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/state[0]~FF  (.D(\UART_TX_inst/n496 ), .CE(1'b1), 
           .CLK(\i_clk~O ), .SR(\UART_TX_inst/state [2]), .Q(\UART_TX_inst/state [0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[0]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[0]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[0]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[0]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/state[0]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[1]~FF  (.D(\UART_TX_inst/n412 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[1]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[2]~FF  (.D(\UART_TX_inst/n415 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[2]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[2]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[2]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[3]~FF  (.D(\UART_TX_inst/n418 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[3]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[3]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[3]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[3]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[3]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[4]~FF  (.D(\UART_TX_inst/n421 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[4]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[4]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[4]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[4]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[4]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[5]~FF  (.D(\UART_TX_inst/n424 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[5]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[5]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[5]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[5]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[5]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[6]~FF  (.D(\UART_TX_inst/n427 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[6]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[6]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[6]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[6]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[6]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[7]~FF  (.D(\UART_TX_inst/n430 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[7]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[7]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[7]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[7]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[7]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[8]~FF  (.D(\UART_TX_inst/n433 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [8])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[8]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[8]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[8]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[8]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[8]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/clk_count[9]~FF  (.D(\UART_TX_inst/n436 ), .CE(\UART_TX_inst/state [2]), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/clk_count [9])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/clk_count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[9]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/clk_count[9]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[9]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/clk_count[9]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/clk_count[9]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/clk_count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/bit_index[1]~FF  (.D(\UART_TX_inst/n455 ), .CE(ceg_net29), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/bit_index [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/bit_index[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[1]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/bit_index[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/bit_index[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/bit_index[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/bit_index[2]~FF  (.D(\UART_TX_inst/n459 ), .CE(ceg_net29), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/bit_index [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b0, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/bit_index[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[2]~FF .CE_POLARITY = 1'b0;
    defparam \UART_TX_inst/bit_index[2]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[2]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/bit_index[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/bit_index[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/bit_index[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[1]~FF  (.D(out_data[1]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[1]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[2]~FF  (.D(out_data[2]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[2]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[2]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[2]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[3]~FF  (.D(out_data[3]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[3]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[3]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[3]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[3]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[3]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[3]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[4]~FF  (.D(out_data[4]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [4])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[4]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[4]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[4]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[4]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[4]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[4]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[5]~FF  (.D(out_data[5]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [5])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[5]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[5]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[5]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[5]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[5]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[5]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[6]~FF  (.D(out_data[6]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [6])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[6]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[6]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[6]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[6]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[6]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[6]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/tx_data_r[7]~FF  (.D(out_data[7]), .CE(\UART_TX_inst/n572 ), 
           .CLK(\i_clk~O ), .SR(1'b0), .Q(\UART_TX_inst/tx_data_r [7])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/tx_data_r[7]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[7]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[7]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[7]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/tx_data_r[7]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/tx_data_r[7]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/tx_data_r[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/state[1]~FF  (.D(\UART_TX_inst/n404 ), .CE(1'b1), 
           .CLK(\i_clk~O ), .SR(\UART_TX_inst/state [2]), .Q(\UART_TX_inst/state [1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[1]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[1]~FF .SR_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[1]~FF .D_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[1]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/state[1]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \UART_TX_inst/state[2]~FF  (.D(\UART_TX_inst/LessThan_8/n20 ), 
           .CE(1'b1), .CLK(\i_clk~O ), .SR(\UART_TX_inst/n556 ), .Q(\UART_TX_inst/state [2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(123)
    defparam \UART_TX_inst/state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[2]~FF .CE_POLARITY = 1'b1;
    defparam \UART_TX_inst/state[2]~FF .SR_POLARITY = 1'b0;
    defparam \UART_TX_inst/state[2]~FF .D_POLARITY = 1'b0;
    defparam \UART_TX_inst/state[2]~FF .SR_SYNC = 1'b1;
    defparam \UART_TX_inst/state[2]~FF .SR_VALUE = 1'b0;
    defparam \UART_TX_inst/state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__196 (.I0(\UART_RX_inst/clk_count [1]), .I1(\UART_RX_inst/clk_count [6]), 
            .I2(\UART_RX_inst/clk_count [9]), .I3(\UART_RX_inst/clk_count [8]), 
            .O(n127)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__196.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__197 (.I0(\UART_RX_inst/clk_count [2]), .I1(\UART_RX_inst/clk_count [3]), 
            .I2(\UART_RX_inst/clk_count [0]), .I3(\UART_RX_inst/clk_count [5]), 
            .O(n128)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__197.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__198 (.I0(n125), .I1(n126), .I2(n127), .I3(n128), .O(n129)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__198.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__199 (.I0(\UART_RX_inst/state [1]), .I1(\UART_RX_inst/state [0]), 
            .O(n130)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__199.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__200 (.I0(\UART_RX_inst/clk_count [2]), .I1(\UART_RX_inst/clk_count [3]), 
            .O(n131)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__200.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__201 (.I0(\UART_RX_inst/clk_count [1]), .I1(\UART_RX_inst/clk_count [0]), 
            .I2(\UART_RX_inst/clk_count [4]), .I3(\UART_RX_inst/clk_count [7]), 
            .O(n132)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0007 */ ;
    defparam LUT__201.LUTMASK = 16'h0007;
    EFX_LUT4 LUT__202 (.I0(\UART_RX_inst/clk_count [6]), .I1(\UART_RX_inst/clk_count [5]), 
            .I2(\UART_RX_inst/clk_count [7]), .O(n133)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0707 */ ;
    defparam LUT__202.LUTMASK = 16'h0707;
    EFX_LUT4 LUT__203 (.I0(\UART_RX_inst/clk_count [8]), .I1(\UART_RX_inst/clk_count [9]), 
            .O(n134)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__203.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__204 (.I0(n132), .I1(n131), .I2(n133), .I3(n134), .O(n135)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0700 */ ;
    defparam LUT__204.LUTMASK = 16'h0700;
    EFX_LUT4 LUT__205 (.I0(\UART_RX_inst/clk_count [13]), .I1(\UART_RX_inst/clk_count [14]), 
            .I2(n126), .I3(\UART_RX_inst/state [1]), .O(n136)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__205.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__206 (.I0(n135), .I1(n136), .I2(n129), .I3(n130), .O(n137)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb0bb */ ;
    defparam LUT__206.LUTMASK = 16'hb0bb;
    EFX_LUT4 LUT__207 (.I0(n137), .I1(\UART_RX_inst/clk_count [0]), .O(\UART_RX_inst/n543 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__207.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__208 (.I0(\UART_RX_inst/rx_data_reg ), .I1(n129), .I2(n130), 
            .I3(\UART_RX_inst/state [2]), .O(ceg_net15)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hff40 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(25)
    defparam LUT__208.LUTMASK = 16'hff40;
    EFX_LUT4 LUT__209 (.I0(\UART_RX_inst/state [2]), .I1(\UART_RX_inst/state [1]), 
            .O(\UART_RX_inst/n573 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__209.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__210 (.I0(n135), .I1(\UART_RX_inst/clk_count [13]), .I2(\UART_RX_inst/clk_count [14]), 
            .I3(n126), .O(\UART_RX_inst/n142 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(76)
    defparam LUT__210.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__211 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/state [2]), 
            .I2(\UART_RX_inst/state [1]), .I3(\UART_RX_inst/state [0]), 
            .O(ceg_net32)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heff0 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(25)
    defparam LUT__211.LUTMASK = 16'heff0;
    EFX_LUT4 LUT__212 (.I0(\UART_RX_inst/state [0]), .I1(\UART_RX_inst/bit_index [2]), 
            .I2(\UART_RX_inst/n573 ), .O(n138)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__212.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__213 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/bit_index [0]), 
            .I2(\UART_RX_inst/bit_index [1]), .I3(n138), .O(\UART_RX_inst/n571 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__213.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__214 (.I0(out_data[0]), .I1(out_data[1]), .I2(out_data[2]), 
            .I3(out_data[3]), .O(n139)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__214.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__215 (.I0(out_data[5]), .I1(out_data[6]), .I2(out_data[7]), 
            .I3(n139), .O(n140)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__215.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__216 (.I0(n140), .I1(out_data[4]), .O(\UART_RX_inst/equal_36/n15 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(109)
    defparam LUT__216.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__217 (.I0(\UART_RX_inst/n573 ), .I1(\UART_RX_inst/state [0]), 
            .O(\UART_RX_inst/n615 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__217.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__218 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/n615 ), 
            .I2(n140), .O(ceg_net16)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__218.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__219 (.I0(\UART_RX_inst/bit_index [0]), .I1(\UART_RX_inst/state [1]), 
            .O(\UART_RX_inst/n550 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(95)
    defparam LUT__219.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__220 (.I0(n136), .I1(n135), .I2(\UART_RX_inst/state [2]), 
            .I3(\UART_RX_inst/state [0]), .O(ceg_net27)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff2 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(25)
    defparam LUT__220.LUTMASK = 16'hfff2;
    EFX_LUT4 LUT__221 (.I0(n129), .I1(\UART_RX_inst/rx_data_reg ), .I2(\UART_RX_inst/state [1]), 
            .I3(\UART_RX_inst/state [0]), .O(n141)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf70f */ ;
    defparam LUT__221.LUTMASK = 16'hf70f;
    EFX_LUT4 LUT__222 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/state [1]), 
            .I2(n141), .O(\UART_RX_inst/n450 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8f8f */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__222.LUTMASK = 16'h8f8f;
    EFX_LUT4 LUT__223 (.I0(n129), .I1(\UART_RX_inst/rx_data_reg ), .I2(\UART_RX_inst/state [1]), 
            .I3(\UART_RX_inst/state [0]), .O(n142)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0af3 */ ;
    defparam LUT__223.LUTMASK = 16'h0af3;
    EFX_LUT4 LUT__224 (.I0(\UART_RX_inst/bit_index [0]), .I1(\UART_RX_inst/bit_index [1]), 
            .I2(\UART_RX_inst/bit_index [2]), .O(n143)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__224.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__225 (.I0(n143), .I1(\UART_RX_inst/n142 ), .I2(\UART_RX_inst/state [1]), 
            .I3(n142), .O(\UART_RX_inst/n540 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h20cf */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__225.LUTMASK = 16'h20cf;
    EFX_LUT4 LUT__226 (.I0(n137), .I1(\UART_RX_inst/clk_count [0]), .I2(\UART_RX_inst/clk_count [1]), 
            .O(\UART_RX_inst/n457 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__226.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__227 (.I0(\UART_RX_inst/clk_count [0]), .I1(\UART_RX_inst/clk_count [1]), 
            .O(n144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__227.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__228 (.I0(n137), .I1(n144), .I2(\UART_RX_inst/clk_count [2]), 
            .O(\UART_RX_inst/n460 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__228.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__229 (.I0(n144), .I1(\UART_RX_inst/clk_count [2]), .I2(n137), 
            .I3(\UART_RX_inst/clk_count [3]), .O(\UART_RX_inst/n463 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__229.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__230 (.I0(\UART_RX_inst/clk_count [0]), .I1(\UART_RX_inst/clk_count [1]), 
            .I2(\UART_RX_inst/clk_count [2]), .I3(\UART_RX_inst/clk_count [3]), 
            .O(n145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__230.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__231 (.I0(n137), .I1(n145), .I2(\UART_RX_inst/clk_count [4]), 
            .O(\UART_RX_inst/n466 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__231.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__232 (.I0(n145), .I1(\UART_RX_inst/clk_count [4]), .I2(n137), 
            .I3(\UART_RX_inst/clk_count [5]), .O(\UART_RX_inst/n469 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__232.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__233 (.I0(n145), .I1(\UART_RX_inst/clk_count [4]), .I2(\UART_RX_inst/clk_count [5]), 
            .I3(\UART_RX_inst/clk_count [6]), .O(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h807f */ ;
    defparam LUT__233.LUTMASK = 16'h807f;
    EFX_LUT4 LUT__234 (.I0(n137), .I1(n146), .O(\UART_RX_inst/n472 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__234.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__235 (.I0(n145), .I1(\UART_RX_inst/clk_count [4]), .I2(\UART_RX_inst/clk_count [5]), 
            .I3(\UART_RX_inst/clk_count [6]), .O(n147)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__235.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__236 (.I0(n137), .I1(n147), .I2(\UART_RX_inst/clk_count [7]), 
            .O(\UART_RX_inst/n475 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__236.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__237 (.I0(\UART_RX_inst/clk_count [4]), .I1(\UART_RX_inst/clk_count [5]), 
            .I2(\UART_RX_inst/clk_count [6]), .I3(\UART_RX_inst/clk_count [7]), 
            .O(n148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__237.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__238 (.I0(n145), .I1(n148), .O(n149)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__238.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__239 (.I0(n137), .I1(n149), .I2(\UART_RX_inst/clk_count [8]), 
            .O(\UART_RX_inst/n478 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__239.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__240 (.I0(n149), .I1(\UART_RX_inst/clk_count [8]), .I2(n137), 
            .I3(\UART_RX_inst/clk_count [9]), .O(\UART_RX_inst/n481 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__240.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__241 (.I0(n149), .I1(n134), .I2(\UART_RX_inst/clk_count [10]), 
            .I3(n130), .O(\UART_RX_inst/n484 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__241.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__242 (.I0(n134), .I1(\UART_RX_inst/clk_count [10]), .O(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__242.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__243 (.I0(n149), .I1(n150), .O(n151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__243.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__244 (.I0(n151), .I1(\UART_RX_inst/clk_count [11]), .I2(n130), 
            .O(\UART_RX_inst/n487 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__244.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__245 (.I0(n151), .I1(\UART_RX_inst/clk_count [11]), .I2(\UART_RX_inst/clk_count [12]), 
            .I3(n130), .O(\UART_RX_inst/n490 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__245.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__246 (.I0(n149), .I1(n150), .I2(\UART_RX_inst/clk_count [11]), 
            .I3(\UART_RX_inst/clk_count [12]), .O(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__246.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__247 (.I0(n152), .I1(\UART_RX_inst/clk_count [13]), .I2(n130), 
            .O(\UART_RX_inst/n493 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__247.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__248 (.I0(n152), .I1(\UART_RX_inst/clk_count [13]), .I2(\UART_RX_inst/clk_count [14]), 
            .I3(n130), .O(\UART_RX_inst/n496 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(130)
    defparam LUT__248.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__249 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/bit_index [1]), 
            .I2(\UART_RX_inst/bit_index [0]), .I3(n138), .O(\UART_RX_inst/n601 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__249.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__250 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/bit_index [0]), 
            .I2(n138), .I3(\UART_RX_inst/bit_index [1]), .O(\UART_RX_inst/n603 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__250.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__251 (.I0(\UART_RX_inst/n142 ), .I1(n138), .I2(\UART_RX_inst/bit_index [0]), 
            .I3(\UART_RX_inst/bit_index [1]), .O(\UART_RX_inst/n605 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__251.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__252 (.I0(\UART_RX_inst/state [0]), .I1(\UART_RX_inst/n573 ), 
            .I2(\UART_RX_inst/bit_index [2]), .O(n153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__252.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__253 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/bit_index [0]), 
            .I2(\UART_RX_inst/bit_index [1]), .I3(n153), .O(\UART_RX_inst/n607 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__253.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__254 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/bit_index [1]), 
            .I2(\UART_RX_inst/bit_index [0]), .I3(n153), .O(\UART_RX_inst/n609 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__254.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__255 (.I0(\UART_RX_inst/n142 ), .I1(\UART_RX_inst/bit_index [0]), 
            .I2(n153), .I3(\UART_RX_inst/bit_index [1]), .O(\UART_RX_inst/n611 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__255.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__256 (.I0(\UART_RX_inst/n142 ), .I1(n153), .I2(\UART_RX_inst/bit_index [0]), 
            .I3(\UART_RX_inst/bit_index [1]), .O(\UART_RX_inst/n613 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(16)
    defparam LUT__256.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__257 (.I0(\UART_RX_inst/bit_index [0]), .I1(\UART_RX_inst/bit_index [1]), 
            .I2(\UART_RX_inst/state [1]), .O(\UART_RX_inst/n522 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(95)
    defparam LUT__257.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__258 (.I0(\UART_RX_inst/bit_index [0]), .I1(\UART_RX_inst/bit_index [1]), 
            .I2(\UART_RX_inst/bit_index [2]), .I3(\UART_RX_inst/state [1]), 
            .O(\UART_RX_inst/n526 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_RX.v(95)
    defparam LUT__258.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__259 (.I0(\UART_TX_inst/clk_count [0]), .I1(\UART_TX_inst/clk_count [1]), 
            .O(n154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__259.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__260 (.I0(\UART_TX_inst/clk_count [2]), .I1(\UART_TX_inst/clk_count [3]), 
            .I2(\UART_TX_inst/clk_count [4]), .O(n155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0101 */ ;
    defparam LUT__260.LUTMASK = 16'h0101;
    EFX_LUT4 LUT__261 (.I0(\UART_TX_inst/clk_count [5]), .I1(\UART_TX_inst/clk_count [6]), 
            .O(n156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__261.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__262 (.I0(n154), .I1(n155), .I2(n156), .I3(\UART_TX_inst/clk_count [7]), 
            .O(n157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h004f */ ;
    defparam LUT__262.LUTMASK = 16'h004f;
    EFX_LUT4 LUT__263 (.I0(\UART_TX_inst/state [0]), .I1(\UART_TX_inst/state [1]), 
            .O(\UART_TX_inst/n517 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'heeee */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(25)
    defparam LUT__263.LUTMASK = 16'heeee;
    EFX_LUT4 LUT__264 (.I0(n157), .I1(\UART_TX_inst/clk_count [8]), .I2(\UART_TX_inst/clk_count [9]), 
            .I3(\UART_TX_inst/n517 ), .O(n158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbf00 */ ;
    defparam LUT__264.LUTMASK = 16'hbf00;
    EFX_LUT4 LUT__265 (.I0(\UART_TX_inst/clk_count [0]), .I1(n158), .O(\UART_TX_inst/n500 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__265.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__266 (.I0(\UART_TX_inst/tx_data_r [4]), .I1(\UART_TX_inst/tx_data_r [6]), 
            .I2(\UART_TX_inst/bit_index [1]), .O(n159)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__266.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__267 (.I0(\UART_TX_inst/tx_data_r [5]), .I1(\UART_TX_inst/tx_data_r [7]), 
            .I2(\UART_TX_inst/bit_index [1]), .O(n160)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__267.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__268 (.I0(n160), .I1(n159), .I2(\UART_TX_inst/bit_index [0]), 
            .I3(\UART_TX_inst/bit_index [2]), .O(n161)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5300 */ ;
    defparam LUT__268.LUTMASK = 16'h5300;
    EFX_LUT4 LUT__269 (.I0(\UART_TX_inst/tx_data_r [2]), .I1(\UART_TX_inst/tx_data_r [0]), 
            .I2(\UART_TX_inst/bit_index [1]), .O(n162)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam LUT__269.LUTMASK = 16'hacac;
    EFX_LUT4 LUT__270 (.I0(\UART_TX_inst/tx_data_r [1]), .I1(\UART_TX_inst/tx_data_r [3]), 
            .I2(\UART_TX_inst/bit_index [1]), .O(n163)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hcaca */ ;
    defparam LUT__270.LUTMASK = 16'hcaca;
    EFX_LUT4 LUT__271 (.I0(n163), .I1(n162), .I2(\UART_TX_inst/bit_index [2]), 
            .I3(\UART_TX_inst/bit_index [0]), .O(n164)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0503 */ ;
    defparam LUT__271.LUTMASK = 16'h0503;
    EFX_LUT4 LUT__272 (.I0(n161), .I1(n164), .I2(\UART_TX_inst/state [0]), 
            .I3(\UART_TX_inst/state [1]), .O(\UART_TX_inst/n362 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf10f */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(122)
    defparam LUT__272.LUTMASK = 16'hf10f;
    EFX_LUT4 LUT__273 (.I0(\UART_TX_inst/bit_index [0]), .I1(\UART_TX_inst/state [1]), 
            .O(\UART_TX_inst/n504 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(88)
    defparam LUT__273.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__274 (.I0(n157), .I1(\UART_TX_inst/clk_count [8]), .I2(\UART_TX_inst/clk_count [9]), 
            .O(\UART_TX_inst/LessThan_8/n20 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(53)
    defparam LUT__274.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__275 (.I0(\UART_TX_inst/state [1]), .I1(\UART_TX_inst/LessThan_8/n20 ), 
            .I2(\UART_TX_inst/state [0]), .I3(\UART_TX_inst/state [2]), 
            .O(ceg_net29)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hfff8 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(19)
    defparam LUT__275.LUTMASK = 16'hfff8;
    EFX_LUT4 LUT__276 (.I0(\UART_TX_inst/state [1]), .I1(valid_in), .O(n165)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__276.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__277 (.I0(\UART_TX_inst/state [0]), .I1(\UART_TX_inst/state [2]), 
            .I2(n165), .O(\UART_TX_inst/n572 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(25)
    defparam LUT__277.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__278 (.I0(\UART_TX_inst/bit_index [0]), .I1(\UART_TX_inst/bit_index [1]), 
            .I2(\UART_TX_inst/bit_index [2]), .I3(\UART_TX_inst/state [1]), 
            .O(n166)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__278.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__279 (.I0(n166), .I1(n165), .I2(\UART_TX_inst/LessThan_8/n20 ), 
            .I3(\UART_TX_inst/state [0]), .O(\UART_TX_inst/n496 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf0ce */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(122)
    defparam LUT__279.LUTMASK = 16'hf0ce;
    EFX_LUT4 LUT__280 (.I0(\UART_TX_inst/clk_count [0]), .I1(\UART_TX_inst/clk_count [1]), 
            .I2(n158), .O(\UART_TX_inst/n412 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__280.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__281 (.I0(n154), .I1(\UART_TX_inst/clk_count [2]), .I2(n158), 
            .O(\UART_TX_inst/n415 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__281.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__282 (.I0(n154), .I1(\UART_TX_inst/clk_count [2]), .I2(\UART_TX_inst/clk_count [3]), 
            .I3(n158), .O(\UART_TX_inst/n418 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__282.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__283 (.I0(n154), .I1(\UART_TX_inst/clk_count [2]), .I2(\UART_TX_inst/clk_count [3]), 
            .O(n167)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__283.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__284 (.I0(n167), .I1(\UART_TX_inst/clk_count [4]), .I2(n158), 
            .O(\UART_TX_inst/n421 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__284.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__285 (.I0(n154), .I1(\UART_TX_inst/clk_count [2]), .I2(\UART_TX_inst/clk_count [3]), 
            .I3(\UART_TX_inst/clk_count [4]), .O(n168)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__285.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__286 (.I0(n168), .I1(\UART_TX_inst/clk_count [5]), .I2(n158), 
            .O(\UART_TX_inst/n424 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__286.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__287 (.I0(n168), .I1(\UART_TX_inst/clk_count [5]), .I2(\UART_TX_inst/clk_count [6]), 
            .I3(n158), .O(\UART_TX_inst/n427 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__287.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__288 (.I0(n168), .I1(n156), .I2(\UART_TX_inst/clk_count [7]), 
            .I3(n158), .O(\UART_TX_inst/n430 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__288.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__289 (.I0(n168), .I1(n156), .I2(\UART_TX_inst/clk_count [7]), 
            .O(n169)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__289.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__290 (.I0(n169), .I1(\UART_TX_inst/clk_count [8]), .I2(n158), 
            .O(\UART_TX_inst/n433 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__290.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__291 (.I0(n169), .I1(\UART_TX_inst/clk_count [8]), .I2(\UART_TX_inst/clk_count [9]), 
            .I3(n158), .O(\UART_TX_inst/n436 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(62)
    defparam LUT__291.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__292 (.I0(\UART_TX_inst/bit_index [0]), .I1(\UART_TX_inst/bit_index [1]), 
            .I2(\UART_TX_inst/state [1]), .O(\UART_TX_inst/n455 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(88)
    defparam LUT__292.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__293 (.I0(\UART_TX_inst/bit_index [0]), .I1(\UART_TX_inst/bit_index [1]), 
            .I2(\UART_TX_inst/bit_index [2]), .I3(\UART_TX_inst/state [1]), 
            .O(\UART_TX_inst/n459 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(88)
    defparam LUT__293.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__294 (.I0(\UART_TX_inst/LessThan_8/n20 ), .I1(\UART_TX_inst/state [0]), 
            .I2(\UART_TX_inst/state [1]), .O(\UART_TX_inst/n404 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hb4b4 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/UART_TX.v(122)
    defparam LUT__294.LUTMASK = 16'hb4b4;
    EFX_LUT4 LUT__295 (.I0(\UART_TX_inst/state [2]), .I1(\UART_TX_inst/state [1]), 
            .I2(\UART_TX_inst/state [0]), .O(\UART_TX_inst/n556 )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;   // /media/lalli/D_Drive_Deb/Efinity_stuff/UART_on_Vaaman/Top_design.v(25)
    defparam LUT__295.LUTMASK = 16'h4040;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(i_clk), .O(\i_clk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_LUT4_b028a48e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_b028a48e_0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_b028a48e_1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_b028a48e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_b028a48e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF_b028a48e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT4_b028a48e_40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE_b028a48e_0
// module not written out since it is a black box. 
//

