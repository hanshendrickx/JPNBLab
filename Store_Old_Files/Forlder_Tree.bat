@echo off
echo ================================================================================
echo            🌳 Professional Folder Tree Generator - DEMO 🌳
echo             https://github.com/hanshendrickx/Folder_Tree_Claude
echo ================================================================================
echo.

REM Check if folder_tree.py exists, if not download it
if not exist folder_tree.py (
    echo 📥 Downloading folder_tree.py from GitHub...
    curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py
    echo ✅ Downloaded successfully!
    echo.
)

REM Check and install dependencies
echo 🔧 Checking dependencies...
python -c "import PIL" >nul 2>&1
if errorlevel 1 (
    echo ⚠️  Pillow not found - installing for PNG support...
    pip install Pillow
)

python -c "import reportlab" >nul 2>&1  
if errorlevel 1 (
    echo ⚠️  ReportLab not found - installing for PDF support...
    pip install reportlab
)

echo ✅ Dependencies ready!
echo.
echo ================================================================================

echo 📋 DEMO 1: Basic artisanal style with emoji icons
echo Command: python folder_tree.py . --style artisanal --icons artisanal
echo.
python folder_tree.py . --style artisanal --icons artisanal
pause
cls

echo ================================================================================
echo 📋 DEMO 2: Limited files per folder (perfect for documentation)
echo Command: python folder_tree.py . --style artisanal --icons artisanal --max-files 5
echo.
python folder_tree.py . --style artisanal --icons artisanal --max-files 5
pause
cls

echo ================================================================================
echo 📋 DEMO 3: Limited depth + file limiting (compact view)
echo Command: python folder_tree.py . --style artisanal --icons artisanal --max-files 5 --depth 3
echo.
python folder_tree.py . --style artisanal --icons artisanal --max-files 5 --depth 3
pause
cls

echo ================================================================================
echo 📋 DEMO 4: Save to text file with beautiful header
echo Command: python folder_tree.py . --style artisanal --icons artisanal --max-files 5 -o project_structure.txt
echo.
python folder_tree.py . --style artisanal --icons artisanal --max-files 5 -o project_structure.txt
echo.
echo 📄 Created project_structure.txt - opening in notepad...
notepad project_structure.txt
pause
cls

echo ================================================================================
echo 📋 DEMO 5: Generate ALL formats at once! 🎉
echo Command: python folder_tree.py . --formats all --style artisanal --icons artisanal --max-files 5
echo.
python folder_tree.py . --formats all --style artisanal --icons artisanal --max-files 5
echo.
echo 🎯 Check your directory - you now have TXT, PNG, and PDF files!
pause
cls

echo ================================================================================
echo 📋 DEMO 6: Professional style comparison
echo Command: python folder_tree.py . --style professional --icons professional --max-files 3
echo.
python folder_tree.py . --style professional --icons professional --max-files 3
pause
cls

echo ================================================================================
echo 📋 DEMO 7: Show only code files
echo Command: python folder_tree.py . --include-categories code --style artisanal --icons artisanal
echo.
python folder_tree.py . --include-categories code --style artisanal --icons artisanal
pause
cls

echo ================================================================================
echo 📋 DEMO 8: With file sizes for analysis
echo Command: python folder_tree.py . --style artisanal --icons artisanal --show-size --max-files 5
echo.
python folder_tree.py . --style artisanal --icons artisanal --show-size --max-files 5
pause
cls

echo ================================================================================
echo 🎉 DEMO COMPLETE! 
echo.
echo Generated files in this directory:
dir /b *.txt *.png *.pdf 2>nul
echo.
echo 📚 For more options, run: python folder_tree.py --help
echo 🌐 Visit: https://github.com/hanshendrickx/Folder_Tree_Claude
echo.
echo ================================================================================
echo 🚀 Want to use in other projects? Here are quick commands:
echo.
echo   📥 Download to any project:
echo   curl -O https://raw.githubusercontent.com/hanshendrickx/Folder_Tree_Claude/main/folder_tree.py
echo.
echo   🎨 Generate beautiful tree:
echo   python folder_tree.py . --style artisanal --icons artisanal --max-files 5
echo.
echo   📊 Create all formats:
echo   python folder_tree.py . --formats all --style artisanal --icons artisanal --max-files 5
echo.
echo ================================================================================

pause

REM Optional: Open GitHub repository
echo.
set /p choice="🌐 Open GitHub repository in browser? (y/n): "
if /i "%choice%"=="y" start https://github.com/hanshendrickx/Folder_Tree_Claude

echo.
echo 🎯 Thanks for trying Professional Folder Tree Generator!
pause