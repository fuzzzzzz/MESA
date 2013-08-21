@echo off
echo Configuring MESA environment variables for Source Sdk Base 2006 (OrangeBox sdk tools) .
echo Credits http://puppet-master.net by Nicolas.Kirsch

if "%MESADIR%"=="" (
	if exist "..\..\config\mesa_config.bat" (
		call "..\..\config\mesa_config.bat"
	) else (
		echo WARNING: MESADIR not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo MESADIR=%MESADIR%
)

if "%STEAMDIR%"=="" (
	if exist "%MESADIR%\config\mesa_config.bat" (
		call "%MESADIR%\config\mesa_config.bat"
	) else (
		echo WARNING: STEAMDIR not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo STEAMDIR=%STEAMDIR%
)

if "%STEAMUSER%"=="" (
	if exist "%MESADIR%\config\mesa_config.bat" (
		call "%MESADIR%\config\mesa_config.bat"
	) else (
		echo WARNING: STEAMUSER not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo STEAMDIR=%STEAMUSER%
)

if "%MAYAVERSION%"=="" (
	if exist "%MESADIR%\config\mesa_config.bat" (
		call "%MESADIR%\config\mesa_config.bat"
	) else (
		echo WARNING: MAYAVERSION not set, and check_steam_dir.bat file not present.
		pause
	)
) else (
	echo STEAMDIR=%MAYAVERSION%
)




echo "Set Bin directory path, where Studiomdl.exe and "vtex.exe" are located."
echo ...
SET SOURCE_BIN_PATH=""%STEAMDIR%\steamapps\%STEAMUSER%\SourceSDK\bin\orangebox\bin"
SETX SOURCE_BIN_PATH ""%SOURCE_BIN_PATH%"
echo SOURCE_BIN_PATH=%SOURCE_BIN_PATH%


echo Set the Game Project Directory, it must be the same path than VPROJECT.
echo ...  [MOD_DIRECTORY] ! YOU MUST EDIT THIS 'PATH' !

SET GAME_PROJECT=%STEAMDIR%\steamapps\SourceMods\[MOD_DIRECTORY]
SETX GAME_PROJECT %GAME_PROJECT%
echo GAME_PROJECT=%GAME_PROJECT%


echo Maya Project Workspace directory.
echo ...
SET GAME_PROJECT_SRC=%STEAMDIR%\steamapps\SourceMods\MESA\projects\mod_2006_ob
SETX GAME_PROJECT_SRC %GAME_PROJECT_SRC%
echo GAME_PROJECT_SRC=%GAME_PROJECT_SRC%

echo Set the name of your Game project here
echo ...
SET GAME_PROJECT_NAME="Mod 2006 Episode OrangeBox"
SETX GAME_PROJECT_NAME %GAME_PROJECT_NAME%
echo GAME_PROJECT_NAME=%GAME_PROJECT_NAME%

echo Set the VPROJECT Directory, it must be the same path than GAME_PROJECT.
echo ...
echo [MOD_DIRECTORY] ! YOU MUST EDIT THIS PATH !
SET VPROJECT="%STEAMDIR%\steamapps\SourceMods\[MOD_DIRECTORY]
SETX VPROJECT %VPROJECT%
echo VPROJECT=%VPROJECT%

echo Set the path to the Mesa Icons path
echo ...
SET XBMLANGPATH=%MESADIR%\icons;
SETX XBMLANGPATH %XBMLANGPATH%
echo XBMLANGPATH=%XBMLANGPATH%

echo Set the name of your Game project here
echo ...
SET MAYA_SCRIPT_PATH=%MESADIR%\scripts;
SETX MAYA_SCRIPT_PATH %MAYA_SCRIPT_PATH%
echo MAYA_SCRIPT_PATH=%MAYA_SCRIPT_PATH%