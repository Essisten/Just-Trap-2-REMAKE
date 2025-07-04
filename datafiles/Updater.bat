@echo off
setlocal enabledelayedexpansion

:: Set the variables
set "exe_name=I wanna be the Just Trap 2 REMAKE.exe"
set "exe_path=%~dp0\%exe_name%"
set "github_repo=Essisten/Just-Trap-2-REMAKE"
set "download_url=https://github.com/%github_repo%/releases/latest/download/%exe_name%"

:: Get the local version of the executable using PowerShell if available
if exist "%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe" (
    for /f "tokens=*" %%G in ('powershell -command "(Get-Item '%exe_path%').VersionInfo.FileVersion"') do (
        set "local_version=%%G"
    )
) else (
    echo PowerShell is not available. Using alternative method to get file version.
    :: Alternative method to get file version (less reliable)
    set "local_version=0.0.0.0"
)

:: Use VBScript to get the latest release version from GitHub
echo Set objHTTP = CreateObject("MSXML2.XMLHTTP") > get_version.vbs
echo objHTTP.open "GET", "https://api.github.com/repos/%github_repo%/releases/latest", False >> get_version.vbs
echo objHTTP.send >> get_version.vbs
echo WScript.Echo objHTTP.responseText >> get_version.vbs

for /f "tokens=*" %%G in ('cscript //nologo get_version.vbs ^| findstr "tag_name"') do (
    set "latest_version=%%G"
    set "latest_version=!latest_version:*v=!"
    set "latest_version=!latest_version:~0,-2!"
)

del get_version.vbs

:: Compare the versions
if "!local_version!" lss "!latest_version!" (
    echo Downloading the latest version...
    bitsadmin /transfer myDownloadJob /download /priority normal "%download_url%" "%exe_path%"
    echo The executable has been updated to version !latest_version!.
) else (
    echo The executable is already up to date.
)

endlocal
