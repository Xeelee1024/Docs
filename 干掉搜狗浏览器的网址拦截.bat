cd /d %~dp0
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit

echo 127.0.0.1 get.sogou.com >> c:\windows\system32\drivers\etc\hosts
echo 127.0.0.1 vinci.ie.sogou.com >> c:\windows\system32\drivers\etc\hosts
