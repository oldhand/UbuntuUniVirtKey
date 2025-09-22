#!/bin/bash

lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,LABEL,SIZE

# 1. 清除分区表（彻底删除所有分区）
sgdisk --zap-all /dev/sdb


# 2. 擦除设备开头 100MB 数据（清除 Ceph 残留签名，避免 Rook 检测到旧信息）
dd if=/dev/zero of=/dev/sdb bs=1M count=100 oflag=direct


# 擦除 /dev/sdb 整个设备（20GB），确保所有签名被覆盖
dd if=/dev/zero of=/dev/sdb bs=1G count=20 oflag=direct


# 2. 检测是否仍有旧 OSD 残留（预期输出为空 {}）
ceph-volume raw list --format json


lsblk -o NAME,SIZE,FSTYPE,MOUNTPOINT,LABEL,SIZE