#!/bin/bash
echo "--- for: đếm 1 đến 5 ---"
for i in 1 2 3 4 5; do
  echo "Lần thứ $i"
done

echo "--- for: duyệt file .sh ---"
for f in *.sh; do
  echo "Script: $f"
done

echo "--- while: đếm ngược ---"
n=3
while [ $n -gt 0 ]; do
  echo "Còn $n"
  n=$((n - 1))
done
echo "Xong!"
