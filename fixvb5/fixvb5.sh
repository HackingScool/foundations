#!/bin/bash

#https://goo.gl/OKgCeH

VBoxManage modifyvm "$1" --cpuidset 00000001 000106e5 00100800 0098e3fd bfebfbff
VBoxManage setextradata "$1" "VBoxInternal/Devices/efi/0/Config/DmiSystemProduct" "iMac11,3"
VBoxManage setextradata "$1" "VBoxInternal/Devices/efi/0/Config/DmiSystemVersion" "1.0"
VBoxManage setextradata "$1" "VBoxInternal/Devices/efi/0/Config/DmiBoardProduct" "Iloveapple"
VBoxManage setextradata "$1" "VBoxInternal/Devices/smc/0/Config/DeviceKey" "ourhardworkbythesewordsguardedpleasedontsteal(c)AppleComputerInc"
VBoxManage setextradata "$1" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1
VBoxManage setextradata "$1" "VBoxInternal/Devices/smc/0/Config/GetKeyFromRealSMC" 1

# display resolutions
# 0 - 640x480
# 1 - 800x600
# 2 - 1024x768
# 3 - 1280x1024
# 4 - 1440x900
# 5 - 1920x1200
VBoxManage setextradata "$1" VBoxInternal2/EfiGopMode 4
