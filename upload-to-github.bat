@echo off
echo ========================================
echo Upload to GitHub - Endrada Joyeria
echo ========================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Git is not installed or not in PATH
    echo Please install Git from https://git-scm.com/download/win
    pause
    exit /b 1
)

echo Step 1: Initializing Git repository...
git init
if %errorlevel% neq 0 (
    echo ERROR: Failed to initialize Git
    pause
    exit /b 1
)

echo.
echo Step 2: Adding all files...
git add .
if %errorlevel% neq 0 (
    echo ERROR: Failed to add files
    pause
    exit /b 1
)

echo.
echo Step 3: Creating initial commit...
git commit -m "Initial commit - Endrada Joyeria website"
if %errorlevel% neq 0 (
    echo ERROR: Failed to create commit
    pause
    exit /b 1
)

echo.
echo ========================================
echo Git repository initialized successfully!
echo ========================================
echo.
echo NEXT STEPS:
echo 1. Create a new repository on GitHub: https://github.com/new
echo 2. Copy your repository URL (e.g., https://github.com/YOUR_USERNAME/endrada-joyeria.git)
echo 3. Run these commands in this folder:
echo    git remote add origin YOUR_REPOSITORY_URL
echo    git branch -M main
echo    git push -u origin main
echo.
echo Or run the setup-remote.bat file after creating your GitHub repository
echo.
pause
