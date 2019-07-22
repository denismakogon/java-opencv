FROM denismakogon/java-13-opencv:4.1.0-build as build-stage
FROM openjdk:13-oracle

COPY --from=build-stage /usr/local/lib64 /usr/local/lib64
COPY --from=build-stage /usr/local/lib64/pkgconfig/opencv4.pc /usr/local/lib64/pkgconfig/opencv4.pc
COPY --from=build-stage /usr/local/include/opencv4/opencv2 /usr/local/include/opencv4/opencv2

RUN yum update -y && yum clean packages
