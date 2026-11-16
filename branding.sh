#!/bin/bash
sed -i 's/^PRETTY_NAME=.*/PRETTY_NAME="SISO OS"/' /etc/os-release
echo "Chào mừng đến SISO OS (bản thử nghiệm)" > /etc/motd
grep -q 'cat /etc/motd' ~/.bashrc || echo 'cat /etc/motd' >> ~/.bashrc
echo "Đã áp dụng thương hiệu SISO OS"
