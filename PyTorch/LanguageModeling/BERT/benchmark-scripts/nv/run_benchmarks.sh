#!/bin/bash
rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=1 bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*

rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=2 bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*

rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=4 bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*

rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=8 bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*
