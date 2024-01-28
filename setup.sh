#!/bin/bash

GREEN='\033[0;32m' # GREEN
NC='\033[0m' # No Color

echo -n "Set hostname: " ; read hostname
echo "${GREEN}Set hostname: $hostname${NC}"

apt update
apt install linux-image-extra-virtual -y
wget https://software.virtualmin.com/gpl/scripts/virtualmin-install.sh
sh virtualmin-install.sh -v -f -n hostname

exe_time="$(($SECONDS / 3600)) hrs $((($SECONDS / 60) % 60)) min $(($SECONDS % 60)) sec"
echo "TE-qBittorrent Base successfully installed (/root/te-qbittorrent/install/te-qbittorrent-install-base-beta.log)"
echo "Done! | Execution Date: $(date) | Execution Time: $exe_time"
