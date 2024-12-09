
# Check file required for this script exists
proc checkRequiredFiles { origin_dir} {
  set status true
  set files [list \
 "[file normalize "$origin_dir/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma.xci"]"\
 "[file normalize "$origin_dir/ip/RbcpCdc_SysToLink/RbcpCdc_SysToLink.xci"]"\
 "[file normalize "$origin_dir/ip/RbcpCdc_LinkToSys/RbcpCdc_LinkToSys.xci"]"\
 "[file normalize "$origin_dir/hdl/bbt-sitcp-core/SiTCP_XC7K_32K_BBT_V110.edf"]"\
 "[file normalize "$origin_dir/ip/mmcm_cdcm/mmcm_cdcm.xci"]"\
 "[file normalize "$origin_dir/ip/clk_wiz_sys/clk_wiz_sys.xci"]"\
 "[file normalize "$origin_dir/ip/fmp_wd_fifo/fmp_wd_fifo.xci"]"\
 "[file normalize "$origin_dir/ip/fmp_rd_fifo/fmp_rd_fifo.xci"]"\
 "[file normalize "$origin_dir/ip/sem_controller/sem_controller.xci"]"\
 "[file normalize "$origin_dir/ip/xadc_sys/xadc_sys.xci"]"\
 "[file normalize "$origin_dir/ip/LinkBuffer/LinkBuffer.xci"]"\
 "[file normalize "$origin_dir/ip/mergerBackFifo/mergerBackFifo.xci"]"\
 "[file normalize "$origin_dir/ip/mergerFrontFifo/mergerFrontFifo.xci"]"\
 "[file normalize "$origin_dir/ip/incomingFifo/incomingFifo.xci"]"\
 "[file normalize "$origin_dir/ip/finecount_bram/finecount_bram.xci"]"\
 "[file normalize "$origin_dir/ip/scr_fifo/scr_fifo.xci"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/MOD_WRAP_SiTCP_XC7K.V"]"\
 "[file normalize "$origin_dir/hdl/bbt-sitcp-core/SiTCP_XC7K_32K_BBT_V110.V"]"\
 "[file normalize "$origin_dir/hdl/bbt-sitcp-core/TIMER.v"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/mii_init.v"]"\
 "[file normalize "$origin_dir/hdl/defBusAddressMap.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/bus_controller/defBusController.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/defRBCP.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/ResetGen.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/bus_controller/BusController.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defCDCE62002Controller.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/synchronizer.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/EdgeDetector.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/GeneralSpiMaster.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/CDCE62002Controller.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/defCDCM.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/ClockMonitor.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CdcmTxEncoder.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CdcmTxImpl.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/Cdcm8TxImpl.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CdcmTx.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CbtTx.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CdcmRxDecoder.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CdcmRxImpl.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/Cdcm8RxImpl.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CdcmRx.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CbtRx.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/cbt/CbtLane.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/DCR_NetAssign.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/DelayGen.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/SigStretcher.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/defDataBusAbst.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/defLaccp.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/defHeartBeatUnit.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/delimiter/defDelimiter.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/delimiter/DelimiterReplacer.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/defTDC.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FineCounter.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FineCounterDecoder.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FirstFDCEs.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defFlashMemoryProgrammer.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defSPI_IF.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/SPI_IF.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/FlashMemoryProgrammer.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/scaler/defFreeRunScaler.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/scaler/FreeRunScaler.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/iom/defIOManager.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/iom/IOManager.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/trigEmulation/defGateGen.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/utility/MyDPRamSE.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/trigEmulation/GateGen.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/GbEPcsPma.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/GtClockDistributer2.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/throttling/defThrottling.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/throttling/HbfThrottling.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/utility/MyDPRamSRRT.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/utility/MyDPRamARRT.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/utility/MyDPRamDE.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/utility/MyFifoComClock.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/HeartBeatUnit.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/defBitwiseOp.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/LaccpBusSwitch.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/mikumari-link/defMikumari.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/LaccpFrameRx.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/LaccpFrameTx.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/RLIGP.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/RCAP.vhd"]"\
 "[file normalize "$origin_dir/hdl/laccp/laccp/LaccpMainBlock.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/RstDelayTimer.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/mikumari-link/PRBS16.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/mikumari-link/MikumariTx.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/mikumari-link/MikumariRx.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/mikumari-link/MikumariLane.vhd"]"\
 "[file normalize "$origin_dir/hdl/mikumari/mikumari-link/Wrapper/MikumariBlock.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/throttling/OutputThrottling.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/RbcpCdc.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defSelfDiagnosisSystem.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defSemImpl.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/SemImpl.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/SelfDiagnosisSystem.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/defMiiRstTimer.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/MiiRstTimer.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/defSiTCP.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/TCP_sender.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/TDCUnit.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/TOTFilter.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defDCR.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/defTDCDelayBuffer.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_clocking.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_gt_common.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_reset_sync_ex.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_resets.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_sync_block_ex.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_tx_elastic_buffer.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/global_sitcp_manager.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/delimiter/DelimiterGenerator.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/DelimiterInserter.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/OfsCorrect.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/vitalblock/IncomingBuffer.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/throttling/InputThrottlingType2.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/LTMerger.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/LTParing.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/vitalblock/MergerUnit.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/vitalblock/MergerBlock.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/vitalblock/MergerMznBlock.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/mikumari/defMikumariUtil.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/mikumari/MikumariUtil.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/odpblock/TDCDelayBuffer.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/ODPBlock.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/vitalblock/VitalBlock.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/defStrLRTDC.vhd"]"\
 "[file normalize "$origin_dir/hdl/strtdc/lrtdc-impl/strLrTdc.vhd"]"\
 "[file normalize "$origin_dir/hdl/toplevel.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/main/defLEDModule.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/bct_bus_bridge/defMznInterface.vhd"]"\
 "[file normalize "$origin_dir/hdl/common/sitcp/defSiTCP_XG.vhd"]"\
 "[file normalize "$origin_dir/hdl/utility/mikumari/defCDD.vhd"]"\
 "[file normalize "$origin_dir/constrs/pins.xdc"]"\
 "[file normalize "$origin_dir/constrs/timing.xdc"]"\
 "[file normalize "$origin_dir/constrs/gig_ethernet.xdc"]"\
 "[file normalize "$origin_dir/constrs/impl.xdc"]"\
  ]
  foreach ifile $files {
    if { ![file isfile $ifile] } {
      puts " Could not find remote file $ifile "
      set status false
    }
  }

  return $status
}
# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir "."

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "Hul-StrLrTdc"

# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "project.tcl"

# Help information for this script
proc print_help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--project_name <name>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--project_name <name>\] Create project with the specified name. Default"
  puts "                       name is the name of the project from where this"
  puts "                       script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir"   { incr i; set origin_dir [lindex $::argv $i] }
      "--project_name" { incr i; set _xil_proj_name_ [lindex $::argv $i] }
      "--help"         { print_help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
set orig_proj_dir "[file normalize "$origin_dir/build"]"

# Check for paths and files needed for project creation
set validate_required 0
if { $validate_required } {
  if { [checkRequiredFiles $origin_dir] } {
    puts "Tcl file $script_file is valid. All files required for project creation is accesable. "
  } else {
    puts "Tcl file $script_file is not valid. Not all files required for project creation is accesable. "
    return
  }
}

# Create project
create_project ${_xil_proj_name_} ./build -part xc7k160tfbg676-1

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Reconstruct message rules
# None

# Set project properties
set obj [current_project]
set_property -name "default_lib" -value "mylib" -objects $obj
set_property -name "enable_resource_estimation" -value "0" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "disable" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "part" -value "xc7k160tfbg676-1" -objects $obj
set_property -name "revised_directory_structure" -value "1" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "sim_compile_state" -value "1" -objects $obj
set_property -name "target_language" -value "VHDL" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_FIFO XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "${origin_dir}/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma.xci"] \
 [file normalize "${origin_dir}/ip/RbcpCdc_SysToLink/RbcpCdc_SysToLink.xci"] \
 [file normalize "${origin_dir}/ip/RbcpCdc_LinkToSys/RbcpCdc_LinkToSys.xci"] \
 [file normalize "${origin_dir}/hdl/bbt-sitcp-core/SiTCP_XC7K_32K_BBT_V110.edf"] \
 [file normalize "${origin_dir}/ip/mmcm_cdcm/mmcm_cdcm.xci"] \
 [file normalize "${origin_dir}/ip/clk_wiz_sys/clk_wiz_sys.xci"] \
 [file normalize "${origin_dir}/ip/fmp_wd_fifo/fmp_wd_fifo.xci"] \
 [file normalize "${origin_dir}/ip/fmp_rd_fifo/fmp_rd_fifo.xci"] \
 [file normalize "${origin_dir}/ip/sem_controller/sem_controller.xci"] \
 [file normalize "${origin_dir}/ip/xadc_sys/xadc_sys.xci"] \
 [file normalize "${origin_dir}/ip/LinkBuffer/LinkBuffer.xci"] \
 [file normalize "${origin_dir}/ip/mergerBackFifo/mergerBackFifo.xci"] \
 [file normalize "${origin_dir}/ip/mergerFrontFifo/mergerFrontFifo.xci"] \
 [file normalize "${origin_dir}/ip/incomingFifo/incomingFifo.xci"] \
 [file normalize "${origin_dir}/ip/finecount_bram/finecount_bram.xci"] \
 [file normalize "${origin_dir}/ip/scr_fifo/scr_fifo.xci"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/MOD_WRAP_SiTCP_XC7K.V"] \
 [file normalize "${origin_dir}/hdl/bbt-sitcp-core/SiTCP_XC7K_32K_BBT_V110.V"] \
 [file normalize "${origin_dir}/hdl/bbt-sitcp-core/TIMER.v"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/mii_init.v"] \
 [file normalize "${origin_dir}/hdl/defBusAddressMap.vhd"] \
 [file normalize "${origin_dir}/hdl/common/bus_controller/defBusController.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/defRBCP.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/ResetGen.vhd"] \
 [file normalize "${origin_dir}/hdl/common/bus_controller/BusController.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defCDCE62002Controller.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/synchronizer.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/EdgeDetector.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/GeneralSpiMaster.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/CDCE62002Controller.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/defCDCM.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/ClockMonitor.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CdcmTxEncoder.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CdcmTxImpl.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/Cdcm8TxImpl.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CdcmTx.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CbtTx.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CdcmRxDecoder.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CdcmRxImpl.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/Cdcm8RxImpl.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CdcmRx.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CbtRx.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/cbt/CbtLane.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/DCR_NetAssign.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/DelayGen.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/SigStretcher.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/defDataBusAbst.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/defLaccp.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/defHeartBeatUnit.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/delimiter/defDelimiter.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/delimiter/DelimiterReplacer.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/defTDC.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FineCounter.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FineCounterDecoder.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FirstFDCEs.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defFlashMemoryProgrammer.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defSPI_IF.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/SPI_IF.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/FlashMemoryProgrammer.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/scaler/defFreeRunScaler.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/scaler/FreeRunScaler.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/iom/defIOManager.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/iom/IOManager.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/trigEmulation/defGateGen.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/utility/MyDPRamSE.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/trigEmulation/GateGen.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/GbEPcsPma.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/GtClockDistributer2.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/throttling/defThrottling.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/throttling/HbfThrottling.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/utility/MyDPRamSRRT.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/utility/MyDPRamARRT.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/utility/MyDPRamDE.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/utility/MyFifoComClock.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/HeartBeatUnit.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/defBitwiseOp.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/LaccpBusSwitch.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/mikumari-link/defMikumari.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/LaccpFrameRx.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/LaccpFrameTx.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/RLIGP.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/RCAP.vhd"] \
 [file normalize "${origin_dir}/hdl/laccp/laccp/LaccpMainBlock.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/RstDelayTimer.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/mikumari-link/PRBS16.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/mikumari-link/MikumariTx.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/mikumari-link/MikumariRx.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/mikumari-link/MikumariLane.vhd"] \
 [file normalize "${origin_dir}/hdl/mikumari/mikumari-link/Wrapper/MikumariBlock.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/throttling/OutputThrottling.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/RbcpCdc.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defSelfDiagnosisSystem.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defSemImpl.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/SemImpl.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/SelfDiagnosisSystem.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/defMiiRstTimer.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/MiiRstTimer.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/defSiTCP.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/TCP_sender.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/TDCUnit.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/TOTFilter.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defDCR.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/defTDCDelayBuffer.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_clocking.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_gt_common.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_reset_sync_ex.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_resets.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_sync_block_ex.vhd"] \
 [file normalize "${origin_dir}/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_tx_elastic_buffer.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/global_sitcp_manager.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/delimiter/DelimiterGenerator.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/DelimiterInserter.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/OfsCorrect.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/vitalblock/IncomingBuffer.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/throttling/InputThrottlingType2.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/LTMerger.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/LTParing.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/vitalblock/MergerUnit.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/vitalblock/MergerBlock.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/vitalblock/MergerMznBlock.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/mikumari/defMikumariUtil.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/mikumari/MikumariUtil.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/odpblock/TDCDelayBuffer.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/odpblock/ODPBlock.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/vitalblock/VitalBlock.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/defStrLRTDC.vhd"] \
 [file normalize "${origin_dir}/hdl/strtdc/lrtdc-impl/strLrTdc.vhd"] \
 [file normalize "${origin_dir}/hdl/toplevel.vhd"] \
 [file normalize "${origin_dir}/hdl/common/main/defLEDModule.vhd"] \
 [file normalize "${origin_dir}/hdl/common/bct_bus_bridge/defMznInterface.vhd"] \
 [file normalize "${origin_dir}/hdl/common/sitcp/defSiTCP_XG.vhd"] \
 [file normalize "${origin_dir}/hdl/utility/mikumari/defCDD.vhd"] \
]
add_files -norecurse -fileset $obj $files

# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/ip/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "is_locked" -value "1" -objects $file_obj
}
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "$origin_dir/ip/RbcpCdc_SysToLink/RbcpCdc_SysToLink.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/RbcpCdc_LinkToSys/RbcpCdc_LinkToSys.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/hdl/bbt-sitcp-core/SiTCP_XC7K_32K_BBT_V110.edf"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "EDIF" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/ip/mmcm_cdcm/mmcm_cdcm.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/clk_wiz_sys/clk_wiz_sys.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/fmp_wd_fifo/fmp_wd_fifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/fmp_rd_fifo/fmp_rd_fifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/sem_controller/sem_controller.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/xadc_sys/xadc_sys.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/LinkBuffer/LinkBuffer.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/mergerBackFifo/mergerBackFifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/mergerFrontFifo/mergerFrontFifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/incomingFifo/incomingFifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/finecount_bram/finecount_bram.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/ip/scr_fifo/scr_fifo.xci"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj
if { ![get_property "is_locked" $file_obj] } {
  set_property -name "synth_checkpoint_mode" -value "Singular" -objects $file_obj
}

set file "$origin_dir/hdl/common/sitcp/MOD_WRAP_SiTCP_XC7K.V"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/bbt-sitcp-core/SiTCP_XC7K_32K_BBT_V110.V"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/bbt-sitcp-core/TIMER.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/mii_init.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/defBusAddressMap.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/bus_controller/defBusController.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/defRBCP.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/ResetGen.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/bus_controller/BusController.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defCDCE62002Controller.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/synchronizer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/EdgeDetector.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/GeneralSpiMaster.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/CDCE62002Controller.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/defCDCM.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/ClockMonitor.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CdcmTxEncoder.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CdcmTxImpl.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/Cdcm8TxImpl.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CdcmTx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CbtTx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CdcmRxDecoder.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CdcmRxImpl.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/Cdcm8RxImpl.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CdcmRx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CbtRx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/cbt/CbtLane.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/DCR_NetAssign.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/DelayGen.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/SigStretcher.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/defDataBusAbst.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/defLaccp.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/defHeartBeatUnit.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/delimiter/defDelimiter.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/delimiter/DelimiterReplacer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/defTDC.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FineCounter.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FineCounterDecoder.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/FirstFDCEs.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defFlashMemoryProgrammer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defSPI_IF.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/SPI_IF.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/FlashMemoryProgrammer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/scaler/defFreeRunScaler.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/scaler/FreeRunScaler.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/iom/defIOManager.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/iom/IOManager.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/trigEmulation/defGateGen.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/utility/MyDPRamSE.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/trigEmulation/GateGen.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/GbEPcsPma.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/GtClockDistributer2.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/throttling/defThrottling.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/throttling/HbfThrottling.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/utility/MyDPRamSRRT.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/utility/MyDPRamARRT.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/utility/MyDPRamDE.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/utility/MyFifoComClock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/HeartBeatUnit.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/defBitwiseOp.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/LaccpBusSwitch.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/mikumari-link/defMikumari.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/LaccpFrameRx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/LaccpFrameTx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/RLIGP.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/RCAP.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/laccp/laccp/LaccpMainBlock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/RstDelayTimer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/mikumari-link/PRBS16.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/mikumari-link/MikumariTx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/mikumari-link/MikumariRx.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/mikumari-link/MikumariLane.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/mikumari/mikumari-link/Wrapper/MikumariBlock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/throttling/OutputThrottling.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/RbcpCdc.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defSelfDiagnosisSystem.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defSemImpl.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/SemImpl.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/SelfDiagnosisSystem.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/defMiiRstTimer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/MiiRstTimer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/defSiTCP.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/TCP_sender.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/lrtdc/TDCUnit.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/TOTFilter.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defDCR.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/defTDCDelayBuffer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_clocking.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_gt_common.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_reset_sync_ex.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_resets.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_sync_block_ex.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/gig_ethernet_pcs_pma/gig_ethernet_pcs_pma_tx_elastic_buffer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/global_sitcp_manager.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/delimiter/DelimiterGenerator.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/OfsCorrect.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/DelimiterInserter.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/vitalblock/IncomingBuffer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/throttling/InputThrottlingType2.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/LTMerger.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/LTParing.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/vitalblock/MergerUnit.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/vitalblock/MergerBlock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/vitalblock/MergerMznBlock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/mikumari/defMikumariUtil.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/mikumari/MikumariUtil.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/odpblock/TDCDelayBuffer.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/odpblock/ODPBlock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/vitalblock/VitalBlock.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/defStrLRTDC.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/strtdc/lrtdc-impl/strLrTdc.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/toplevel.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL 2008" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/main/defLEDModule.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/bct_bus_bridge/defMznInterface.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/common/sitcp/defSiTCP_XG.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

