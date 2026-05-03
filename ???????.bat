@echo off
chcp 65001 >nul
title 复盘册子本地服务器
echo ========================================
echo   复盘册子 2.0 - 本地服务器
echo ========================================
echo.
echo 启动中...
echo 访问地址: http://localhost:8000
echo 按 Ctrl+C 停止服务器
echo.
cd /d "D:\复盘册子"
python -m http.server 8000 --bind 127.0.0.1
pause
