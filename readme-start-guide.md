# README - How to Use JPNBLab

## Quick Start Guide

### For First-Time Users

#### Prerequisites
- Python 3.12+ installed
- VSCode (recommended)
- Git/GitHub Desktop

#### Option 1: Clone from GitHub (Easiest)
```cmd
git clone https://github.com/hanshendrickx/JPNBLab.git
cd JPNBLab
setup.bat
```

#### Option 2: Create New Project
```cmd
REM 1. Download the template files
REM 2. Put github-New-NAME.bat and setup.bat in a folder
REM 3. Run:
github-New-NAME.bat
REM 4. Enter your project name when asked
REM 5. Run setup in the new project folder:
cd YourProjectName
setup.bat
```

### Daily Usage

#### Start Jupyter Lab
```cmd
start-jupyter.bat
```
Opens Jupyter Lab in your browser at `http://localhost:8888`

#### Activate Environment (if needed)
```cmd
py-env\Scripts\activate
```
You'll see `(py-env)` appear in your prompt

#### Check What's Installed
```cmd
py-env\Scripts\pip list
```

#### Add New Packages
```cmd
py-env\Scripts\pip install package-name
```

### Project Structure

```
YourProject/
├── py-env/              # Virtual environment
├── notebooks/           # Your Jupyter notebooks
│   ├── examples/        # Learning/testing
│   └── medical-tools/   # Production apps
├── shared/              # Common utilities
├── assets/              # Images, CSS, etc.
├── README.md
├── setup.bat           # Setup script
└── start-jupyter.bat   # Launch Jupyter
```

### For Sharing with Patients (Voila)

#### Install Voila
```cmd
py-env\Scripts\pip install voila
```

#### Share a Notebook
```cmd
py-env\Scripts\voila notebooks/medical-tools/your-app.ipynb
```
Opens at `http://localhost:8866` - patients can use this link

### Troubleshooting

#### Environment Not Active?
```cmd
py-env\Scripts\activate
```

#### Jupyter Won't Start?
```cmd
py-env\Scripts\pip install jupyter jupyterlab
start-jupyter.bat
```

#### Want to Reset Everything?
```cmd
rmdir /s py-env
setup.bat
```

### File Descriptions

| File | Purpose |
|------|---------|
| `github-New-NAME.bat` | Creates new projects (reusable template) |
| `setup.bat` | Sets up Python environment and installs packages |
| `start-jupyter.bat` | Starts Jupyter Lab |
| `py-env/` | Virtual environment (don't touch) |
| `notebooks/` | Your Jupyter notebooks go here |

### For Developers

#### Code Formatting
```cmd
py-env\Scripts\pip install black ruff
py-env\Scripts\black notebooks/
py-env\Scripts\ruff check notebooks/
```

#### Git Workflow
```cmd
git add .
git commit -m "Your message"
git push
```

### Support

- Check project structure matches the layout above
- Ensure `(py-env)` shows in your command prompt
- All `.bat` files should be in the project root
- Use `py-env\Scripts\` prefix for Python commands

---

**Ready to Code!** 🚀

Run `start-jupyter.bat` and start creating notebooks in the `notebooks/` folder!