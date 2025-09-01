@echo off
echo GitHub Project Creator
echo =====================

REM Ask for project name
set /p PROJECT_NAME="Enter your project name: "

REM Create project folder
mkdir "%PROJECT_NAME%"
cd "%PROJECT_NAME%"

echo Created project: %PROJECT_NAME%
echo.
echo Next steps:
echo 1. Go to GitHub.com and create new repository
echo 2. Name it: %PROJECT_NAME%
echo 3. Make it PUBLIC
echo 4. Run setup.bat in this folder
echo.
pause