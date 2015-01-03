SET vimrc="%userprofile%\.vimrc"
IF EXIST %vimrc% del /F %vimrc%
 
mklink %vimrc% "%~dp0vimfiles\.vimrc"

SET conemu="%appdata%\conemu.xml"
IF EXIST %conemu% del /F %conemu%
mklink %conemu% "%~dp0conemu.xml"

reg add HKEY_CURRENT_USER\Software\Microsoft\visualstudio\12.0\ImportExportSettings\UserPreferences /f /v ImportBrowsePath /d "%~dp0" /t reg_sz
"c:\Program Files (x86)\Microsoft Visual Studio 12.0\Common7\IDE\devenv.exe" /ResetSettings "%~dp0CurrentSettings.vssettings"
