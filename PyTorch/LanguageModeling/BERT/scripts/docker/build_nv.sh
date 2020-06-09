#!/bin/bash
docker build --network=host Dockerfile_nv . --rm --pull --no-cache -t bert_nv
