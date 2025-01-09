#!/bin/bash

# Navigate to project directory
cd ~/Dev/notebook

# Activate virtual environment
source $(pipenv --venv)/bin/activate

# Run script
pipenv run jupyter-lab