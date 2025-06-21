@echo off
cd /d %~dp0
echo Current directory: %cd%

if exist .git (
    echo Git repository found
) else (
    echo Error: Not a Git repository!
    pause
    exit /b 1
)

git add .
git commit -m "Update blog"
git push origin main
pause