set file "$origin_dir/hdl/utility/mikumari/defCDD.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj


# Set 'sources_1' fileset file properties for local files
# None

# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "dataflow_viewer_settings" -value "min_width=16" -objects $obj
set_property -name "top" -value "toplevel" -objects $obj

# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constrs/pins.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$origin_dir/constrs/pins.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constrs/timing.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$origin_dir/constrs/timing.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constrs/gig_ethernet.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$origin_dir/constrs/gig_ethernet.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/constrs/impl.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "$origin_dir/constrs/impl.xdc"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj
set_property -name "library" -value "mylib" -objects $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property -name "target_part" -value "xc7k160tfbg676-1" -objects $obj

# Create 'sim_1' fileset (if not found)
if {[string equal [get_filesets -quiet sim_1] ""]} {
  create_fileset -simset sim_1
}

# Set 'sim_1' fileset object
set obj [get_filesets sim_1]
# Empty (no sources present)

# Set 'sim_1' fileset properties
set obj [get_filesets sim_1]
set_property -name "top" -value "toplevel" -objects $obj
set_property -name "top_lib" -value "mylib" -objects $obj

# Set 'utils_1' fileset object
set obj [get_filesets utils_1]
# Empty (no sources present)

# Set 'utils_1' fileset properties
set obj [get_filesets utils_1]

