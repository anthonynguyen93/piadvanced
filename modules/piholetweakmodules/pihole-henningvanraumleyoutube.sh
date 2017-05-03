#!/bin/sh
## youtube henning
NAMEOFAPP="youtubehenning"

## Dependencies Check
sudo bash /etc/piadvanced/dependencies/dep-whiptail.sh

## Variables
source /etc/piadvanced/install/firewall.conf
source /etc/piadvanced/install/variables.conf
source /etc/piadvanced/install/userchange.conf

{ if 
(whiptail --title "Youtube adblock list" --yes-button "Skip" --no-button "Proceed" --yesno "Do you want to use HenningVanRaumle's youtube adblock list?" 10 80) 
then
echo "User Declined $NAMEOFAPP"
else
sudo echo "#https://raw.githubusercontent.com/HenningVanRaumle/pihole-ytadblock/master/ytadblock.txt" | sudo tee --append /etc/pihole/adlists.list
fi }

unset NAMEOFAPP
