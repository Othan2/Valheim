@echo off

cd %~dp0

echo Checking for world updates...
git fetch

for /f %%i in ('git status -s') do set updated=%%i

if not "%updated%" == "" (
    git pull origin main
    echo Applying world updates...
    xcopy /s "worlds" "%USERPROFILE%\AppData\LocalLow\IronGate\Valheim\worlds"
    echo Update finished
)

start "valheim.exe" "C:\Program Files (x86)\Steam\steamapps\common\Valheim\valheim.exe"
