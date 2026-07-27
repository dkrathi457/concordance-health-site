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

echo Regenerating Services and Pricing PDF from pricing.html...

"%CHROME%" --headless --disable-gpu --no-pdf-header-footer --print-to-pdf="%DIR%assets\Concordance-Health-AI-Services-and-Pricing.pdf" "file:///%URLDIR%pricing.html"

echo.
echo Done. Updated: assets\Concordance-Health-AI-Services-and-Pricing.pdf
echo Remember to commit and push this file so the live site picks it up.
pause
