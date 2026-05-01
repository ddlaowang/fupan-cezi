@echo off
chcp 65001 >nul 2>&1

REM 启动HTTP服务器
cd /d D:\复盘册子
start /min python -m http.server 8000 --bind 0.0.0.0

REM 等待服务器启动
timeout /t 3 /nobreak >nul

REM 启动Cloudflare Tunnel
start /min D:\复盘册子\cloudflared.exe tunnel --url http://localhost:8000

REM 等待隧道URL生成
timeout /t 10 /nobreak >nul

REM 提取公网URL并保存
for /f "tokens=*" %%i in ('findstr /C:"trycloudflare.com" D:\复盘册子\cf_err.txt 2^>nul') do (
    echo %%i > D:\复盘册子\当前公网地址.txt
)

echo 复盘册子服务器已启动！
