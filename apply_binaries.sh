#!/usr/bin/env bash

set -xe

java_version=${1:-"java-13"}
lib_path="lib64"

if [[ ${java_version} == "java-11" ]];
then
    lib_path="lib"
fi

mkdir -p /usr/local/include/opencv4
curl -L https://github.com/denismakogon/java-opencv/raw/master/release/${java_version}/include_opencv4.tar.gz  | \
    tar xvz -C /

mkdir -p /usr/local/${lib_path}
curl -L https://github.com/denismakogon/java-opencv/raw/master/release/${java_version}/${lib_path}.tar.gz | \
    tar xvz -C /
