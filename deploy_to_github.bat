@echo off
cd /d "%~dp0"
echo ======================================================================
echo    Deploying Forensic MCQs Visualizer to GitHub Pages
echo ======================================================================
echo.

if not exist ".git" (
    echo Initializing Git repository in web_dist...
    git init
    git branch -M main
)

echo Adding files...
git add .
git commit -m "Deploy Forensic MCQs Visualizer"

echo.
echo ======================================================================
echo To push to your GitHub account:
echo 1. Create a new repository on GitHub (e.g. named: forensic-mcqs-viewer)
echo 2. Run this command once:
echo    git remote add origin https://github.com/YOUR_USERNAME/forensic-mcqs-viewer.git
echo 3. Run:
echo    git push -u origin main --force
echo.
echo Then go to GitHub Repo -> Settings -> Pages -> Deploy from branch: main
echo Your live link will be: https://YOUR_USERNAME.github.io/forensic-mcqs-viewer/
echo ======================================================================
echo.
pause
