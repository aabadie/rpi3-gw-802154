.PHONY: all

IMAGE = riot-fp-gw-rpi3
IMAGE_DIR = build/tmp/deploy/images/raspberrypi3

all: $(IMAGE)

$(IMAGE):
	@bash -c 'source poky/oe-init-build-env build && bitbake $@'
	@ls $(IMAGE_DIR)/$@*

