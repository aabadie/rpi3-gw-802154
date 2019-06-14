# Base this image on core-image-minimal
include recipes-core/images/core-image-minimal.bb

IMAGE_FEATURES += "ssh-server-dropbear"
EXTRA_IMAGE_FEATURES = ""

IMAGE_ROOTFS_EXTRA_SPACE = "400000"

IMAGE_INSTALL_append = " \
                        kernel-modules           \
                        bluez5                   \
                        sudo                     \
                        connman                  \
                        bash                     \
                        vim                      \
                        dropbear                 \
                        python3-pip              \
                        radvd                    \
                        wpan-tools               \
                       "

INHERIT += "extrausers"
EXTRA_USERS_PARAMS = " \
                       useadd -P 'riot-fp' riot; \
                       usermod -a -G sudo riot;  \
                     "
