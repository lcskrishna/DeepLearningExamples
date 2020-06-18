#!/bin/bash
rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=1 BATCH_SIZE=$1 bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*

rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=2 BATCH_SIZE=$1  bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*

rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=4 BATCH_SIZE=$1  bash scripts/run_pretraining_ph1_nv.sh
sleep 5
rm -rf results/checkpoints/*

rm -rf /workspace/bert/results/checkpoints
PYTORCH_JIT=0 NUM_GPUS=8 BATCH_SIZE=$1  bash scripts/run_pretraining_ph1_nv.sh 
sleep 5
rm -rf results/checkpoints/*
