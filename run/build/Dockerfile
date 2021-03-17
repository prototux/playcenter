FROM alpine:3.12
RUN apk add --update --no-cache qemu-system-x86_64 qemu-audio-pa ovmf libvirt libvirt-qemu libvirt-daemon
RUN rm /etc/libvirt/qemu/networks/autostart/default.xml
COPY start.sh /
ENTRYPOINT ["/start.sh"]
CMD []
