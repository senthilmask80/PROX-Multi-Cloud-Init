#!/bin/bash
clear
maindir=$PWD
source $maindir/machine-i440fx.sh

VMID=$(whiptail --inputbox "Please enter the Virtual Machine ID?" 8 39 --title "VMID Dialog" 3>&1 1>&2 2>&3)                                                 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    vmid=$VMID
else
    echo "User selected Cancel."
fi

VMNAME=$(whiptail --inputbox "Please enter the Virtual Machine Name?" 8 39 --title "VM Hostname Dialog" 3>&1 1>&2 2>&3)
exitstatus=$?
if [ $exitstatus = 0 ]; then
    vmname=$VMNAME
else
    echo "User selected Cancel."
fi

URLID=$(whiptail --inputbox "Please enter the Cloud-init URL Link (e.g qcow2 or img) ?" 8 39 https:// --title "URL's Dialog" 3>&1 1>&2 2>&3)                                                                 
exitstatus=$?
if [ $exitstatus = 0 ]; then
    wget -q --show-progress $URLID
    FILE=$(basename $URLID)
    create_template $VMID $VMNAME $FILE
else
    echo "User selected Cancel."
fi

echo "Successfully images template is created"
exit
