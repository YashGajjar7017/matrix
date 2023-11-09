@echo off

setlocal enabledelayedexpansion

:: This is to set variables that represent backspace and carriage return.   
:: I begin strings with these, instead of ending strings with only CR,
:: so that the cursor isn't flashing under the first character of the     
:: progress bar. Beginning each string with a space, and ending each 
:: with !CR! only is another possible workaround.

for /f %%a in ('copy /Z "%~dpf0" nul') do set "CR=%%a"
for /f %%a in ('"prompt $H&for %%b in (0) do rem"') do set "BS=%%a"

<nul set /p"=        [          ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■         ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■        ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■       ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■      ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■■     ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■■■    ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■■■■   ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■■■■■  ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■■■■■■ ]" & Timeout /t 1 >nul
<nul set /p"=!BS!!CR![■■■■■■■■■■]" & Timeout /t 1 >nul