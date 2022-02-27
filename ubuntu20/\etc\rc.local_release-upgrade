#!/bin/bash
cd /root/

DEBIAN_FRONTEND=noninteractive do-release-upgrade -f DistUpgradeViewNonInteractive 2>&1|tee /root/release-upgrade.log

wget https://github.com/tnan/virtualmin/raw/master/ubuntu20/rc.local_virtualmin -O /etc/rc.local
chmod +x /etc/rc.local
systemctl enable rc-local

reboot
