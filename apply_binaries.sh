#!/usr/bin/env bash

set -xe

java_version=$(javap -version | tr "." " " | awk '{print $1 }')
lib_path="lib64"

if [[ ${java_version} == "11" ]];
then
    lib_path="lib"
fi

if [[ ${java_version} == "13-ea" ]];
then
    java_version="13"
fi

mkdir -p /usr/local/include/opencv4
curl -L https://github.com/denismakogon/java-opencv/raw/master/release/java-${java_version}/include_opencv4.tar.gz  | \
    tar xvz -C /

mkdir -p /usr/local/${lib_path}
curl -L https://github.com/denismakogon/java-opencv/raw/master/release/java-${java_version}/${lib_path}.tar.gz | \
    tar xvz -C /
