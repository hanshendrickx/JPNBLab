@echo off
echo GitHub Setup for JPNBLab
echo =========================

echo Step 1: Initializing Git repository...
git init

echo Step 2: Adding all files...
git add .

echo Step 3: Creating initial commit...
git commit -m "Initial commit: JPNBLab project setup"

echo Step 4: Adding GitHub remote...
git remote add origin https://github.com/hanshendrickx/JPNBLab.git

echo Step 5: Setting main branch...
git branch -M main

echo Step 6: Pushing to GitHub...
git push -u origin main

if errorlevel 1 (
    echo.
    echo ERROR: Setup failed!
    echo Make sure you created the repository on GitHub first:
    echo https://github.com/hanshendrickx/JPNBLab
    pause
    exit /b 1
)

echo.
echo =========================
echo ✓ GitHub setup complete!
echo ✓ Repository: https://github.com/hanshendrickx/JPNBLab
echo =========================
echo.
echo Use github-push.bat for future updates
pause