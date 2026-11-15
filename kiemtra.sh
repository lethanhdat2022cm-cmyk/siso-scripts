#!/bin/bash
phien_ban=1
if [ $phien_ban -ge 2 ]; then
  echo "SISO đã qua bản 2"
else
  echo "SISO vẫn đang ở bản đầu"
fi

if [ -f hello.sh ]; then
  echo "Tìm thấy hello.sh"
else
  echo "Không có hello.sh"
fi
