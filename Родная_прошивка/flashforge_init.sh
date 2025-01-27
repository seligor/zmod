#/bin/sh

echo "">/opt/config/mod/FULL_REMOVE
sync
rm /mnt/flashforge_init.sh
sync
sleep 5
sync
reboot
