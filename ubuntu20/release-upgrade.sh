#!/bin/bash
cd /root/

DEBIAN_FRONTEND=noninteractive do-release-upgrade -f DistUpgradeViewNonInteractive

wget https://github.com/tnan/virtualmin/raw/master/ubuntu20/%5Cetc%5Crc.local_virtualmin -O /etc/rc.local
chmod +x /etc/rc.local
systemctl enable rc-local

reboot
