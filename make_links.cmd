SET vimrc="%userprofile%\.vimrc"
IF EXIST %vimrc% del /F %vimrc%
 
mklink %vimrc% "%~dp0vimfiles\.vimrc"
