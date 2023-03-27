#!/bin/bash

# 更新套件庫和系統
sudo apt update
sudo apt upgrade -y

# 定義需要安裝的套件清單
packages=(
  "git"
  "nano"
  "apache2"
  "net-tools"
  "openssh-server"
  "curl"
  "wget"
  "htop"
  "nmap"
)

# 安裝套件
for package in "${packages[@]}"; do
  if dpkg -s $package >/dev/null 2>&1; then
    echo "▲ $package 已經安裝了 ▲"
  else
    sudo apt install -y $package
  fi
done

# 結束
echo "所有套件已安裝完成"
exit 0
