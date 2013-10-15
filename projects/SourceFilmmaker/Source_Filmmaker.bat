@echo off
echo Configuring MESA environment variables for Source FilmMaker
echo Credits http://puppet-master.net by Nicolas.Kirsch

call "..\..\config\mesa_check_env.bat"

SET SOURCE_BIN_PATH=%STEAMDIR%\steamapps\common\SourceFilmmaker\game\bin
SET GAME_PROJECT=%STEAMDIR%\steamapps\common\SourceFilmmaker\game\usermod
SET GAME_PROJECT_SRC=%MESADIR%\projects\SourceFilmmaker
SET GAME_PROJECT_NAME="Source Filmmaker (usermod)"
SET VPROJECT=%STEAMDIR%\steamapps\common\SourceFilmmaker\game\usermod

echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SETX SOURCE_BIN_PATH "%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%

echo Set the Game Project Directory, it must be the same path than VPROJECT.
echo WARNING 
echo Edit the path if you need a custom path to your mod...
SETX GAME_PROJECT "%GAME_PROJECT%"
echo GAME_PROJECT=%GAME_PROJECT%

echo Maya Project Workspace directory.
echo ...
SETX GAME_PROJECT_SRC %GAME_PROJECT_SRC%
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SETX GAME_PROJECT_NAME %GAME_PROJECT_NAME%
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%

echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
echo WARNING 
echo Edit the path if you need a custom path for your mod...
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%
