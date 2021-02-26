@echo off

cd %~dp0

echo Checking for world updates...
git pull origin main

echo Applying world updates...
xcopy /s "worlds" "%USERPROFILE%\AppData\LocalLow\IronGate\Valheim\worlds"

echo Update finished
start "valheim.exe" "C:\Program Files (x86)\Steam\steamapps\common\Valheim\valheim.exe"
