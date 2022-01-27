@ECHO OFF
TITLE FFmpeg M3U8 Downloader
cd /d "%~dp0"
COLOR 0A

ECHO Enter m3u8 link:
SET /P URL=
if /i "%url:~,1%%url:~-1,1%"=="""" set "url=%url:~1,-1%"

ECHO Enter output filename:
SET /P OUT=

echo downloading...

ffmpeg.exe -protocol_whitelist "concat,file,http,https,tcp,tls,crypto" -i "%URL%" -c copy "%OUT%"
PAUSE
