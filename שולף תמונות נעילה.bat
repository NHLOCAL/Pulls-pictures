@echo off
chcp 1255
if not exist "%userprofile%\Desktop\������ ����� ����\������ �����" md "%userprofile%\Desktop\������ ����� ����\������ �����"
xcopy /s /Y "%USERPROFILE%\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets" "%userprofile%\Desktop\������ ����� ����\������ �����"

cd /d "%userprofile%\Desktop\������ ����� ����\������ �����"
for %%i  in (*) do (if not exist "%%i.jpg" (ren %%i *.jpg) else (del %%i))

