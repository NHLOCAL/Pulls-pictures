@echo off
chcp 1255
if not exist "%userprofile%\Desktop\תמונות חדשות מחשב\תמונות נעילה" md "%userprofile%\Desktop\תמונות חדשות מחשב\תמונות נעילה"
xcopy /s /Y "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "%userprofile%\Desktop\תמונות חדשות מחשב\תמונות נעילה"

cd /d "%userprofile%\Desktop\תמונות חדשות מחשב\תמונות נעילה"
for %%i  in (*) do (if not exist "%%i.jpg" (ren %%i *.jpg) else (del %%i))

