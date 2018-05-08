Build SPI bootable u-boot in nice form useful for users :)

Dependencies appear to be (from running in a docker xenial container):

`ccache swig python python-dev gcc device-tree-compiler u-boot-tools dosfstools mtools parted pxz git make curl tar xz-utils udev`

## Quickstart

```
sudo apt-get install -y ccache swig python python-dev gcc device-tree-compiler u-boot-tools \
dosfstools mtools parted pxz git make curl tar xz-utils udev

git clone https://github.com/ayufan-pine64/bootloader-build.git
cd bootloader-build/

make u-boot
make arm-trusted-firmware
make sunxi-tools
make linaro
make all
```

## Docker

There is also a simple Dockerfile which will will run through the whole compile process in a clean ubuntu xenial machine, but it needs a few tweaks as the compile files are currently inside the container rather than in an external volume. This may or may not get changed, probably not. 
