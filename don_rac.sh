#!/bin/bash
echo "=== SISO: Dọn dẹp ==="
echo "Trước khi dọn:"
df -h / | tail -1

echo "--- Cache apt ---"
du -sh /var/cache/apt 2>/dev/null

echo "--- 5 thư mục nặng nhất trong home ---"
du -sh ~/* ~/.[!.]* 2>/dev/null | sort -rh | head -5
