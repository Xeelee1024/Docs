@ECHO OFF
TITLE FFmpeg M3U8 Downloader
COLOR 0A

ECHO Enter m3u8 link:
SET /P URL=
ECHO Enter output filename:
SET /P OUT=

ECHO ----------------------------------------------------------------
ECHO ----------------------downloading...----------------------------
ECHO ----------------------------------------------------------------

ffmpeg.exe -protocol_whitelist "concat,file,http,https,tcp,tls,crypto" -i "%URL%" -c copy "%OUT%"
PAUSE
