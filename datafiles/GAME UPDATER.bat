@echo off
setlocal enabledelayedexpansion

:: Set the variables using relative paths
set "script_dir=%~dp0"
set "exe_name=I wanna be the Just Trap 2 REMAKE.exe"
set "zip_name=Windows.zip"
set "exe_path=%script_dir%%exe_name%"
set "zip_path=%script_dir%%zip_name%"
set "github_repo=Essisten/Just-Trap-2-REMAKE"
set "download_url=https://github.com/%github_repo%/releases/latest/download/%zip_name%"

if exist "%exe_name%" (
    for /f "usebackq delims=" %%a in (`powershell -Command "(Get-Item '%exe_name%').VersionInfo.ProductVersion"`) do (
        set "local_version=%%a"
    )
) else (
    echo Executable not found. Assuming version 0.0.0
)

:: Debug output to check the local version
echo Local Version Retrieved: %local_version%

:: If the executable does not exist or version cannot be retrieved, set a default version
if "%local_version%"=="" (
    set "local_version=0.0.0.0"
    echo No version info found, defaulting to 0.0.0.0
)

:: Use PowerShell to get the latest release version from GitHub
powershell -Command "$wc = New-Object System.Net.WebClient; $wc.Headers.Add('User-Agent', 'PowerShell'); $response = $wc.DownloadString('https://api.github.com/repos/%github_repo%/releases/latest'); if ($response -match '\"tag_name\":\"v?([0-9.]+)\"') { $matches[1] } else { '0.0.0.0' }" > "%temp%\latest_version.txt"

:: Read the latest version from a temporary file
set /p latest_version= < "%temp%\latest_version.txt"

:: Debug output to check the versions
echo Latest Version Retrieved: %latest_version%

:: Compare the versions
if "%local_version%" LSS "%latest_version%" (
    echo Downloading the latest version...

    :: Use PowerShell to download the file
    powershell -Command "(New-Object System.Net.WebClient).DownloadFile('%download_url%', '%zip_path%')"

    :: Use VBScript to unzip the downloaded file
    cscript //nologo "unzip.vbs" "%zip_path%" "%~dp0"

    echo The executable has been updated to version %latest_version%.
    echo Deleting the zip archive...
    del "%zip_path%"
) else (
    echo The executable is already up to date.
)
pause
endlocal