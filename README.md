#Opentitan Based downsized SoC

Work done on this project:

1. Downsized opentitan earlgrey to act as an inline secure root of trust.
2. Removed multiple blocks to make a lighter version without losing core security features
3. Validated on verilator.
4. Created a port for the Xilinx Virtex 7 (VC709) FPGA with a generated bitstream.
5. Clocks have been optimized for all the blocks for the 200MHz clock present on the vc709.
