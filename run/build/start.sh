#!/bin/sh

trap 'virsh shutdown playcenter' SIGTERM SIGINT SIGQUIT EXIT &
/usr/sbin/virtlogd &
/usr/sbin/libvirtd -l &
sleep 1 && virsh start playcenter
while true; do sleep 10000; done
