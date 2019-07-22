# Java [11 | 12 | 13] OpenCV 4.1.0 docker images

Purpose of this repo is to provide a set of multi-stage docker images ready for OpenCV-based development in Java.

Each folder provides exactly 2 images:

 - denismakogon/java-${version}-opencv:4.1.0-build
 - denismakogon/java-${version}-opencv:4.1.0-runtime

## Java 11 Debian + OpenCV 4.1.0

Java 11 Docker image still comes based on Debian 9 distro, therefore, these images are Debian-compatible-only!
Images:

 - denismakogon/java-11-opencv:4.1.0-build
 - denismakogon/java-11-opencv:4.1.0-runtime


## Java 13 Oracle Linux + OpenCV 4.1.0

Starting Java 12 GA, images are based on Oracle Linux 7 (or higher).
Therefore, these images compatible with EPEL7 releases.
Images:

 - denismakogon/java-13-opencv:4.1.0-build
 - denismakogon/java-13-opencv:4.1.0-runtime

Note: As for July 23, Java 13 is in early access, please be aware of that.


## Lift-and-Shift binaries

If you'd like to use OpenCV binaries instead of using my docker images, please take a look at [release folder](release).
This folder contains a set of archives for each Java distribution (11 for Debian and 13 for Oracle Linux, for now).


## Packaing

```bash
./package_libs.sh java-11 lib
./package_libs.sh java-13 lib64
```
