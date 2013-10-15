@echo off
echo Configuring MESA environment variables for Dreams Source 2013 SinglePlayer mod.
echo Credits http://puppet-master.net by Nicolas.Kirsch

call "..\..\config\mesa_check_env.bat" 

SET SOURCE_BIN_PATH=%STEAMDIR%\steamapps\common\Source SDK Base 2013 Singleplayer\bin
SET GAME_PROJECT=%STEAMDIR%\steamapps\SourceMods\dreams
SET GAME_PROJECT_SRC=%MESADIR%\Projects\Dreams_2013_SP
SET GAME_PROJECT_NAME="Dreams 2013 SinglePlayer"
SET VPROJECT=%STEAMDIR%\steamapps\SourceMods\dreams

echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SETX SOURCE_BIN_PATH "%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%

echo Set the Game Project Directory, it must be the same path than VPROJECT.
echo ...  [MOD_DIRECTORY] ! YOU MUST EDIT THIS 'PATH' !
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
echo [MOD_DIRECTORY] ! YOU MUST EDIT THIS PATH !
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%

pause