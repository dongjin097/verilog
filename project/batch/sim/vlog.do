

vlog /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/fir.v \
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/ff_4b.v \
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/shift_mul.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/mag2com.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/adder_tree26.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/adder_tree14.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/adder_tree6.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/adder_tree4.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/adder_tree2.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/ff_16x14b.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/ff_16x7b.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/ff_16x4b.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/ff_16x2b.v\
 /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/adder_tree2.v\


vlog /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/source/tb_fir.v
vsim -c tb_fir -wlf /data3/Class/ICCAD/2022_2/2022_2_iccad12/project/result/sim/tbwave_fir.wlf
log -r *
run 10000 ns
quit
