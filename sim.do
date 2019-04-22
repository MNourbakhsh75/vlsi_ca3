 vlog bk_tb.v
view structure
vsim -t 1ps -voptargs=+acc -L work bk_tb
do wave.do
run -all
