
// Efinity Top-level template
// Version: 2025.1.110
// Date: 2025-06-05 10:35

// Copyright (C) 2013 - 2025 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as UART_DEMO.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  UART_DEMO
//     #4)  Insert design content.


module UART_DEMO
(
  (* syn_peri_port = 0 *) input Clk_in,
  (* syn_peri_port = 0 *) input data,
  (* syn_peri_port = 0 *) input i_clk,
  (* syn_peri_port = 0 *) output f_tx_out,
  (* syn_peri_port = 0 *) output LED_,
  (* syn_peri_port = 0 *) output tx_done
);


endmodule

