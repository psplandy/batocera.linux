################################################################################
#
# uboot files for sunxi r16
#
################################################################################

UBOOT_SUNXI_R16_VERSION = 4636ae036155b60fed48ca860bad7b71f248a283
UBOOT_SUNXI_R16_SITE = $(call github,acm-cfw,u-boot-2011.09,$(UBOOT_SUNXI_R16_VERSION))
UBOOT_SUNXI_R16_LICENSE = GPLv2

UBOOT_SUNXI_R16_DEPENDENCIES = host-toolchain-optional-linaro-arm

define UBOOT_SUNXI_R16_BUILD_CMDS
    cd $(@D) && chmod +x add_hash.sh && sh build.sh
endef

define UBOOT_SUNXI_R16_INSTALL_TARGET_CMDS
	cp $(@D)/u-boot-sun8iw5p1.bin $(BINARIES_DIR)/u-boot-sun8iw5p1.bin
endef

$(eval $(generic-package))
