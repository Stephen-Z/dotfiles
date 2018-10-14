sudo usb_modeswitch -KW -v 0bda -p 1a2b
sleep 2
sudo modprobe 8821cu
sleep 2
sudo netctl start home
