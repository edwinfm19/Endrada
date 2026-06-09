@echo off
echo ========================================
echo Connect to GitHub Repository
echo ========================================
echo.

set /p REPO_URL="Enter your GitHub repository URL (e.g., https://github.com/YOUR_USERNAME/endrada-joyeria.git): "

echo.
echo Adding remote origin...
git remote add origin %REPO_URL%
if %errorlevel% neq 0 (
    echo ERROR: Failed to add remote
    echo The remote might already exist. Removing and re-adding...
    git remote remove origin
    git remote add origin %REPO_URL%
)

echo.
echo Setting branch to main...
git branch -M main

echo.
echo Pushing to GitHub...
git push -u origin main
if %errorlevel% neq 0 (
    echo.
    echo ERROR: Failed to push to GitHub
    echo.
    echo Possible reasons:
    echo 1. Your GitHub repository URL is incorrect
    echo 2. You need to authenticate with GitHub
    echo 3. The repository doesn't exist yet
    echo.
    echo Please check:
    echo - Your repository URL is correct
    echo - You're logged in to GitHub (git will prompt for credentials)
    echo - The repository exists on GitHub
    echo.
    pause
    exit /b 1
)

echo.
echo ========================================
echo Successfully pushed to GitHub!
echo ========================================
echo.
echo Your website is now on GitHub!
echo Next step: Deploy to Vercel at https://vercel.com
echo.
pause
