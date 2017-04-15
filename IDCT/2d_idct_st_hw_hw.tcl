# TCL File Generated by Component Editor 15.1
# Fri Mar 03 21:08:19 EST 2017
# DO NOT MODIFY


# 
# twod_idct_st_hw "twod_idct_st_hw" v1.0
#  2017.03.03.21:08:19
# 
# 

# 
# request TCL package from ACDS 15.1
# 
package require -exact qsys 15.1


# 
# module twod_idct_st_hw
# 
set_module_property DESCRIPTION ""
set_module_property NAME twod_idct_st_hw
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME twod_idct_st_hw
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL twod_idct_st_hw
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE true
add_fileset_file twod_idct_st_hw.vhd VHDL PATH twod_idct_st_hw.vhd TOP_LEVEL_FILE
add_fileset_file idct_1D.vhd VHDL PATH idct_1D.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock CLOCK clk Input 1


# 
# connection point dst
# 
add_interface dst avalon_streaming start
set_interface_property dst associatedClock clock
set_interface_property dst dataBitsPerSymbol 8
set_interface_property dst errorDescriptor ""
set_interface_property dst firstSymbolInHighOrderBits true
set_interface_property dst maxChannel 0
set_interface_property dst readyLatency 0
set_interface_property dst symbolsPerBeat 4
set_interface_property dst ENABLED true
set_interface_property dst EXPORT_OF ""
set_interface_property dst PORT_NAME_MAP ""
set_interface_property dst CMSIS_SVD_VARIABLES ""
set_interface_property dst SVD_ADDRESS_GROUP ""

add_interface_port dst DATAOUT data Output 32
add_interface_port dst dst_ready ready Input 1
add_interface_port dst dst_valid valid Output 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point src
# 
add_interface src avalon_streaming end
set_interface_property src associatedClock clock
set_interface_property src associatedReset reset
set_interface_property src dataBitsPerSymbol 8
set_interface_property src errorDescriptor ""
set_interface_property src firstSymbolInHighOrderBits true
set_interface_property src maxChannel 0
set_interface_property src readyLatency 0
set_interface_property src symbolsPerBeat 4
set_interface_property src ENABLED true
set_interface_property src EXPORT_OF ""
set_interface_property src PORT_NAME_MAP ""
set_interface_property src CMSIS_SVD_VARIABLES ""
set_interface_property src SVD_ADDRESS_GROUP ""

add_interface_port src DATAIN data Input 32
add_interface_port src src_ready ready Output 1
add_interface_port src src_valid valid Input 1
