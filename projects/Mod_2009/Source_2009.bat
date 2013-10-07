@echo off
echo Configuring MESA environment variables for Source Sdk Base 2007.
echo WANRNING :
echo This tools are deprecated by Valve Software, use the sdk of the game you want to modify.
echo Credits http://puppet-master.net by Nicolas.Kirsch

call "..\..\config\mesa_check_env.bat"

echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SET SOURCE_BIN_PATH=""%STEAMDIR%\steamapps\%STEAMUSER%\SourceSDK\bin\source2009\bin"
SETX SOURCE_BIN_PATH ""%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%


echo Set the Game Project Directory, it must be the same path than VPROJECT.
echo ...  [MOD_DIRECTORY] ! YOU MUST EDIT THIS 'PATH' !

SET GAME_PROJECT=%STEAMDIR%\steamapps\SourceMods\[MOD_DIRECTORY]
SETX GAME_PROJECT "%GAME_PROJECT%"
echo GAME_PROJECT=%GAME_PROJECT%


echo Maya Project Workspace directory.
echo ...
SET GAME_PROJECT_SRC=%STEAMDIR%\steamapps\SourceMods\MESA\projects\mod_2009
SETX GAME_PROJECT_SRC %GAME_PROJECT_SRC%
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SET GAME_PROJECT_NAME="Mod 2007"
SETX GAME_PROJECT_NAME %GAME_PROJECT_NAME%
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%

echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
echo [MOD_DIRECTORY] ! YOU MUST EDIT THIS PATH !
SET VPROJECT=%STEAMDIR%\steamapps\SourceMods\[MOD_DIRECTORY]
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%