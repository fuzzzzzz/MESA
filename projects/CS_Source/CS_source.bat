@echo off
echo Configuring Source SDK environment variables for Counter-Strike Source.

call "..\..\config\mesa_check_env.bat"

SET SOURCE_BIN_PATH=%STEAMDIR%\steamapps\common\Counter-Strike source\bin
SET GAME_PROJECT=%STEAMDIR%\steamapps\common\Counter-Strike source\cstrike
SET GAME_PROJECT_SRC=%MESADIR%\projects\CS_source
SET GAME_PROJECT_NAME="Counter-Strike Source"
SET VPROJECT=%STEAMDIR%\steamapps\common\Counter-Strike source\cstrike


echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SETX SOURCE_BIN_PATH "%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%

echo Set the Game Project Directory, it must be the same path than VPROJECT.
SETX GAME_PROJECT "%GAME_PROJECT%"
echo GAME_PROJECT=%GAME_PROJECT%

echo Mesa Path root directory
echo ...
SETX GAME_PROJECT_SRC %GAME_PROJECT_SRC%
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SETX GAME_PROJECT_NAME %GAME_PROJECT_NAME%
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%


echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%