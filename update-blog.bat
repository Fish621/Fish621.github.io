@echo off
cd /d %~dp0  # 切换到批处理文件所在目录
echo 当前目录: %cd%

if exist .git (
    echo 找到 Git 仓库
) else (
    echo 错误: 当前目录不是 Git 仓库!
    pause
    exit /b 1
)

git add .
git commit -m "Update blog"
git push origin main
pause