@echo off
echo Configuring MESA environment variables for Dota 2.
echo Credits http://puppet-master.net by Nicolas.Kirsch

SET SOURCE_BIN_PATH=%STEAMDIR%\steamapps\common\dota 2 beta\bin
SET GAME_PROJECT=%STEAMDIR%\steamapps\common\Dota 2 beta\dota
SET GAME_PROJECT_SRC=%MESADIR%\projects\Dota_2
SET GAME_PROJECT_NAME=Dota 2
SET VPROJECT=%STEAMDIR%\steamapps\common\Dota 2 beta\dota

echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SETX SOURCE_BIN_PATH "%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%

echo Set the Game Project Directory, it must be the same path than VPROJECT.
SETX GAME_PROJECT "%GAME_PROJECT%"
echo GAME_PROJECT=%GAME_PROJECT%

echo Maya Project Workspace directory.
echo ...
SETX GAME_PROJECT_SRC "%GAME_PROJECT_SRC%"
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SETX GAME_PROJECT_NAME "%GAME_PROJECT_NAME%"
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%

echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%