@echo off
set URL = "www.google.com  www.youtube.com/coderboys"
For %%b in (%URL%) Do (Start /d "%programfiles%\Google\Chrome\Application" chrome.exe "%%b")