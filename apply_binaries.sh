#!/usr/bin/env bash

set -xe

mkdir -p /usr/local/include/opencv4
curl -L https://github.com/denismakogon/java-opencv/raw/master/release/include_opencv4.tar.gz  | \
    tar xvz -C /

mkdir -p /usr/local/lib64
curl -L https://github.com/denismakogon/java-opencv/raw/master/release/lib64.tar.gz | \
    tar xvz -C /
