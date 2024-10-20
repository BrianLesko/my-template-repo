#!/bin/bash

# cd to the current dir
cd "$(dirname "$0")" || exit

python3 -m venv my_env

# Activate the virtual environment
source my_env/bin/activate

# Upgrade pip to the latest version
pip install --upgrade pip

# Install the required packages from requirements.txt
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
else
    echo "requirements.txt not found!"
fi

# Deactivate the virtual environment
deactivate

echo "Virtual environment 'my_env' created and dependencies installed."
