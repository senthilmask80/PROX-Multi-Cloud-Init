#!/bin/bash

clear

maindir=$PWD

function firstmainmenu()
{
while true
do
# Create a whiptail menu, pass the tool name if selected
menuselection=$(whiptail --title "Diagnostics" --nocancel \
  --menu "Select Tool:" 0 0 4   \
   "1" " Cloud-Init OS for Linux"  \
   "2" " Cloud-Init OS for BSD"  \
   "3" " Cloud-Init OS URL Based"  \
   "Exit" " Close and Exit" 3>&1 1>&2 2>&3 )
   
# Do an action for the selected menu item
case $menuselection in
	"1" )
	   source $maindir/linux-os-menu.env
	   LINUX
       ;;
     "2" )
	   source $maindir/bsd-os-menu.env  
       BSD
       ;;
     "3" )
       URL
       ;;
     "Exit" )
       exit
       ;;
   esac
done
}


firstmainmenu


