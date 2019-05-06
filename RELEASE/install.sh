#!/bin/bash
projectName=stevia-tea #ganti jika perlu
localDir=$(pwd)
targetDir=/usr/share/plymouth/themes

if [ "$EUID" -ne 0 ]
  then echo "Cannot set some parameters"; echo "Are you root?"
  exit
fi

dir1=${localDir}/${projectName}
file1=stevia-tea.plymouth #ganti jika perlu
file2=stevia-text.plymouth #ganti jika perlu
file3=stevia-tea.script #ganti jika perlu

echo "Copying ${dir1} to ${targetDir}"
cp -r "${dir1}" "${targetDir}"

echo "Backup Default Config"
cp "/etc/alternatives/default.plymouth" "/etc/alternatives/default.plymouth.bak"
cp "/etc/alternatives/text.plymouth" "/etc/alternatives/text.plymouth.bak"

echo "Installing Plymouth"
update-alternatives --install /usr/share/plymouth/themes/default.plymouth default.plymouth /usr/share/plymouth/themes/${projectName}/${file1} 200
update-alternatives --install /usr/share/plymouth/themes/text.plymouth text.plymouth /usr/share/plymouth/themes/${projectName}/${file2} 200

echo "Setting up some config"
update-alternatives --config default.plymouth
update-alternatives --config text.plymouth
update-initramfs -u

echo "done!"