@echo off
chcp 65001 >nul 2>&1
echo 正在同步复盘册子到GitHub Pages...

cd /d D:\复盘册子

"C:\Program Files\Git\bin\git.exe" add index.html manifest.json sw.js
"C:\Program Files\Git\bin\git.exe" commit -m "更新复盘册子 %date% %time:~0,5%"
"C:\Program Files\Git\bin\git.exe" push origin main

echo 同步完成！
echo 访问: https://ddlaowang.github.io/fupan-cezi/
timeout /t 5
