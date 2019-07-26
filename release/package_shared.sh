#!/usr/bin/env bash

set -xe

mkdir -p /root/opencv_shared/
rm -fr /root/opencv_shared/*.tar.gz

tar -czvf /root/opencv_shared/lib64.tar.gz /usr/local/lib64
tar -czvf /root/opencv_shared/include_opencv4.tar.gz /usr/local/include/opencv4
