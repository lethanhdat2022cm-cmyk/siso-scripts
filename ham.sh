#!/bin/bash
chao() {
  echo "Xin chào, $1!"
}

kiem_tra_file() {
  if [ -f "$1" ]; then
    echo "$1: có"
  else
    echo "$1: không có"
  fi
}

chao "Sói Trắng"
chao "SISO OS"
kiem_tra_file hello.sh
kiem_tra_file khongco.sh
