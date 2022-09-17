@echo off
chcp 1255
xcopy /s /Y "%userprofile%\AppData\Local\Microsoft\BingWallpaperApp\WPImages" "%userprofile%\DESKTOP\תמונות חדשות מחשב"
del  "%userprofile%\DESKTOP\תמונות חדשות מחשב\WPPrefs.bin"