@echo off
REM Remove current DNS settings
netsh interface ip set dns "Ethernet" static 0.0.0.0
netsh interface ip add dns "Ethernet" 10.233.161.2
netsh interface ip add dns "Ethernet" 10.233.61.5 index=2
netsh interface ip add dns "Ethernet" 10.233.161.3 index=3
netsh interface ip add dns "Ethernet" 10.233.61.6 index=4

REM For wireless connections, use the interface name "Wi-Fi" instead
REM Uncomment the lines below if you need to configure a wireless connection
REM netsh interface ip set dns "Wi-Fi" static 0.0.0.0
REM netsh interface ip add dns "Wi-Fi" 10.233.161.2
REM netsh interface ip add dns "Wi-Fi" 10.233.61.5 index=2
REM netsh interface ip add dns "Wi-Fi" 10.233.161.3 index=3
REM netsh interface ip add dns "Wi-Fi" 10.233.61.6 index=4

echo DNS settings updated successfully.
pause
