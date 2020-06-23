sh benchmark-scripts/nv/run_benchmarks.sh 4 512 1
sh benchmark-scripts/nv/get_final_results.sh 4 |& tee seq512-bs4-perf
sh benchmark-scripts/nv/run_benchmarks.sh 8 512 1
sh benchmark-scripts/nv/get_final_results.sh 8 |& tee seq512-bs8-perf
sh benchmark-scripts/nv/run_benchmarks.sh 12 512 1
sh benchmark-scripts/nv/get_final_results.sh 12 |& tee seq512-bs12-perf
sh benchmark-scripts/nv/run_benchmarks.sh 16 512 1
sh benchmark-scripts/nv/get_final_results.sh 16 |& tee seq512-bs16-perf
sh benchmark-scripts/nv/run_benchmarks.sh 18 512 1
sh benchmark-scripts/nv/get_final_results.sh 18 |& tee seq512-bs18-perf
