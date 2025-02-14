#!/bin/bash

# Exit script on any error
set -e

echo "Detecting operating system..."

# Check if running on Windows (Git Bash)
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    echo "Windows detected. Using Windows-specific commands."
    VENV_PYTHON=".venv/Scripts/python"
    VENV_JUPYTER=".venv/Scripts/jupyter"
    VENV_ACTIVATE=".venv/Scripts/activate"
else
    echo "Linux/macOS detected. Using Unix commands."
    VENV_PYTHON=".venv/bin/python"
    VENV_JUPYTER=".venv/bin/jupyter"
    VENV_ACTIVATE=".venv/bin/activate"
fi

# Check if virtual environment exists, if not create it
if [ ! -d ".venv" ]; then
    echo "Virtual environment not found. Creating one..."
    $PYTHON_EXEC -m venv .venv
fi

# Activate the virtual environment
if [ -f "$VENV_ACTIVATE" ]; then
    echo "Activating virtual environment..."
    source "$VENV_ACTIVATE"

    # Manually add venv to PATH (fix for Windows)
    export PATH="$PWD/$VENV_PATH:$PATH"
    
    # Verify activation
    if [ "$VIRTUAL_ENV" != "" ]; then
        echo "Virtual environment activated successfully: $VIRTUAL_ENV"
    else
        echo "Failed to activate the virtual environment. Exiting..."
        exit 1
    fi
else
    echo "Virtual environment not found. Please create it first."
    exit 1
fi

# Install dependencies
echo "Installing dependencies from requirements.txt..."
$VENV_PYTHON -m pip install --upgrade pip
$VENV_PYTHON -m pip install -r ../requirements.txt

# Ensure Jupyter is installed after installing dependencies
if ! $VENV_PYTHON -m pip list | grep -q jupyter; then
    echo "Jupyter not found after requirements installation. Installing manually..."
    $VENV_PYTHON -m pip install jupyter ipykernel
else
    echo "Jupyter is already installed."
fi

# Register the Jupyter kernel if it doesn't exist
if ! $VENV_PYTHON -m jupyter kernelspec list | grep -q "venv_project1"; then
    echo "Registering Jupyter kernel..."
    $VENV_PYTHON -m ipykernel install --user --name="venv_project1" --display-name "Python (venv_project1)"
else
    echo "Jupyter kernel 'venv_project1' is already registered."
fi

echo "Setup complete! Jupyter is ready to use."
