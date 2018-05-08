Build SPI bootable u-boot in nice form useful for users :)

Dependencies appear from trial and error appear to be:

`ccache swig python python-dev gcc device-tree-compiler u-boot-tools dosfstools mcopy parted pxz`

## Quickstart

```
sudo apt-get install -y ccache swig python python-dev gcc device-tree-compiler \
u-boot-tools dosfstools mcopy parted pxz

git clone https://github.com/ayufan-pine64/bootloader-build.git
cd bootloader-build/

make u-boot
make arm-trusted-firmware
make sunxi-tools
make linaro
make all
```
