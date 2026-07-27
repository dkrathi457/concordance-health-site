@echo off
setlocal

set "DIR=%~dp0"
set "URLDIR=%DIR:\=/%"
set "CHROME=C:\Program Files\Google\Chrome\Application\chrome.exe"

if not exist "%CHROME%" (
  echo Could not find Chrome at "%CHROME%".
  echo Edit this file and update the CHROME path, then run it again.
  pause
  exit /b 1
)

echo Regenerating social preview image from assets\og-image-source.html...

"%CHROME%" --headless --disable-gpu --hide-scrollbars --window-size=1200,630 --virtual-time-budget=3000 --screenshot="%DIR%assets\og-image.png" "file:///%URLDIR%assets/og-image-source.html"

echo.
echo Done. Updated: assets\og-image.png
echo Remember to commit and push this file so link previews pick up the change.
pause
