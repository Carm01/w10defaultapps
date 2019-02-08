:: COPY XML TO Location

cd /d "%~dp0"
IF EXIST C:\ProgramData\Layouts\ (
xcopy defaultApps.xml C:\ProgramData\Layouts\defaultApps.xml* /y
) ELSE (
mkdir C:\ProgramData\Layouts\
copy defaultApps.xml C:\ProgramData\Layouts\ /y
)
