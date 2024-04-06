#!/bin/sh

PATH=/sbin:/usr/sbin:/bin:/usr/bin

case "$1" in
  pre)
      echo "pre" >> /tmp/sleep_log
      /bin/nmcli dev disconnect wlp2s0
      /sbin/modprobe -r ath11k_pci
      /sbin/modprobe -r ath11k
    ;;
  post)
      echo "post" >> /tmp/sleep_log
      /sbin/modprobe ath11k_pci
      /bin/nmcli dev connect wlp2s0
    ;;
esac

exit 0
