onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ddr3_256_32 -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ddr3_256_32 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ddr3_256_32.udo}

run -all

endsim

quit -force
