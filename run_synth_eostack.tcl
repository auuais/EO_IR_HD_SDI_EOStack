open_project "E:/Xylinx/EO_IR_HD_SDI_EOstack/EO_IR_HD_SDI_EOstack.xpr"
if {[llength [get_files -quiet */KintexTop_EO_IR_Combined_HD_SDI.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/KintexTop_EO_IR_Combined_HD_SDI.v" }
if {[llength [get_files -quiet */KintexTop_0cam_ch1_0108.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/KintexTop_0cam_ch1_0108.v" }
if {[llength [get_files -quiet */Kintex_top_1cam_ch1_1202.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/Kintex_top_1cam_ch1_1202.v" }
if {[llength [get_files -quiet */Kintex_top_2cam_ch1_1202.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/Kintex_top_2cam_ch1_1202.v" }
if {[llength [get_files -quiet */Kintex_top_3cam_ch1_1202.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/Kintex_top_3cam_ch1_1202.v" }
if {[llength [get_files -quiet */Kintex_top_4cam_ch1_1202.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/Kintex_top_4cam_ch1_1202.v" }
if {[llength [get_files -quiet */Kintex_top_5cam_ch1_1202.v]] == 0} { add_files -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/Kintex_top_5cam_ch1_1202.v" }
if {[llength [get_files -quiet */KintexTop_EO_IR_Combined_HD_SDI.xdc]] == 0} { add_files -fileset constrs_1 -norecurse "E:/Xylinx/EO_IR_HD_SDI_EOstack/KintexTop_EO_IR_Combined_HD_SDI.xdc" }
set_property top KintexTop_EO_IR_Combined_HD_SDI [current_fileset]
update_compile_order -fileset sources_1
reset_run synth_1
launch_runs synth_1 -jobs 12
wait_on_run synth_1
close_project
