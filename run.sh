#!/bin/bash
docker run --rm -v $(pwd)/src:/src -it --gpus all -e LD_LIBRARY_PATH=/usr/local/cuda/lib64 demasse_cnn