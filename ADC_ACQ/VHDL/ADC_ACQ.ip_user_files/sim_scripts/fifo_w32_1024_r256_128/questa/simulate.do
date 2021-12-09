onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib fifo_w32_1024_r256_128_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_w32_1024_r256_128.udo}

run -all

quit -force
