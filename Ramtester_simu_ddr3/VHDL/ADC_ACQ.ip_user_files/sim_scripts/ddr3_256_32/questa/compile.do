vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm  -sv \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_std.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ddr3_256_32_mig_sim.v" \
"../../../../ADC_ACQ.gen/sources_1/ip/ddr3_256_32/ddr3_256_32/user_design/rtl/ddr3_256_32.v" \

vlog -work xil_defaultlib \
"glbl.v"

