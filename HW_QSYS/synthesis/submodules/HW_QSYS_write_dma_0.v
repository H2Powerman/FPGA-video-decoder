// HW_QSYS_write_dma_0.v

// This file was auto-generated from altera_msgdma_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 15.1 185

`timescale 1 ps / 1 ps
module HW_QSYS_write_dma_0 (
		output wire [28:0]  mm_write_address,             //         mm_write.address
		output wire         mm_write_write,               //                 .write
		output wire [3:0]   mm_write_byteenable,          //                 .byteenable
		output wire [31:0]  mm_write_writedata,           //                 .writedata
		input  wire         mm_write_waitrequest,         //                 .waitrequest
		output wire [7:0]   mm_write_burstcount,          //                 .burstcount
		input  wire         clock_clk,                    //            clock.clk
		input  wire         reset_n_reset_n,              //          reset_n.reset_n
		input  wire [31:0]  csr_writedata,                //              csr.writedata
		input  wire         csr_write,                    //                 .write
		input  wire [3:0]   csr_byteenable,               //                 .byteenable
		output wire [31:0]  csr_readdata,                 //                 .readdata
		input  wire         csr_read,                     //                 .read
		input  wire [2:0]   csr_address,                  //                 .address
		input  wire         descriptor_slave_write,       // descriptor_slave.write
		output wire         descriptor_slave_waitrequest, //                 .waitrequest
		input  wire [127:0] descriptor_slave_writedata,   //                 .writedata
		input  wire [15:0]  descriptor_slave_byteenable,  //                 .byteenable
		output wire         csr_irq_irq,                  //          csr_irq.irq
		input  wire [31:0]  st_sink_data,                 //          st_sink.data
		input  wire         st_sink_valid,                //                 .valid
		output wire         st_sink_ready                 //                 .ready
	);

	wire          dispatcher_internal_write_command_source_valid; // dispatcher_internal:src_write_master_valid -> write_mstr_internal:snk_command_valid
	wire  [255:0] dispatcher_internal_write_command_source_data;  // dispatcher_internal:src_write_master_data -> write_mstr_internal:snk_command_data
	wire          dispatcher_internal_write_command_source_ready; // write_mstr_internal:snk_command_ready -> dispatcher_internal:src_write_master_ready
	wire          write_mstr_internal_response_source_valid;      // write_mstr_internal:src_response_valid -> dispatcher_internal:snk_write_master_valid
	wire  [255:0] write_mstr_internal_response_source_data;       // write_mstr_internal:src_response_data -> dispatcher_internal:snk_write_master_data
	wire          write_mstr_internal_response_source_ready;      // dispatcher_internal:snk_write_master_ready -> write_mstr_internal:src_response_ready

	dispatcher #(
		.MODE                        (2),
		.RESPONSE_PORT               (2),
		.DESCRIPTOR_INTERFACE        (0),
		.DESCRIPTOR_FIFO_DEPTH       (16),
		.ENHANCED_FEATURES           (0),
		.DESCRIPTOR_WIDTH            (128),
		.DESCRIPTOR_BYTEENABLE_WIDTH (16)
	) dispatcher_internal (
		.clk                     (clock_clk),                                                                                                                                                                                                                                                             //                clock.clk
		.reset                   (~reset_n_reset_n),                                                                                                                                                                                                                                                      //          clock_reset.reset
		.csr_writedata           (csr_writedata),                                                                                                                                                                                                                                                         //                  CSR.writedata
		.csr_write               (csr_write),                                                                                                                                                                                                                                                             //                     .write
		.csr_byteenable          (csr_byteenable),                                                                                                                                                                                                                                                        //                     .byteenable
		.csr_readdata            (csr_readdata),                                                                                                                                                                                                                                                          //                     .readdata
		.csr_read                (csr_read),                                                                                                                                                                                                                                                              //                     .read
		.csr_address             (csr_address),                                                                                                                                                                                                                                                           //                     .address
		.descriptor_write        (descriptor_slave_write),                                                                                                                                                                                                                                                //     Descriptor_Slave.write
		.descriptor_waitrequest  (descriptor_slave_waitrequest),                                                                                                                                                                                                                                          //                     .waitrequest
		.descriptor_writedata    (descriptor_slave_writedata),                                                                                                                                                                                                                                            //                     .writedata
		.descriptor_byteenable   (descriptor_slave_byteenable),                                                                                                                                                                                                                                           //                     .byteenable
		.src_write_master_data   (dispatcher_internal_write_command_source_data),                                                                                                                                                                                                                         // Write_Command_Source.data
		.src_write_master_valid  (dispatcher_internal_write_command_source_valid),                                                                                                                                                                                                                        //                     .valid
		.src_write_master_ready  (dispatcher_internal_write_command_source_ready),                                                                                                                                                                                                                        //                     .ready
		.snk_write_master_data   (write_mstr_internal_response_source_data),                                                                                                                                                                                                                              //  Write_Response_Sink.data
		.snk_write_master_valid  (write_mstr_internal_response_source_valid),                                                                                                                                                                                                                             //                     .valid
		.snk_write_master_ready  (write_mstr_internal_response_source_ready),                                                                                                                                                                                                                             //                     .ready
		.csr_irq                 (csr_irq_irq),                                                                                                                                                                                                                                                           //              csr_irq.irq
		.src_response_data       (),                                                                                                                                                                                                                                                                      //          (terminated)
		.src_response_valid      (),                                                                                                                                                                                                                                                                      //          (terminated)
		.src_response_ready      (1'b0),                                                                                                                                                                                                                                                                  //          (terminated)
		.snk_descriptor_data     (128'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000),                                                                                                                                 //          (terminated)
		.snk_descriptor_valid    (1'b0),                                                                                                                                                                                                                                                                  //          (terminated)
		.snk_descriptor_ready    (),                                                                                                                                                                                                                                                                      //          (terminated)
		.mm_response_waitrequest (),                                                                                                                                                                                                                                                                      //          (terminated)
		.mm_response_byteenable  (4'b0000),                                                                                                                                                                                                                                                               //          (terminated)
		.mm_response_address     (1'b0),                                                                                                                                                                                                                                                                  //          (terminated)
		.mm_response_readdata    (),                                                                                                                                                                                                                                                                      //          (terminated)
		.mm_response_read        (1'b0),                                                                                                                                                                                                                                                                  //          (terminated)
		.src_read_master_data    (),                                                                                                                                                                                                                                                                      //          (terminated)
		.src_read_master_valid   (),                                                                                                                                                                                                                                                                      //          (terminated)
		.src_read_master_ready   (1'b0),                                                                                                                                                                                                                                                                  //          (terminated)
		.snk_read_master_data    (256'b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000), //          (terminated)
		.snk_read_master_valid   (1'b0),                                                                                                                                                                                                                                                                  //          (terminated)
		.snk_read_master_ready   ()                                                                                                                                                                                                                                                                       //          (terminated)
	);

	write_master #(
		.DATA_WIDTH                     (32),
		.LENGTH_WIDTH                   (30),
		.FIFO_DEPTH                     (1024),
		.STRIDE_ENABLE                  (0),
		.BURST_ENABLE                   (1),
		.PACKET_ENABLE                  (0),
		.ERROR_ENABLE                   (0),
		.ERROR_WIDTH                    (8),
		.BYTE_ENABLE_WIDTH              (4),
		.BYTE_ENABLE_WIDTH_LOG2         (2),
		.ADDRESS_WIDTH                  (29),
		.FIFO_DEPTH_LOG2                (10),
		.SYMBOL_WIDTH                   (8),
		.NUMBER_OF_SYMBOLS              (4),
		.NUMBER_OF_SYMBOLS_LOG2         (2),
		.MAX_BURST_COUNT_WIDTH          (8),
		.UNALIGNED_ACCESSES_ENABLE      (0),
		.ONLY_FULL_ACCESS_ENABLE        (1),
		.BURST_WRAPPING_SUPPORT         (1),
		.PROGRAMMABLE_BURST_ENABLE      (0),
		.MAX_BURST_COUNT                (128),
		.FIFO_SPEED_OPTIMIZATION        (1),
		.STRIDE_WIDTH                   (1),
		.ACTUAL_BYTES_TRANSFERRED_WIDTH (32)
	) write_mstr_internal (
		.clk                (clock_clk),                                      //             Clock.clk
		.reset              (~reset_n_reset_n),                               //       Clock_reset.reset
		.master_address     (mm_write_address),                               // Data_Write_Master.address
		.master_write       (mm_write_write),                                 //                  .write
		.master_byteenable  (mm_write_byteenable),                            //                  .byteenable
		.master_writedata   (mm_write_writedata),                             //                  .writedata
		.master_waitrequest (mm_write_waitrequest),                           //                  .waitrequest
		.master_burstcount  (mm_write_burstcount),                            //                  .burstcount
		.snk_data           (st_sink_data),                                   //         Data_Sink.data
		.snk_valid          (st_sink_valid),                                  //                  .valid
		.snk_ready          (st_sink_ready),                                  //                  .ready
		.snk_command_data   (dispatcher_internal_write_command_source_data),  //      Command_Sink.data
		.snk_command_valid  (dispatcher_internal_write_command_source_valid), //                  .valid
		.snk_command_ready  (dispatcher_internal_write_command_source_ready), //                  .ready
		.src_response_data  (write_mstr_internal_response_source_data),       //   Response_Source.data
		.src_response_valid (write_mstr_internal_response_source_valid),      //                  .valid
		.src_response_ready (write_mstr_internal_response_source_ready),      //                  .ready
		.snk_sop            (1'b0),                                           //       (terminated)
		.snk_eop            (1'b0),                                           //       (terminated)
		.snk_empty          (2'b00),                                          //       (terminated)
		.snk_error          (8'b00000000)                                     //       (terminated)
	);

endmodule
