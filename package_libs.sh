#!/usr/bin/env bash

set -ex


docker run --rm \
    -v ${PWD}/release:/root/opencv_shared \
    --entrypoint ./root/opencv_shared/package_shared.sh \
    denismakogon/oraclelinux7-opencv:4.1.0-build
