FROM denismakogon/java-11-opencv:4.1.0-build as build-stage
FROM openjdk:11

COPY --from=build-stage /usr/local/lib /usr/local/lib
COPY --from=build-stage /usr/local/include/opencv4/opencv2 /usr/local/include/opencv4/opencv2
