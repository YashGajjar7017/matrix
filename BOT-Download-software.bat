@echo off
echo Wait until your ccsetup downloaded ......
start https://bits.avcdn.net/productfamily_CCLEANER/insttype_FREE/platform_WIN_PIR/installertype_ONLINE/build_RELEASE/cookie_mmm_ccl_003_999_a6a_m /msi EULA_ACCEPT=YES /qn
:wait
echo Wait for 10 sec
pause
start C:\users\%username%\downloads\ccsetup588.exe /msi EULA_ACCEPT=YES /qn
goto wait