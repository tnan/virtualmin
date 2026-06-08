```
cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4full.sh -O virtualmin-mysql8-php7.4full.sh && chmod +x virtualmin-mysql8-php7.4full.sh && bash virtualmin-mysql8-php7.4full.sh 2>&1|tee virtualmin-mysql8-php7.4full.log
```
```
cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4full-php8.0full.sh -O virtualmin-mysql8-php7.4full-php8.0full.sh && chmod +x virtualmin-mysql8-php7.4full-php8.0full.sh && bash virtualmin-mysql8-php7.4full-php8.0full.sh 2>&1|tee virtualmin-mysql8-php7.4full-php8.0full.log
```
```
cd /root/ && apt update 2>&1|tee update.log && apt upgrade -y 2>&1|tee upgrade.log && wget https://github.com/tnan/virtualmin/raw/master/virtualmin-mysql8-php7.4-php8.0.sh -O virtualmin-mysql8-php7.4-php8.0.sh && chmod +x virtualmin-mysql8-php7.4-php8.0.sh && bash virtualmin-mysql8-php7.4-php8.0.sh 2>&1|tee virtualmin-mysql8-php7.4-php8.0.log
```
```
apt update && apt install screen -y
```
```
apt update && DEBIAN_FRONTEND=noninteractive apt install linux-image-extra-virtual -y && reboot
```
```
wget https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh && sh virtualmin-install.sh -v -f -n hostname
```
```
apt update && apt install screen -y && screen -S virtualmin-install -d -m bash -c "apt update && apt install linux-image-extra-virtual -y && wget https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh && sh virtualmin-install.sh -v -f -n hostname && reboot"
```
```
regexp:/etc/postfix/list_unsub_header
```
```
/^Content-Type:/i PREPEND List-Unsubscribe: <mailto:user@example.com?subject=unsubscribe>
```

Step-by-step fix

Disable the enterprise repositories
Comment out the lines in the corresponding .list files.
```
sed -i 's/^deb /#deb /' /etc/apt/sources.list.d/pve-enterprise.list 2>/dev/null
sed -i 's/^deb /#deb /' /etc/apt/sources.list.d/ceph.list 2>/dev/null
```
If the files don't exist, skip the errors – they are not critical.

Add the no-subscription repositories
Create new files with the correct repository URLs.
```
echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" > /etc/apt/sources.list.d/pve-no-subscription.list
echo "deb http://download.proxmox.com/debian/ceph-quincy bookworm no-subscription" > /etc/apt/sources.list.d/ceph-no-subscription.list
```
Installation Steps
Install Prerequisites: First, install curl and gnupg2, which are needed to download and verify the Webmin repository.
```
apt install curl gnupg2 -y
```
Download and Run the Setup Script: Webmin isn't in the default Debian repositories, so you'll use the official setup-repos.sh script to add its repository. This is the recommended approach.
```
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
bash setup-repos.sh
```
When prompted, type y and press Enter to proceed with the repository installation.
Install Webmin: After the repository is added, update your package list and install Webmin along with its recommended packages.
```
apt update
apt install webmin --install-recommends -y
```
Verify Webmin is Running: The installation process should automatically start the Webmin service. You can confirm it's active with:
If it's not running, you can manually start it for the first time:
```
systemctl enable --now webmin
```

```
sed -i 's/#DefaultTimeoutStartSec=90s/DefaultTimeoutStartSec=900s/g' /etc/systemd/system.conf
sed -i 's/#DefaultTimeoutStopSec=90s/DefaultTimeoutStopSec=900s/g' /etc/systemd/system.conf
```

```
apt-cache search --names-only '^php8.3-' | awk '{print $1}' | grep -v -E '^(php8.3-gmagick|php8.3-yac)' | xargs apt install -y 2>&1 | tee /var/log/php8.3-install.log
```
