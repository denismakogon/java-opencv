FROM oraclelinux:7-slim

ENV OPENCV_VERSION="4.1.0"


RUN yum update -y && yum install -y wget && \
    wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -ivh epel-release-latest-7.noarch.rpm && \
    yum update -y && \
    rpm --import http://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro && \
    rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-1.el7.nux.noarch.rpm && \
    yum update -y && \
    yum update -y && yum -y groupinstall "Development Tools" && \
    yum -y install wget gtk2-devel cmake3 ffmpeg ffmpeg-devel


RUN mkdir /tmp/opencv && \
    cd /tmp/opencv && \
    wget -O opencv.zip https://github.com/opencv/opencv/archive/${OPENCV_VERSION}.zip && \
    unzip opencv.zip && \
    wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/${OPENCV_VERSION}.zip && \
    unzip opencv_contrib.zip && \
    mkdir /tmp/opencv/opencv-${OPENCV_VERSION}/build && cd /tmp/opencv/opencv-${OPENCV_VERSION}/build && \
    cmake3 \
      -D OPENCV_EXTRA_MODULES_PATH=/tmp/opencv/opencv_contrib-${OPENCV_VERSION}/modules \
      -D CMAKE_INSTALL_PREFIX=/usr/local \
      -D BUILD_TIFF=ON \
      -D BUILD_opencv_java=ON \
      -D WITH_CUDA=OFF \
      -D ENABLE_AVX=ON \
      -D WITH_OPENGL=ON \
      -D WITH_OPENCL=ON \
      -D WITH_IPP=ON \
      -D WITH_TBB=ON \
      -D WITH_EIGEN=ON \
      -D WITH_V4L=ON \
      -D BUILD_TESTS=OFF \
      -D BUILD_PERF_TESTS=OFF \
      -D CMAKE_BUILD_TYPE=RELEASE \
      -D BUILD_opencv_python=NO \
      -D BUILD_opencv_python2=NO \
      -D BUILD_opencv_python3=NO \
      -D INSTALL_C_EXAMPLES=NO \
      -D INSTALL_PYTHON_EXAMPLES=NO \
      -D BUILD_ANDROID_EXAMPLES=NO \
      -D BUILD_DOCS=NO \
      -D BUILD_TESTS=NO \
      -D BUILD_PERF_TESTS=NO \
      -D BUILD_EXAMPLES=NO \
      -D WITH_WIN32UI=OFF \
      -D WITH_QT=OFF \
      -D OPENCV_GENERATE_PKGCONFIG=YES \
      -D WITH_GTK=OFF .. && \
    make -j4 && \
    make install && \
    yum clean packages && \
    rm -fr /tmp/opencv*

ENV PKG_CONFIG_PATH /usr/local/lib64/pkgconfig
ENV LD_LIBRARY_PATH /usr/local/lib64
