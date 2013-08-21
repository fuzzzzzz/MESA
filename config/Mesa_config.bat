@echo off
echo Configuring MESA environment variables for Source Engine powered by ValveSoftware.
echo NOTE : for source 2006, 2007, and 2009, you must to set the STEAMUSER
echo Credits http://puppet-master.net by Nicolas.Kirsch

// Set mesa Root Directory path on the disk.
::Example:
::SET MESADIR=C:\MESA
SET MESADIR=[ENTER-MESA-PATH]
SETX MESADIR %MESADIR%
echo MESADIR=%MESADIR%


:: WARNING ! 
:: The " is only at the beginning of the path, and there is not quote at the end and no whitespace.
:: Example : 
::SET STEAMDIR="G:\Steam
SET STEAMDIR="C:\Program Files (x86)\Steam
SETX STEAMDIR %STEAMDIR%
echo STEAMDIR=%STEAMDIR%

:: WARNING !
:: This is the username profile create on steam, and refer to the steam\steamapps\<USERNAME>\ directory to find the Binaries tools for source 2006, 2007 and 2009 tools.

SET STEAMUSER=[USERNAME]
SETX STEAMUSER %STEAMUSER%
echo STEAMUSER=%STEAMUSER%

:: This is required to copy the MESA shelf into the proper place in maya user folders.
:: Refer to the Suggested list of version of maya.

SET MAYAVERSION=2014-x64
SETX MAYAVERSION %MAYAVERSION%
echo MAYAVERSION=%MAYAVERSION%

pause
:: Maya VERSION Syntax examples:
::: MAYA 2014
:::: 2014-x64
::: MAYA 2013
:::: 2013-x64
:::: 2013
::: MAYA 2012
:::: 2012-x64
:::: 2012
::: MAYA 2011
:::: 2011-x64
:::: 2011
::: ETC...