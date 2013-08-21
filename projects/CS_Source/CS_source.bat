@echo off
echo Configuring Source SDK environment variables for Counter-Strike Source.

if "%STEAMDIR%"=="" (
	if exist "..\..\config\check_steam_dir.bat" (
		call "..\..\config\check_steam_dir.bat"
	) else (
		echo WARNING: STEAMDIR not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo STEAMDIR=%STEAMDIR%
)

if "%STEAMUSER%"=="" (
	if exist "..\..\config\check_steam_dir.bat" (
		call "..\..\config\check_steam_dir.bat"
	) else (
		echo WARNING: STEAMUSER not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo STEAMDIR=%STEAMUSER%
)

if "%MAYAVERSION%"=="" (
	if exist "..\..\config\check_steam_dir.bat" (
		call "..\..\config\check_steam_dir.bat"
	) else (
		echo WARNING: MAYAVERSION not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo STEAMDIR=%MAYAVERSION%
)

echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SET SOURCE_BIN_PATH=""%STEAMDIR%\steamapps\common\Counter-Strike source\bin"
SETX SOURCE_BIN_PATH ""%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%

echo Set the Game Project Directory, it must be the same path than VPROJECT.
SET GAME_PROJECT=%STEAMDIR%\steamapps\common\Counter-Strike source\cstrike
SETX GAME_PROJECT %GAME_PROJECT%
echo GAME_PROJECT=%GAME_PROJECT%

echo Mesa Path root directory
echo ...
SET GAME_PROJECT_SRC=%STEAMDIR%\steamapps\SourceMods\MESA\projects\CS_source
SETX GAME_PROJECT_SRC %GAME_PROJECT_SRC%
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SET GAME_PROJECT_NAME="Portal"
SETX GAME_PROJECT_NAME %GAME_PROJECT_NAME%
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%


echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
SET VPROJECT="%STEAMDIR%\steamapps\common\Counter-Strike source\cstrike
SETX VPROJECT "%VPROJECT%"
echo VPROJECT=%VPROJECT%


echo Set the path to the Mesa Icons path
echo ...
SET XBMLANGPATH=""%~d0%~p0..\..\scripts\icons;"
SETX XBMLANGPATH %XBMLANGPATH%
echo XBMLANGPATH=%XBMLANGPATH%

echo Set the name of your Game project here
echo ...
SET MAYA_SCRIPT_PATH="%~d0%~p0..\..\scripts;"
SETX MAYA_SCRIPT_PATH %MAYA_SCRIPT_PATH%
echo MAYA_SCRIPT_PATH=%MAYA_SCRIPT_PATH%