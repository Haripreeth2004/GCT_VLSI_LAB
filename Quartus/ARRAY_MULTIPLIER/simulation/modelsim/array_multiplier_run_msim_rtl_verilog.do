transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/ARRAY_MULTIPLIER {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/ARRAY_MULTIPLIER/array_multiplier.sv}

vlog -vlog01compat -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/ARRAY_MULTIPLIER {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/ARRAY_MULTIPLIER/tb_array_multiplier.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_array_multiplier

add wave *
view structure
view signals
run -all
