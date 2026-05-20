open_project "E:/Xylinx/EO_IR_HD_SDI_EOstack/EO_IR_HD_SDI_EOstack.xpr"
reset_run synth_1
reset_run impl_1
launch_runs synth_1 -jobs 12
wait_on_run synth_1
close_project