set idrFlowPropertiesConstraints ""
catch {
 set idrFlowPropertiesConstraints [get_param runs.disableIDRFlowPropertyConstraints]
 set_param runs.disableIDRFlowPropertyConstraints 1
}

# Create 'synth_1' run (if not found)
if {[string equal [get_runs -quiet synth_1] ""]} {
    create_run -name synth_1 -part xc7k160tfbg676-1 -flow {Vivado Synthesis 2023} -strategy "Vivado Synthesis Defaults" -report_strategy {No Reports} -constrset constrs_1
} else {
  set_property strategy "Vivado Synthesis Defaults" [get_runs synth_1]
  set_property flow "Vivado Synthesis 2023" [get_runs synth_1]
}
set obj [get_runs synth_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Synthesis Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'synth_1_synth_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0] "" ] } {
  create_report_config -report_name synth_1_synth_report_utilization_0 -report_type report_utilization:1.0 -steps synth_design -runs synth_1
}
set obj [get_report_configs -of_objects [get_runs synth_1] synth_1_synth_report_utilization_0]
if { $obj != "" } {

}
set obj [get_runs synth_1]
set_property -name "part" -value "xc7k160tfbg676-1" -objects $obj
set_property -name "auto_incremental_checkpoint" -value "1" -objects $obj
set_property -name "strategy" -value "Vivado Synthesis Defaults" -objects $obj

