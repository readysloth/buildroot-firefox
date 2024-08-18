################################################################################
#
# firefox
#
################################################################################

FIREFOX_SOURCE = firefox-$(FIREFOX_VERSION).tar.bz2
FIREFOX_LICENSE = MPL-2.0
FIREFOX_SITE = https://archive.mozilla.org/pub/firefox/releases/$(FIREFOX_VERSION)/linux-$(BR2_ARCH)/en-US
FIREFOX_VERSION = 129.0.1

define FIREFOX_INSTALL_TARGET_CMDS
	mkdir -p $(TARGET_DIR)/opt
	cp -r $(@D)/* $(TARGET_DIR)/opt
endef

$(eval $(generic-package))
