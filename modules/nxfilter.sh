#!/bin/sh
## nxfilter

## Dependencies Check
sudo bash /etc/piadvanced/dependencies/dep-whiptail.sh

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --title "nxfilter" --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to install nxfilter?" 10 80) 
then



echo "not installing stuff"

else

echo "installing stuff"



fi }
