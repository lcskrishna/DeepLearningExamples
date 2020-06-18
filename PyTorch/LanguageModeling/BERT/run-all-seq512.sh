sh benchmark-scripts/nv/run_benchmarks.sh 4 512
sh benchmark-scripts/nv/get_final_results.sh 4 |& tee seq512-bs4-perf

sh benchmark-scripts/nv/run_benchmarks.sh 6 512
sh benchmark-scripts/nv/get_final_results.sh 6 |& tee seq512-bs6-perf

sh benchmark-scripts/nv/run_benchmarks.sh 8 512
sh benchmark-scripts/nv/get_final_results.sh 8 |& tee seq512-bs8-perf

sh benchmark-scripts/nv/run_benchmarks.sh 10 512
sh benchmark-scripts/nv/get_final_results.sh 10 |& tee seq512-bs10-perf

sh benchmark-scripts/nv/run_benchmarks.sh 12 512
sh benchmark-scripts/nv/get_final_results.sh 12 |& tee seq512-bs12-perf

sh benchmark-scripts/nv/run_benchmarks.sh 14 512
sh benchmark-scripts/nv/get_final_results.sh 14 |& tee seq512-bs14-perf

sh benchmark-scripts/nv/run_benchmarks.sh 16 512
sh benchmark-scripts/nv/get_final_results.sh 16 |& tee seq512-bs16-perf
