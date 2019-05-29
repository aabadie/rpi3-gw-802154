## RIOT-FP RPI3 802154 gateway

This project provides a Yocto configuration for easily setup a RPI3 with
802154 radio and SUIT update tools.

## Clone this repository

```
$ git clone --recursive https://github.com/aabadie/rpi3-gw-802154.git
```

## Build the image

- Install Yocto dependencies following the
  [Yocto documentation](https://www.yoctoproject.org/docs/1.8/yocto-project-qs/yocto-project-qs.html#packages)
- Run make:
  ```
  $ make
  ```
- Take a coffee (because this will take a while)

## Setup the image on the RPI3


- The build regenerates a complete SD card image in `build/tmp/deploy/images/raspberrypi3`:
  ```
  $ ls build/tmp/deploy/images/raspberrypi3/riot-fp-gw-rpi3*sdimg
  ```
- Plug an SD card to your computer and ensure it's not mounted. On Linux, the SD card generally
  appear on /dev/mmcblk0
- Use dd to copy the image on the SD card:
  ```
  $ dd if=${IMAGE} of=/dev/mmcblk0 bs=4M 
  ```
