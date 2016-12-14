onerror {exit -code 1}
vlib work
vlog -work work memory.vo
vlog -work work main.vwf.vt
vsim -novopt -c -t 1ps -L maxv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Main_vlg_vec_tst -voptargs="+acc"
vcd file -direction memory.msim.vcd
vcd add -internal Main_vlg_vec_tst/*
vcd add -internal Main_vlg_vec_tst/i1/*
run -all
quit -f
