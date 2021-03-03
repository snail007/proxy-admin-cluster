#!/bin/bash
F="proxy-admin_linux-amd64.tar.gz"
set -e
if [ -e /tmp/proxy ]; then
    rm -rf /tmp/proxy
fi
mkdir /tmp/proxy
cd /tmp/proxy
echo -e "\n>>> downloading ... $F\n"

manual="https://snail.gitee.io/proxy/manual/zh/"
LAST_VERSION=$(curl --silent "https://mirrors.host900.com/https://api.github.com/repos/snail007/proxy-admin-cluster/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')
wget  -t 1 "https://mirrors.host900.com/https://github.com/snail007/proxy-admin-cluster/releases/download/${LAST_VERSION}/$F"

echo -e ">>> installing ... \n"
#install proxy-admin
tar zxvf $F >/dev/null 2>&1 
chmod +x proxy-admin
set +e
./proxy-admin uninstall >/dev/null 2>&1 
set -e
./proxy-admin install
rm $F
set +e
systemctl status proxyadmin &
set -e
sleep 2
echo  -e "\n>>> install done, thanks for using snail007/proxy-admin\n"
echo  -e ">>> install path /usr/bin/proxy\n"
echo  -e ">>> configuration path /etc/proxy\n"
echo  -e ">>> uninstall just exec : rm /usr/bin/proxy && rm /etc/proxy\n"
echo  -e ">>> please visit : http://YOUR_IP:32080/ username: root, password: 123\n"
echo  -e ">>> How to using? Please visit : $manual\n"
