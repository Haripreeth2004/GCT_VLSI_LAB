transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/EXP_1 {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/EXP_1/alu_4_bit.v}

vlog -vlog01compat -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/EXP_1 {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/Quartus/EXP_1/tb_alu_4_bitv.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_alu_4_bit

add wave *
view structure
view signals
run -all
