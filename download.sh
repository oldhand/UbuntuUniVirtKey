#!/bin/bash

# 检查是否以root权限运行
if [ "$(id -u)" -ne 0 ]; then
    echo "错误：此脚本需要以root权限运行，请使用sudo执行"
    exit 1
fi

# 验证操作系统是否为Ubuntu 22.04
if ! grep -q "Ubuntu 22.04" /etc/os-release; then
    OS_NAME=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | sed 's/"//g')
    echo "此脚本专为 Ubuntu 22.04 设计，检测到不兼容的操作系统: $OS_NAME"
    exit 1
fi

if [ ! -d "./packages" ]; then
    mkdir -p "./packages"
    chown -R _apt:root "./packages"
    chmod 755 "./packages"
fi

sudo apt remove -y systemd-timesyncd

echo "下载所有的依赖包..."
cd ./packages
sudo apt-get download -o Dir::Cache="./" -o Dir::Cache::archives="./" \
bzip2 \
wget \
ca-certificates \
cloud-utils \
usbutils \
libguestfs-tools \
virt-manager \
python3-dev \
libvirt-dev \
gcc \
g++ \
libglib2.0-dev \
libc6-dev \
libvirt-daemon \
virtinst \
qemu-system-x86 \
ceph \
glusterfs-client \
glusterfs-common \
python3-openvswitch \
jq

cd ..


pip download threadpool -d $PWD/pips
pip download threadpool -d $PWD/pips
pip download prometheus_client -d $PWD/pips
pip download kubernetes==26.1.0 -d $PWD/pips
pip download xmljson -d $PWD/pips
pip download xmltodict -d $PWD/pips
pip download watchdog -d $PWD/pips
pip download pyyaml -d $PWD/pips
pip download grpcio -d $PWD/pips
pip download grpcio-tools -d $PWD/pips
pip download protobuf -d $PWD/pips
pip download psutil -d $PWD/pips
pip download pyinstaller -d $PWD/pips
pip download tenacity -d $PWD/pips
pip download requests -d $PWD/pips


echo "操作完成！"
