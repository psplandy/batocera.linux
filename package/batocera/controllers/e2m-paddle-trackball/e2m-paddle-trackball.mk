################################################################################
#
# Egret-II Mini Trackball and Paddle accessory
#
################################################################################
E2M_PADDLE_TRACKBALL_VERSION = 1
E2M_PADDLE_TRACKBALL_LICENSE = GPL
E2M_PADDLE_TRACKBALL_SOURCE=

define E2M_PADDLE_TRACKBALL_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0644 -D $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/controllers/e2m-paddle-trackball/99-e2m-paddle-trackball.rules $(TARGET_DIR)/etc/udev/rules.d/99-e2m-paddle-trackball.rules
	$(INSTALL) -m 0755 -D $(BR2_EXTERNAL_BATOCERA_PATH)/package/batocera/controllers/e2m-paddle-trackball/virtual-e2m-paddle-trackball-add $(TARGET_DIR)/usr/bin/virtual-e2m-paddle-trackball-add
endef

$(eval $(generic-package))
