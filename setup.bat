@echo off
echo Setting up JPNBLab Project
echo ===========================

REM Check Python
python --version
if errorlevel 1 (
    echo ERROR: Python not found!
    pause
    exit
)

REM Create project structure
echo Creating folders...
mkdir notebooks
mkdir notebooks\examples
mkdir notebooks\medical-tools
mkdir shared
mkdir assets

REM Create virtual environment
echo Creating virtual environment...
python -m venv py-env

REM Activate and install packages
echo Installing packages...
py-env\Scripts\pip install jupyter jupyterlab voila nicegui

REM Create sample files
echo Creating sample files...
echo # JPNBLab Project > README.md
echo Welcome to your JPNBLab project! >> README.md

echo # Sample notebook for JPNBLab > notebooks\examples\hello.ipynb

REM Create start script
echo @echo off > start-jupyter.bat
echo py-env\Scripts\activate >> start-jupyter.bat
echo jupyter lab >> start-jupyter.bat

echo.
echo ===========================
echo Setup Complete!
echo ===========================
echo Run: start-jupyter.bat
echo.
pause