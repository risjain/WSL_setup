choco install vcxsrv -y -ia "'/D=C:\Program Files\VcXsrv'" --force

copy /y "%ProgramData%\Microsoft\Windows\Start Menu\Programs\VcXsrv\Xlaunch.lnk" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup"