FROM ubuntu:xenial

RUN apt-get update && apt-get install -y ccache swig python python-dev gcc device-tree-compiler \
    u-boot-tools dosfstools mtools parted pxz git make curl tar xz-utils udev

RUN git clone https://github.com/ayufan-pine64/bootloader-build.git

WORKDIR "/bootloader-build"

RUN make u-boot

RUN make arm-trusted-firmware

RUN make sunxi-tools

RUN make linaro

RUN make all
