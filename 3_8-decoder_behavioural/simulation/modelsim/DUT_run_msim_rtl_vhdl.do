transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/3_8-decoder_behavioural/3_8_decoder_behave.vhd}
vcom -93 -work work {F:/3_8-decoder_behavioural/DUT.vhd}

vcom -93 -work work {F:/3_8-decoder_behavioural/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
