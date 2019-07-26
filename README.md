# Java [11 | 12 | 13 EA | 14-Internal] OpenCV 4.1.0 docker images based on Oracle Linux 7

Purpose of this repo is to provide a set of multi-stage docker images ready for OpenCV-based development in Java.

There's only one image:

 - denismakogon/oraclelinux7-opencv:4.1.0-build

that contains OpenCV libs installed ready to be applied within multistage builds or through "lift-and-shift".

## Lift-and-Shift binaries

If you'd like to use OpenCV binaries instead of using my docker images, please take a look at [release folder](release).
This folder contains a set of archives for each Java distribution (11 for Debian and 13 for Oracle Linux, for now).

Here's how you can apply OpenCV binaries to Java 13 image:
```dockerfile
FROM openjdk:13

ENV PKG_CONFIG_PATH /usr/local/lib64/pkgconfig
ENV LD_LIBRARY_PATH /usr/local/lib64

RUN curl -L https://raw.githubusercontent.com/denismakogon/java-opencv/master/apply_binaries.sh | /bin/bash 

```
