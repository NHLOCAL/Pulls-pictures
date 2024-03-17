@echo off
set "source=%userprofile%\AppData\Local\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\LocalCache\Microsoft\IrisService"
set "destination=%userprofile%\Desktop\New computer images\Spotlight images"

rem Create destination folder if it doesn't exist
if not exist "%destination%" mkdir "%destination%"

rem Loop through each JPG file in the source folder
for /r "%source%" %%F in (*.jpg) do (
    rem Check if the image already exists in the destination folder
    if not exist "%destination%\%%~nxF" (
        rem Copy the image to the destination folder if it doesn't exist
        copy "%%F" "%destination%"
    )
)

echo All JPG files copied successfully.
pause