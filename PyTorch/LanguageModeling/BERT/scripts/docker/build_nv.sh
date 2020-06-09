#!/bin/bash
sudo docker build --network=host -f Dockerfile_nv . --rm --pull --no-cache -t bert_nv
