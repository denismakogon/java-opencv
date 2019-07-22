#!/usr/bin/env bash

set -xe

java_version=${1:-"java-13"}
lib_path="lib64"

if [[ ${java_version} == "java-11" ]];
then
    lib_path="lib"
fi

curl -L https://raw.githubusercontent.com/denismakogon/java-opencv/master/release/${java_version}/include_opencv4.tar.gz | \
    tar xvz -C /usr/local/include/opencv4

curl -L https://raw.githubusercontent.com/denismakogon/java-opencv/master/release/${java_version}/${lib_path}.tar.gz | \
    tar xvz -C /usr/local/${lib_path}

curl -L https://raw.githubusercontent.com/denismakogon/java-opencv/master/release/${java_version}/include_opencv4.tar.gz | \
    tar xvz -C /usr/local/${lib_path}/pkgconfig/opencv4.pc
