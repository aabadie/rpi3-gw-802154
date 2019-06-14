.PHONY: all copy_to_sd

IMAGE = riot-fp-gw-rpi3
IMAGE_DIR = build/tmp/deploy/images/raspberrypi3

IMAGE_FILENAME = riot-fp-gw-rpi3-raspberrypi3.rpi-sdimg
REMOTE_BUILD_DIR = /builds/riot/riot-fp/rpi3-gw-802154/build/tmp/deploy/images/raspberrypi3
LOCAL_IMAGE_FILE = /tmp/$(IMAGE_FILENAME)
DEV_SD = /dev/mmcblk0

all: $(IMAGE)

$(IMAGE):
	@bash -c 'source poky/oe-init-build-env build && bitbake $@'
	@ls $(IMAGE_DIR)/$@*

$(LOCAL_IMAGE_FILE):
	@scp riotbuild:$(REMOTE_BUILD_DIR)/$(IMAGE_FILENAME) /tmp/.

copy_to_sd: $(LOCAL_IMAGE_FILE)
	@dd if=$(LOCAL_IMAGE_FILE) of=$(DEV_SD) bs=4M
	@rm -f $(LOCAL_IMAGE_FILE)
