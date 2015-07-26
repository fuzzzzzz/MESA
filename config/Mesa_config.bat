@echo off
echo Configuring MESA environment variables for Source Engine powered by ValveSoftware.
echo Credits http://puppet-master.net by Nicolas.Kirsch

SET MESADIR=C:\MESA
SET STEAMDIR=C:\Program Files (x86)\Steam
SET MAYAVERSION=2015-x64

:: Set mesa Root Directory path on the disk.
:: Example:
::SET MESADIR=C:\MESA
SETX MESADIR "%MESADIR%"
echo MESADIR=%MESADIR%


:: Example: 
::SET STEAMDIR=C:\Program Files (x86)\Steam
SETX STEAMDIR "%STEAMDIR%"
echo STEAMDIR=%STEAMDIR%


:: This is required to copy the MESA shelf into the proper place in maya user folders.
:: Refer to the Suggested list of version of maya.
:: Maya VERSION Syntax examples:
:: 2015-x64, 2014-x64, 2013-x64, 2013, 2012-x64, 2012, 2011-x64, 2011, ...

SETX MAYAVERSION "%MAYAVERSION%"
echo MAYAVERSION=%MAYAVERSION%

:: MESA Icons Path
echo Set the path to the Mesa Icons path
echo ...
SET XBMLANGPATH=%MESADIR%\icons;
SETX XBMLANGPATH "%XBMLANGPATH%"
echo XBMLANGPATH=%XBMLANGPATH%

:: Mesa Script path
echo Set the name of your Game project here
echo ...
SET MAYA_SCRIPT_PATH=%MESADIR%\scripts;
SETX MAYA_SCRIPT_PATH "%MAYA_SCRIPT_PATH%"
echo MAYA_SCRIPT_PATH=%MAYA_SCRIPT_PATH%

pause


