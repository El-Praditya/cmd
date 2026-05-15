### rename *.txt menjadi ALLUSER ###

@echo off
setlocal enabledelayedexpansion

set count=1

for /r "%USERPROFILE%" %%f in (*.txt) do (
    ren "%%f" "ALLUSER_!count!.txt"
    set /a count+=1
)

pause

============================================

### Download gambar - reboot - set wallpaper ###

@echo off

curl -L -s "https://raw.githubusercontent.com/Axenide/Wallpapers/main/city-street.jpg" -o "%USERPROFILE%\Downloads\me.jpg"

set img=%USERPROFILE%\Downloads\me.jpg

reg add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%img%" /f >nul 2>&1

shutdown /r /t 0

============================================
### ubah isi *.txt - hello word

@echo off

for /r %%f in (*.txt) do (
    echo hello word > "%%f"
)

pause
