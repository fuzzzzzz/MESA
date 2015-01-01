@echo off
echo Configuring MESA environment variables for Day of Defeat Source.
echo Credits http://puppet-master.net by Nicolas.Kirsch

SET SOURCE_BIN_PATH=%STEAMDIR%\steamapps\common\Day of Defeat source\bin
SET GAME_PROJECT=%STEAMDIR%\steamapps\common\Day of Defeat source\dod
SET GAME_PROJECT_SRC=%MESADIR%\projects\Dod_source
SET GAME_PROJECT_NAME=Day of Defeat Source
SET VPROJECT=%STEAMDIR%\steamapps\common\Day of Defeat source\dod

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

pause