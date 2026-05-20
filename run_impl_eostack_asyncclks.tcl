open_project "E:/Xylinx/EO_IR_HD_SDI_EOstack/EO_IR_HD_SDI_EOstack.xpr"
reset_run impl_1
launch_runs impl_1 -to_step write_bitstream -jobs 12
wait_on_run impl_1
set implDir "E:/Xylinx/EO_IR_HD_SDI_EOstack/EO_IR_HD_SDI_EOstack.runs/impl_1"
set rpt [file join $implDir "KintexTop_EO_IR_Combined_HD_SDI_timing_summary_routed.rpt"]
if {[file exists $rpt]} {
  set fp [open $rpt r]
  set txt [read $fp]
  close $fp
  if {[regexp {WNS\(ns\):\s+([-0-9.]+)} $txt -> wns]} {puts "TIMING_WNS=$wns"}
  if {[regexp {WHS\(ns\):\s+([-0-9.]+)} $txt -> whs]} {puts "TIMING_WHS=$whs"}
}
close_project
