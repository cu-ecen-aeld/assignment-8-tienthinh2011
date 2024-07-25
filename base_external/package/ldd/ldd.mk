
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
LDD_VERSION = '454b4bba943f367304636ebf9d22a209082db4b3'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-tienthinh2011.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES
LDD_MODULE_SUBDIRS += scull
LDD_MODULE_SUBDIRS += misc-modules
# CC = $(CROSS_COMPILE)gcc
# define LDD_BUILD_CMDS
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) KERNELDIR=$(LINUX_DIR) -C $(@D)/scull modules
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) KERNELDIR=$(LINUX_DIR) -C $(@D)/misc-modules modules
# endef

# # TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
# define LDD_INSTALL_TARGET_CMDS
# 	# $(MAKE) $(TARGET_CONFIGURE_OPTS) KERNELDIR=$(LINUX_DIR) -C $(@D)/scull modules_install
# 	$(MAKE) $(TARGET_CONFIGURE_OPTS) KERNELDIR=$(LINUX_DIR) -C $(@D)/misc-modules modules_install
# endef
$(eval $(kernel-module))
$(eval $(generic-package))
