#!/bin/bash

CMD=${1:-/bin/bash}
NV_VISIBLE_DEVICES=${2:-"all"}
DOCKER_BRIDGE=${3:-"host"}


sudo docker run -it --rm \
  --gpus device=$NV_VISIBLE_DEVICES \
  --net=$DOCKER_BRIDGE \
  --shm-size=8g \
  --ulimit memlock=-1 \
  --ulimit stack=67108864 \
  -e LD_LIBRARY_PATH='/workspace/install/lib/' \
  -v $PWD:/workspace/bert \
  -v $PWD/results:/results \
  -v /data:/datasets \
  -v $HOME:/data \
  --cap-add=SYS_PTRACE \
  --security-opt seccomp=unconfined \
  bert_nv $CMD


#sudo docker run -it -v $HOME:/data -v $PWD:/workspace/bert --rm --privileged --device=/dev/dri --device=/dev/kfd --network host --group-add video --shm-size 8G --ipc=host bert
