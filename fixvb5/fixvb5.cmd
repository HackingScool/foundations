@echo off

rem techsviewer virtual disk image
rem https://goo.gl/OKgCeH

cd "C:\Program Files\Oracle\VirtualBox\"
VBoxManage.exe modifyvm "%1" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage.exe setextradata "%1" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage.exe setextradata "%1" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage.exe setextradata "%1" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage.exe setextradata "%1" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage.exe setextradata "%1" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
VBoxManage.exe setextradata "%1" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

rem  display resolutions
rem  0 - 640x480
rem  1 - 800x600
rem  2 - 1024x768 (default)
rem  3 - 1280x1024
rem  4 - 1440x900
rem  5 - 1920x1200

VBoxManage.exe setextradata "%1" VBoxInternal2/EfiGopMode 2