# set the current synth run
current_run -synthesis [get_runs synth_1]

# Create 'impl_1' run (if not found)
if {[string equal [get_runs -quiet impl_1] ""]} {
    create_run -name impl_1 -part xc7k160tfbg676-1 -flow {Vivado Implementation 2023} -strategy "Vivado Implementation Defaults" -report_strategy {No Reports} -constrset constrs_1 -parent_run synth_1
} else {
  set_property strategy "Vivado Implementation Defaults" [get_runs impl_1]
  set_property flow "Vivado Implementation 2023" [get_runs impl_1]
}
set obj [get_runs impl_1]
set_property set_report_strategy_name 1 $obj
set_property report_strategy {Vivado Implementation Default Reports} $obj
set_property set_report_strategy_name 0 $obj
# Create 'impl_1_init_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_init_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps init_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_init_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_opt_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_drc_0 -report_type report_drc:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_place_report_io_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0] "" ] } {
  create_report_config -report_name impl_1_place_report_io_0 -report_type report_io:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_io_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0] "" ] } {
  create_report_config -report_name impl_1_place_report_utilization_0 -report_type report_utilization:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_place_report_control_sets_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0] "" ] } {
  create_report_config -report_name impl_1_place_report_control_sets_0 -report_type report_control_sets:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_control_sets_0]
if { $obj != "" } {
set_property -name "options.verbose" -value "1" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_incremental_reuse_1' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1] "" ] } {
  create_report_config -report_name impl_1_place_report_incremental_reuse_1 -report_type report_incremental_reuse:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_incremental_reuse_1]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj

}
# Create 'impl_1_place_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_place_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps place_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_place_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_post_place_power_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_place_power_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_place_power_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_place_power_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "is_enabled" -value "0" -objects $obj
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_route_report_drc_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0] "" ] } {
  create_report_config -report_name impl_1_route_report_drc_0 -report_type report_drc:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_drc_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_methodology_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0] "" ] } {
  create_report_config -report_name impl_1_route_report_methodology_0 -report_type report_methodology:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_methodology_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_power_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0] "" ] } {
  create_report_config -report_name impl_1_route_report_power_0 -report_type report_power:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_power_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_route_status_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0] "" ] } {
  create_report_config -report_name impl_1_route_report_route_status_0 -report_type report_route_status:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_route_status_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_route_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_timing_summary_0]
if { $obj != "" } {
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj

}
# Create 'impl_1_route_report_incremental_reuse_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0] "" ] } {
  create_report_config -report_name impl_1_route_report_incremental_reuse_0 -report_type report_incremental_reuse:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_incremental_reuse_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_clock_utilization_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0] "" ] } {
  create_report_config -report_name impl_1_route_report_clock_utilization_0 -report_type report_clock_utilization:1.0 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_clock_utilization_0]
