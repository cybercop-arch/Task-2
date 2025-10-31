#!/bin/bash
# Capture traffic to/from target for 30 seconds and save to artifacts/pcap/
TARGET="<TARGET_IP>"
sudo timeout 30 tcpdump -i any host $TARGET -w artifacts/pcap/lab_capture.pcapng
echo "Saved capture to artifacts/pcap/lab_capture.pcapng"
