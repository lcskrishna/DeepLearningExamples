#!/bin/bash

PYTORCH_JIT=0 NUM_GPUS=1 bash scripts/run_pretraining_ph1_512.sh
sleep 5
rm -rf results/checkpoints/*

PYTORCH_JIT=0 NUM_GPUS=2 bash scripts/run_pretraining_ph1_512.sh
sleep 5
rm -rf results/checkpoints/*

PYTORCH_JIT=0 NUM_GPUS=4 bash scripts/run_pretraining_ph1_512.sh
sleep 5
rm -rf results/checkpoints/*

PYTORCH_JIT=0 NUM_GPUS=8 bash scripts/run_pretraining_ph1_512.sh
sleep 5
rm -rf results/checkpoints/*
