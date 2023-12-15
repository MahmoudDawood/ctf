echo "$(tshark -r ~/Downloads/ARP+Storm.pcap | cut -d x -f 2 | xxd -p -r)" | base64 -d

