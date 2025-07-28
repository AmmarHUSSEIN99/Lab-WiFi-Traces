# Start monitor mode on wireless interface (e.g., wlan0)
sudo ip link set wlan0 down
sudo iw wlan0 set monitor control
sudo ip link set wlan0 up

# Start Tshark capture for 100 seconds with selected fields
tshark -i wlan0 -a duration:100 -n -t e -T fields \
-e frame.time -e wlan.sa -e wlan.ra -e wlan.seq \
-e radiotap.dbm_antsignal -e frame.len \
