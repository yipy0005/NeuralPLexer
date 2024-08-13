#!/bin/bash

# Load the necessary module (ATK)
ml ATK/2.38.0-GCCcore-11.3.0

# Download the required models and datasets
wget -O neuralplexermodels_downstream_datasets_predictions.zip https://zenodo.org/records/10373581/files/neuralplexermodels_downstream_datasets_predictions.zip?download=1

# Unzip the downloaded models and datasets
unzip neuralplexermodels_downstream_datasets_predictions.zip

# Create and set up the required environment using the Makefile
make environment

# Activate the conda environment created by the Makefile
conda activate neuralplexer_dev

# Run the pip_install.sh script to install additional dependencies
sh pip_install.sh

# Change directory to the openfold subdirectory
cd openfold

# Install the openfold package
python setup.py install

# Go back to the NeuralPLexer root directory
cd ..

# Install the NeuralPLexer package in editable mode
pip install -e .
