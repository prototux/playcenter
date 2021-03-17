# playcenter

# WARN: this is a work in progress, it still require a lot of work to make it run on your machine

## What

This is my gaming setup, basically a VM built using packer and ran on libvirt+qemu in a container.

As it's also a gamestream server, it can be used as a stadia/shadow-like setup.

Right now, this is pretty basic and it's almost a raw copy of what i'm currently running, so it's not very "plug and play"

The build part isn't here yet (it's a work in progress), but it should be up soon

## Why

I wanted to have my gaming/VR setup as a standalone unit, and i hate reinstalling all my stuff on windows/

## Requirements

* A machine with a already set-up bridge interface (example file in run/)
* A DHCPd server to assign an IP to the VM
* A pulseaudio server on the network for audio
* A GPU and USB card for pcie passtrough (or edit the xml file)
* At least 6 cores and 24G of memory (or edit the xml as well)
* The host should already be set up for pcie passtrough and kvm
* A dedicated sata disk for the VM's data (games, saves...)
* Docker and docker-compose installed on the host

## What's included (general)

* Dockerfile + docker-compose to run the VM
* libvirtd's config for win10+no nvidia error 34+passtrough
* packer config + scripts (soon) to build the win10

## What's included (in the VM)

* A debloated win10 (20H2)
* Activation is left to you
* Chocolatey with some packages:
* * Steam
* * P7Zip
* * Firefox
* * Playnite
* * Ludusavi (with playnite integration)
* Ambibox (for the ambilight clone)
* Sunshine (gamestream/moonlight server)

## TODO

* Make the network setup not depend on my own setup
* Also don't depend on an external dhcpd
* Remove dependency on an external pulseaudio server
* Remove dependency on the ambilight clone
* Remove dependency on the USB PCIe card
* Make the gpu passtrough more generic
* Make the cpu/ram setup configurable
* Create the nvram automatically as well
