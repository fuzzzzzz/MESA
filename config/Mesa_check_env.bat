@echo off
echo Configuring MESA environment variables
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