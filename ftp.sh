#!/bin/bash

echo "Your CD name: "
read CD
mount /dev/$CD /mnt
cd /mnt/AppStream/Packages
rpm -ivh vsftpd*
systemctl start vsftpd.service
systemctl enable vsftpd.service
echo Congrates, Your VSFTPD service is running now.