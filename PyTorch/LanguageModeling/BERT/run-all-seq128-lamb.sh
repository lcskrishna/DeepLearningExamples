sh benchmark-scripts/nv/run_benchmarks.sh 8 128 1
sh benchmark-scripts/nv/get_final_results.sh 8 |& tee seq128-bs8-perf

sh benchmark-scripts/nv/run_benchmarks.sh 16 128 1
sh benchmark-scripts/nv/get_final_results.sh 16 |& tee seq128-bs16-perf

sh benchmark-scripts/nv/run_benchmarks.sh 32 128 1
sh benchmark-scripts/nv/get_final_results.sh 32 |& tee seq128-bs32-perf

sh benchmark-scripts/nv/run_benchmarks.sh 64 128 1
sh benchmark-scripts/nv/get_final_results.sh 64 |& tee seq128-bs64-perf
