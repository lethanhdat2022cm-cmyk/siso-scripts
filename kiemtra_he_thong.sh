#!/bin/bash
echo "=== SISO: Thông tin hệ thống ==="
echo "Máy: $(hostname)"
echo "Kiến trúc: $(uname -m)"
echo "Hệ điều hành: $(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)"
echo "--- RAM ---"
free -h | grep Mem
echo "--- Ổ đĩa ---"
df -h / | tail -1
echo "--- Số gói đã cài ---"
dpkg -l | grep -c '^ii'
