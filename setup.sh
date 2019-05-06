#!/bin/bash

echo "|------------------------------------"
echo "|  Welcome to Dandelion Playmouth   |"
echo "| Installation Wizard, by:Grafiters |"
echo "|       refrenced from Abas_        |"
echo "|------------------------------------"

echo ""

echo "|--------------------------"
echo "| creating new plymouth...|"
echo "|--------------------------"
sudo mkdir /usr/share/plymouth/themes/stevia-tea
echo "selesai"

echo ""
echo "|--------------------------"
echo "| copying asset...        |"
echo "|--------------------------"
sudo cp RELEASE/stevia-tea/* /usr/share/plymouth/themes/stevia-tea/
echo "selesai"

echo ""
echo "|--------------------------"
echo "| Backup default.plymouth |"
echo "|--------------------------"
sudo mv /etc/alternatives/default.plymouth /etc/alternatives/default.plymouth.bak
echo "selesai"

echo ""
echo "|--------------------------"
echo "| Installing New Config   |"
echo "|--------------------------"
sudo cp RELEASE/default.plymouth /etc/alternatives/default.plymouth
echo "selesai"

echo ""
echo "|---------------------------------"
echo "| All Done, to test the plymouth |"
echo "| try to reboot~ thanks          |"
echo "|---------------------------------"

exit