// ============================================================================
//           
//  
//  
//                     web: https://protobrody.blogspot.com/
//                     email: fernando.madera@cinvestav.mx
//
// ============================================================================
//								Date:  Sunday 20/02/2022
// ============================================================================


`define ENABLE_CLOCK
`define ENABLE_KEY
`define ENABLE_LEDR

module debouncer_main(

      /* Enables CLOCK */
	`ifdef ENABLE_CLOCK
      input              CLOCK_50,
	`endif


      /* Enables KEY - 3.3V */
	`ifdef ENABLE_KEY
      input       [1:0]  KEY,
	`endif

      /* Enables LEDR - 3.3V */
	`ifdef ENABLE_LEDR
      output      [2:0]  LEDR
	`endif

);


//=======================================================
//  REG/WIRE declarations
//=======================================================

//=======================================================
//  Structural coding
//=======================================================

debouncer   u0(

      .clk(CLOCK_50),
      .PB(KEY),
      .PB_state(LEDR[0]),
      .PB_down(LEDR[1]),
      .PB_up(LEDR[2])

);


endmodule
