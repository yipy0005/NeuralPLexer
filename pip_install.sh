#!/bin/bash

ml ATK/2.38.0-GCCcore-11.3.0

pip install torch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 --index-url https://download.pytorch.org/whl/cu121 &&
pip install torch-cluster -f https://data.pyg.org/whl/torch-2.1.0+cu121.html &&
pip install torch-scatter torch-sparse -f https://data.pyg.org/whl/torch-2.1.0+cu121.html &&
pip install torch-spline-conv -f https://data.pyg.org/whl/torch-2.1.0+cu121.html &&
pip install -r requirements.txt &&
pip install "git+https://github.com/facebookresearch/pytorch3d.git@stable"