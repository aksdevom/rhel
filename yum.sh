#!/bin/bash

mkdir /var/ftp/pub/rhel9
cd /mnt
cp -rvf * /var/ftp/pub/rhel9

cat > /etc/yum.repos.d/yc.repo <<EOF
[AppStream]
name=AppStream
baseurl=file:///var/ftp/pub/rhel9/AppStream
enabled=1
gpgcheck=0

[BaseOS]
name=BaseOS
baseurl=file:///var/ftp/pub/rhel9/BaseOS
enabled=1
gpgcheck=0
EOF

yum clean all
yum update

echo "Congrates, Your yum server is ready!"