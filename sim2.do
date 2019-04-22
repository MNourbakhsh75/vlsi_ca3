vlog ks_tb.v
view structure
vsim -t 1ps -voptargs=+acc -L work ks_tb
do wave.do
run -all
