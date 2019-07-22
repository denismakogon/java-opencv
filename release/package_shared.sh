#!/usr/bin/env bash

set -xe

rm -fr /root/opencv_shared/${JAVAVERSION}
mkdir /root/opencv_shared/${JAVAVERSION}/

tar -czvf /root/opencv_shared/${JAVAVERSION}/${OPENCVFOLDER}.tar.gz /usr/local/${OPENCVFOLDER}

tar -czvf /root/opencv_shared/${JAVAVERSION}/opencv4.pc.tar.gz /usr/local/${OPENCVFOLDER}/pkgconfig/opencv4.pc

tar -czvf /root/opencv_shared/${JAVAVERSION}/include_opencv4.tar.gz /usr/local/include/opencv4
