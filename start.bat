@echo off
start "" wxstart.exe --config=control\config\stalker\config_1.txt --console-log=logs\console_1.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_2.txt --storage-log=logs\storage_2.txt --console-log=logs\console_2.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_3.txt --storage-log=logs\storage_3.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_4.txt --storage-log=logs\storage_4.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_5.txt --storage-log=logs\storage_5.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_6.txt --storage-log=logs\storage_6.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_7.txt --storage-log=logs\storage_7.txt
timeout /t 3 /nobreak >nul
start "" wxstart.exe --config=control\config\stalker\config_8.txt --storage-log=logs\storage_8.txt