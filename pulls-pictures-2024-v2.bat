@echo off
title pulls pictures 2024

set "source1=%userprofile%\AppData\Local\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\LocalCache\Microsoft\IrisService"
set "source2=%userprofile%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets"
set "destination1=%userprofile%\Desktop\New computer images\Spotlight images"
set "destination2=%userprofile%\Desktop\New computer images\Lock images"

rem Create destination folders if they don't exist
if not exist "%destination1%" mkdir "%destination1%"
if not exist "%destination2%" mkdir "%destination2%"

rem Copy images from the first source folder to Spotlight images
for /r "%source1%" %%F in (*) do (
    rem Check if the image already exists in the destination folder
    if not exist "%destination1%\%%~nxF" (
        rem Copy the image to the destination folder if it doesn't exist
        copy "%%F" "%destination1%"
    )
)

rem Copy images from the second source folder to Lock images and add .jpg extension
for /r "%source2%" %%F in (*) do (
    rem Check if the image already exists in the destination folder
    if not exist "%destination2%\%%~nxF.jpg" (
        rem Copy the image to the destination folder with .jpg extension if it doesn't exist
        copy "%%F" "%destination2%\%%~nxF.jpg"
    )
)

echo All images copied successfully.
pause
