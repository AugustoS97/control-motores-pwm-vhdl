# 
# Synthesis run script generated by Vivado
# 

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z020clg484-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.cache/wt [current_project]
set_property parent.project_path c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
set_property ip_repo_paths {
  c:/Users/Augusto/Desktop/Proyecto2_FPGA/ip_repo/pwm_dc_1.0
  c:/Users/Augusto/Desktop/Proyecto2_FPGA/ip_repo
} [current_project]
set_property ip_output_repo c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.srcs/sources_1/bd/control_motor/hdl/control_motor_wrapper.vhd
add_files c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.srcs/sources_1/bd/control_motor/control_motor.bd
set_property used_in_implementation false [get_files -all c:/users/augusto/desktop/proyecto2_fpga/control_motores/control_motores.tmp/edit_ip_project.srcs/sources_1/bd/control_motor/control_motor_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores/control_motores.tmp/edit_ip_project.srcs/constrs_1/imports/Fuentes/zedboard_constraint.xdc
set_property used_in_implementation false [get_files c:/Users/Augusto/Desktop/Proyecto2_FPGA/control_motores/control_motores.tmp/edit_ip_project.srcs/constrs_1/imports/Fuentes/zedboard_constraint.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top control_motor_wrapper -part xc7z020clg484-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef control_motor_wrapper.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file control_motor_wrapper_utilization_synth.rpt -pb control_motor_wrapper_utilization_synth.pb"