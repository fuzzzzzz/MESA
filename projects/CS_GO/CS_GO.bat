@echo off
echo Configuring MESA environment variables for Counter-Strike Globale Offensive.
echo Credits http://puppet-master.net by Nicolas.Kirsch

call "..\..\config\mesa_check_env.bat"

echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SET SOURCE_BIN_PATH=""%STEAMDIR%\steamapps\common\Counter-Strike Globale Offensive\bin"
SETX SOURCE_BIN_PATH ""%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%

echo Set the Game Project Directory, it must be the same path than VPROJECT.
SET GAME_PROJECT=%STEAMDIR%\steamapps\common\Counter-Strike Globale Offensive\csgo
SETX GAME_PROJECT "%GAME_PROJECT%"
echo GAME_PROJECT=%GAME_PROJECT%

echo Maya Project Workspace directory.
echo ...
SET GAME_PROJECT_SRC=%MESADIR%\projects\CS_GO
SETX GAME_PROJECT_SRC %GAME_PROJECT_SRC%
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SET GAME_PROJECT_NAME="Counter-Strike Globale Offensive"
SETX GAME_PROJECT_NAME %GAME_PROJECT_NAME%
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%


echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
SET VPROJECT=%STEAMDIR%\steamapps\common\Counter-Strike Globale Offensive\csgo
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%
