#!/usr/bin/env bash

set -ex

java_version=${1:-"java-11"}

docker run --rm \
    -v ${PWD}/release:/root/opencv_shared \
    -e OPENCVFOLDER=${2:-"lib"} \
    -e JAVAVERSION=${java_version} \
    --entrypoint ./root/opencv_shared/package_shared.sh \
    denismakogon/${java_version}-opencv:4.1.0-build
