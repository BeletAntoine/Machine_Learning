# Setting up the Virtual Environment for Project1 (Linux)

This guide will walk you through setting up the correct virtual environment (`venv`) for this project on Linux. It includes checking the system requirements, running the setup script, and using Jupyter Notebook with the virtual environment.

---

## 1. Verify System Requirements

Before you begin, make sure you have the following installed on your system:

### 1.1 Python Version

Ensure that you are running **Python 3.10.12**. You can verify the installed Python version by running:

```
python3 --version
```

If Python is not installed or the version is too low, you can install Python 3.10.12 or later using your system's package manager.
### 1.2 Install Required Packages

Ensure that the python3-venv package is installed. This is necessary for creating virtual environments. To check and install it on Debian-based systems (like Ubuntu), run:

```
sudo apt update
sudo apt install python3-venv
```

### 1.3 Install pip (If Not Installed)

Ensure that pip, the Python package installer, is installed by running:

```
pip3 --version
```

If pip is not installed, install it using:
```
sudo apt install python3-pip
```

## 2. Run the Setup Script

Once the prerequisites are met, you can set up the virtual environment and install the necessary dependencies for your project. To do this, run the setup.sh script in your project folder:
```
source setup.sh
```

What the setup.sh Script Does:
- Detects the Operating System: It confirms the system type (Linux in this case).
- Creates a Virtual Environment: It creates a .venv/ directory in the project folder and installs the virtual environment.
- Activates the Virtual Environment: The script automatically activates the virtual environment once created.
- Installs Required Dependencies: It installs all dependencies listed in the requirements.txt file into the virtual environment.
- Installs Jupyter and Creates a Kernel: Jupyter is installed, and a kernel named venv_project1 is created for Jupyter Notebook.

## 3. Verify Virtual Environment Activation

Once the setup.sh script completes, the terminal should show that the virtual environment is activated. It should look something like this:
```
(.venv) user@machine:~/Projet1$
```

If the virtual environment is not activated automatically, you can activate it manually by running:
```
source .venv/bin/activate
```

After activation, you should see (.venv) preceding the terminal prompt, indicating that the virtual environment is active.

This will launch Jupyter in your browser.

## 4. Select the Virtual Environment Kernel in Jupyter

After starting Jupyter Notebook, follow these steps to select the correct kernel for your project:
- Open the ".ipynb" file.
- Go to the Kernel menu → Change Kernel.
- Select "Python (venv_project1)" from the list of available kernels.


This will ensure that your ipynb file uses the Python environment from the virtual environment (venv).
## 5. Troubleshooting

If you run into any issues, here are some common problems and solutions:
### 5.1 Virtual Environment Not Created

If you see an error indicating that the virtual environment could not be created due to the ensurepip module missing, you need to install the python3-venv package on Linux. To fix this, run:
```
sudo apt install python3-venv
```

After installing the package, rerun the setup.sh script to recreate the virtual environment.
### 5.2 Jupyter Kernel Not Showing

If you do not see the kernel venv_project1 in Jupyter, ensure that the setup script was run successfully, and that the kernel was registered. You can check installed kernels by running:
```
jupyter kernelspec list
```

If the kernel is missing, rerun the setup.sh script to register it.

!!!

If you can't manually select the venv kernel for the .ipynb file, look at this solution:
https://stackoverflow.com/questions/58119823/jupyter-notebooks-in-visual-studio-code-does-not-use-the-active-virtual-environm

!!!

## 6. Additional Commands
### 6.1 Check Available Jupyter Kernels

To see the list of available Jupyter kernels, you can run:
```
jupyter kernelspec list
```

### 6.2 Remove an Old Kernel (If Needed)

If you need to remove an old kernel, use the following command:
```
jupyter kernelspec uninstall venv_project1
```

## 7. Summary of Commands
| Step	| Command |
|-------|---------|
| Verify python version | python3 --version |
| Run Setup Script | source setup.sh |
| Activate Virtual Environment | source .venv/bin/activate |
| Check Installed Kernels | jupyter kernelspec list |
| Remove an Old Kernel | jupyter kernelspec uninstall venv_project1 |

Now you are ready to use Jupyter Notebooks inside your virtual environment!


This markdown file covers:
```
1. Verifying system requirements (Python, pip, `python3-venv`).
2. Running the `setup.sh` script.
3. Starting Jupyter Notebook or Jupyter Lab.
4. Selecting the virtual environment kernel in Jupyter.
5. Troubleshooting tips.
6. Summary and additional commands for kernel management.
```
This should be exactly what you need for the Linux setup! Let me know if you need anythi