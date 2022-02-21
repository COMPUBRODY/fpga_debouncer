transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Madera/Documents/Quartus_Workspace/debouncer {C:/Users/Madera/Documents/Quartus_Workspace/debouncer/debouncer_main.v}
vlog -vlog01compat -work work +incdir+C:/Users/Madera/Documents/Quartus_Workspace/debouncer {C:/Users/Madera/Documents/Quartus_Workspace/debouncer/debouncer.v}

vlog -vlog01compat -work work +incdir+C:/Users/Madera/Documents/Quartus_Workspace/debouncer {C:/Users/Madera/Documents/Quartus_Workspace/debouncer/tb_debouncer.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_debouncer

add wave *
view structure
view signals
run -all
