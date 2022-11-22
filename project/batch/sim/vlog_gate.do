vlog /data3/Class/ICCAD/2022_2/2022_2_iccad12/hdl_design/result/syn/cnt8.mapped.v
vlog /data3/Class/ICCAD/2022_2/2022_2_iccad12/hdl_design/source/tb_cnt8.v
vsim tb_cnt8 -c -L tsmc_cell -sdftyp tb_cnt8/cnt=/data3/Class/ICCAD/2022_2/2022_2_iccad12/hdl_design/result/syn/cnt8.mapped.sdf -wlf /data3/Class/ICCAD/2022_2/2022_2_iccad12/hdl_design/result/sim/tbwave_cnt8_gate.wlf
log -r *
run 10000 ns
quit