#!/bin/bash
                                                        
clear

echo "  __  __              ___        __        "
echo " |  \/  | __ _  ___  |_ _|_ __  / _| ___   "
echo " | |\/| |/ _  |/ __|  | ||  _ \| |_ / _ \  "
echo " | |  | | (_| | (__   | || | | |  _| (_) | "
echo " |_|  |_|\__,_|\___| |___|_| |_|_|  \___/  "
echo "                                           "
echo "            Barringtec © `date '+%Y'`   "

                                                 
CPU_MODEL=`sysctl -n machdep.cpu.brand_string`;
MODEL_ID=`sysctl -n hw.model`;
MODEL_NUMBER=`system_profiler SPHardwareDataType | grep "Model Number" | awk '{print $3}'`;
MEMORY_SIZE=`sysctl hw.memsize | awk '{print $2 / 1024**3}'`;
SOLID_STATE_CHECK=`diskutil info disk0 | grep "Solid State" | awk '{print $3}'`;
DISK_SIZE=`diskutil info disk0 | grep "Disk Size" | awk '{print $3}'`;
MAC_OS_VERSION=`sw_vers -productVersion`;
SERIAL_NUMBER=`ioreg -l | grep IOPlatformSerialNumber | awk '{print $4}' | tr -d \"`;
IP_ADDRESS=`ipconfig getifaddr en0`;


echo ""
echo "==========================================="
echo ""
echo "CPU Model:      $CPU_MODEL"
echo "Model ID:       $MODEL_ID"
echo "Model Number:   $MODEL_NUMBER"
echo "Memory:         $MEMORY_SIZE GB"
echo "SSD Check:      $SOLID_STATE_CHECK"
echo "Disk Size:      ${DISK_SIZE%.*} GB"
echo "OS Version:     $MAC_OS_VERSION"          
echo ""

echo "Serial Number:  $SERIAL_NUMBER"
echo "IP Address:     $IP_ADDRESS"
echo ""
echo "==========================================="
echo ""

exit 0