if { $obj != "" } {

}
# Create 'impl_1_route_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_route_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps route_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_route_report_bus_skew_0]
if { $obj != "" } {
set_property -name "options.warn_on_violation" -value "1" -objects $obj

}
# Create 'impl_1_post_route_phys_opt_report_timing_summary_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_timing_summary_0 -report_type report_timing_summary:1.0 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_timing_summary_0]
if { $obj != "" } {
set_property -name "options.max_paths" -value "10" -objects $obj
set_property -name "options.report_unconstrained" -value "1" -objects $obj
set_property -name "options.warn_on_violation" -value "1" -objects $obj

}
# Create 'impl_1_post_route_phys_opt_report_bus_skew_0' report (if not found)
if { [ string equal [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0] "" ] } {
  create_report_config -report_name impl_1_post_route_phys_opt_report_bus_skew_0 -report_type report_bus_skew:1.1 -steps post_route_phys_opt_design -runs impl_1
}
set obj [get_report_configs -of_objects [get_runs impl_1] impl_1_post_route_phys_opt_report_bus_skew_0]
if { $obj != "" } {
set_property -name "options.warn_on_violation" -value "1" -objects $obj

}
set obj [get_runs impl_1]
set_property -name "part" -value "xc7k160tfbg676-1" -objects $obj
set_property -name "strategy" -value "Vivado Implementation Defaults" -objects $obj
set_property -name "steps.write_bitstream.args.readback_file" -value "0" -objects $obj
set_property -name "steps.write_bitstream.args.verbose" -value "0" -objects $obj

# set the current impl run
current_run -implementation [get_runs impl_1]
catch {
 if { $idrFlowPropertiesConstraints != {} } {
   set_param runs.disableIDRFlowPropertyConstraints $idrFlowPropertiesConstraints
 }
}

puts "INFO: Project created:${_xil_proj_name_}"
# Create 'drc_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "drc_1" ] ] ""]} {
create_dashboard_gadget -name {drc_1} -type drc
}
set obj [get_dashboard_gadgets [ list "drc_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_drc_0" -objects $obj

# Create 'methodology_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "methodology_1" ] ] ""]} {
create_dashboard_gadget -name {methodology_1} -type methodology
}
set obj [get_dashboard_gadgets [ list "methodology_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_methodology_0" -objects $obj

# Create 'power_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "power_1" ] ] ""]} {
create_dashboard_gadget -name {power_1} -type power
}
set obj [get_dashboard_gadgets [ list "power_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_power_0" -objects $obj

# Create 'timing_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "timing_1" ] ] ""]} {
create_dashboard_gadget -name {timing_1} -type timing
}
set obj [get_dashboard_gadgets [ list "timing_1" ] ]
set_property -name "reports" -value "impl_1#impl_1_route_report_timing_summary_0" -objects $obj

# Create 'utilization_1' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "utilization_1" ] ] ""]} {
create_dashboard_gadget -name {utilization_1} -type utilization
}
set obj [get_dashboard_gadgets [ list "utilization_1" ] ]
set_property -name "reports" -value "synth_1#synth_1_synth_report_utilization_0" -objects $obj
set_property -name "run.step" -value "synth_design" -objects $obj
set_property -name "run.type" -value "synthesis" -objects $obj

# Create 'utilization_2' gadget (if not found)
if {[string equal [get_dashboard_gadgets  [ list "utilization_2" ] ] ""]} {
create_dashboard_gadget -name {utilization_2} -type utilization
}
set obj [get_dashboard_gadgets [ list "utilization_2" ] ]
set_property -name "reports" -value "impl_1#impl_1_place_report_utilization_0" -objects $obj

move_dashboard_gadget -name {utilization_1} -row 0 -col 0
move_dashboard_gadget -name {power_1} -row 1 -col 0
move_dashboard_gadget -name {drc_1} -row 2 -col 0
move_dashboard_gadget -name {timing_1} -row 0 -col 1
move_dashboard_gadget -name {utilization_2} -row 1 -col 1
move_dashboard_gadget -name {methodology_1} -row 2 -col 1

# User-Tcl
source user-setting.tcl
exit