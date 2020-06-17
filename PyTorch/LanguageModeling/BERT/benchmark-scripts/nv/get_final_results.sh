#!/bin/bash

echo "----------------------------------------------------------------------"
echo "INFO: Benchmark results of NV-BERT on 1GPU"
python benchmark-scripts/nv/bert_log_parser.py --log-file /workspace/bert/results/bert-large-perf-1gpus.txt --num-gpus 1

echo "INFO: Benchmark results of NV-BERT on 2GPUs"
python benchmark-scripts/nv/bert_log_parser.py --log-file /workspace/bert/results/bert-large-perf-2gpus.txt --num-gpus 2

echo "INFO: Benchmark results of NV-BERT on 4GPUs"
python benchmark-scripts/nv/bert_log_parser.py --log-file /workspace/bert/results/bert-large-perf-4gpus.txt --num-gpus 4

echo "INFO: Benchmark results of NV-BERT on 8GPUs"
python benchmark-scripts/nv/bert_log_parser.py --log-file /workspace/bert/results/bert-large-perf-8gpus.txt --num-gpus 8
