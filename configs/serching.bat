SET SF="HKEY_LOCAL_MACHINE\SOFTWARE\R-core\R"
FOR /F "tokens=2,*" %%I IN ('REG QUERY %SF% /v InstallPath 2^>NUL^|FIND /I "InstallPath"') DO SET "APath=%%~J"
echo %APath% >> D:\bing_autowallpaper-master\bing_autowallpaper-master\configs\Rpath.txt
FOR /F "delims=:,tokens=1" %%i in (D:\bing_autowallpaper-master\bing_autowallpaper-master\configs\Rpath.txt) do %%i:
pause