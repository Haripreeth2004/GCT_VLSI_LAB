transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/GCT_VLSI_LAB/Design_files/Exp_5/SISO {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/GCT_VLSI_LAB/Design_files/Exp_5/SISO/D_FF.v}
vlog -vlog01compat -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/GCT_VLSI_LAB/Design_files/Exp_5/SISO {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/GCT_VLSI_LAB/Design_files/Exp_5/SISO/SISO_Shift_Register.v}

vlog -vlog01compat -work work +incdir+/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/GCT_VLSI_LAB/Design_files/Exp_5/SISO {/media/hari-the-geth/HPCORE/vlsi_design_lab_exp/GCT_VLSI_LAB/Design_files/Exp_5/SISO/SISO_Shift_Register_tb.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  SISO_Shift_Register_tb

add wave *
view structure
view signals
run -all
