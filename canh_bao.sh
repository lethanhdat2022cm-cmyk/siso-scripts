#!/bin/bash
ram_tong=$(free -m | awk '/Mem/ {print $2}')
ram_con=$(free -m | awk '/Mem/ {print $7}')
ram_phan_tram=$(( ram_con * 100 / ram_tong ))
dia_dung=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

echo "RAM còn dùng được: ${ram_con}MB (${ram_phan_tram}%)"
echo "Ổ đĩa đã dùng: ${dia_dung}%"

if [ "$ram_phan_tram" -lt 30 ]; then
  echo "CẢNH BÁO: RAM sắp cạn!"
fi
if [ "$dia_dung" -gt 90 ]; then
  echo "CẢNH BÁO: Ổ đĩa gần đầy!"
fi
