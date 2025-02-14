# Setting Up and Running Jupyter Notebook with a Virtual Environment

This guide explains how to set up and use a Python virtual environment (`venv`) for running Jupyter Notebook.

---

## 1️⃣ Run the Setup Script
To properly set up your environment, simply run the `setup.sh` script:
```bash
source setup.sh
```
This script will:
- Create the virtual environment (`venv/`) then activate it.
- Install all required dependencies from `requirements.txt` using `install_requirements.sh` in the venv.
- Create a Jupyter kernel named `venv_project1` so you can select it inside Jupyter Notebook.

---

## 2️⃣ Start Jupyter Notebook
Once the setup script has completed, you can start Jupyter Notebook:
```bash
jupyter notebook
```
If you prefer Jupyter Lab, use:
```bash
jupyter lab
```

---

## 3️⃣ Select the Virtual Environment in Jupyter
1. Open **Jupyter Notebook** (`jupyter notebook` command).
2. Click **New** → **Notebook**.
3. Click **Kernel** → **Change kernel**.
4. Select **"Python (venv_project1)"** from the list.

---

## 🔄 Additional Commands
### **Check Available Jupyter Kernels**
```bash
jupyter kernelspec list
```

### **Remove an Old Kernel (If Needed)**
```bash
jupyter kernelspec uninstall venv_project1
```

---

## ✅ Summary of Commands
| Step | Command |
|------|---------|
| **Run Setup Script** | `bash setup.sh` |
| **Start Jupyter Notebook** | `jupyter notebook` |

Now you are ready to use Jupyter Notebooks inside your virtual environment!
