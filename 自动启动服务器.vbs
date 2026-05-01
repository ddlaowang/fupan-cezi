Set WshShell = CreateObject("WScript.Shell")

' Step 1: Start HTTP server on port 8000
WshShell.Run "cmd /c cd /d D:\¸´ÅÌ²á×Ó && python -m http.server 8000 --bind 0.0.0.0", 0, False

' Wait 3 seconds
WScript.Sleep 3000

' Step 2: Start Cloudflare Tunnel
WshShell.Run "cmd /c D:\¸´ÅÌ²á×Ó\cloudflared.exe tunnel --url http://localhost:8000 > D:\¸´ÅÌ²á×Ó\tunnel_url.txt 2>&1", 0, False
