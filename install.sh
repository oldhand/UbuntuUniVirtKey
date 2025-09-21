#!/bin/bash


if [ ! -f "files/go1.19.1.linux-amd64.tar.gz" ]; then
  cat $PWD/files/files.zip.001 $PWD/files/files.zip.002 > $PWD/files/files.zip
  unzip $PWD/files/files.zip -d $PWD/files/
  rm -fr $PWD/files/files.zip
fi

if [ ! -f "images/prometheus-v2.45.0.tar" ]; then
  cat $PWD/images/images.zip.001 $PWD/images/images.zip.002 $PWD/images/images.zip.003 $PWD/images/images.zip.004 $PWD/images/images.zip.005 \
      $PWD/images/images.zip.006 $PWD/images/images.zip.007 $PWD/images/images.zip.008 $PWD/images/images.zip.009 $PWD/images/images.zip.010 \
      $PWD/images/images.zip.011 $PWD/images/images.zip.012 $PWD/images/images.zip.013 $PWD/images/images.zip.014 $PWD/images/images.zip.015 \
      $PWD/images/images.zip.016 $PWD/images/images.zip.017 $PWD/images/images.zip.018 $PWD/images/images.zip.019 $PWD/images/images.zip.020 \
      $PWD/images/images.zip.021 $PWD/images/images.zip.022 $PWD/images/images.zip.023 $PWD/images/images.zip.024 $PWD/images/images.zip.025 \
      $PWD/images/images.zip.026 $PWD/images/images.zip.027 $PWD/images/images.zip.028 $PWD/images/images.zip.029 > $PWD/images/images.zip
  unzip $PWD/images/images.zip -d $PWD/images/
  rm -fr $PWD/images/images.zip
fi



if [ ! -f "ceph/quay.io-rook-ceph-v1.18.2.tar" ]; then
  cat $PWD/ceph/ceph.zip.001 $PWD/ceph/ceph.zip.002 $PWD/ceph/ceph.zip.003 $PWD/ceph/ceph.zip.004 $PWD/ceph/ceph.zip.005 \
      $PWD/ceph/ceph.zip.006 $PWD/ceph/ceph.zip.007 $PWD/ceph/ceph.zip.008 $PWD/ceph/ceph.zip.009 $PWD/ceph/ceph.zip.010 \
      $PWD/ceph/ceph.zip.011 $PWD/ceph/ceph.zip.012 $PWD/ceph/ceph.zip.013 $PWD/ceph/ceph.zip.014 $PWD/ceph/ceph.zip.015 \
      $PWD/ceph/ceph.zip.016 $PWD/ceph/ceph.zip.017 $PWD/ceph/ceph.zip.018 $PWD/ceph/ceph.zip.019 $PWD/ceph/ceph.zip.020 \
      $PWD/ceph/ceph.zip.021 $PWD/ceph/ceph.zip.022 $PWD/ceph/ceph.zip.023 > $PWD/ceph/ceph.zip
  unzip $PWD/ceph/ceph.zip -d $PWD/ceph/
  rm -fr $PWD/ceph/ceph.zip
fi

#ansible-playbook -i hosts.ini install.yml -k
ansible-playbook -i hosts.ini install.yml