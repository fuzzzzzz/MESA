:: This Batch will copy the MESA shelf into 
:: "C:\user\documents\maya\<YOUR-MAYA-VERSION>\prefs\shelves\" directory.
:: IF you are experiencing an issue you can copy the shelf by the hand.

xcopy /s /y "%~d0%~p0..\scripts\maya\prefs\shelves\shelf_MESA.mel" "%USERPROFILE%\documents\maya\%MAYAVERSION%\prefs\shelves\" /f
pause