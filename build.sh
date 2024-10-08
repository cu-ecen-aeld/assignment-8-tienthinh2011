#!/bin/bash
#Script to build buildroot configuration
#Author: Siddhant Jajoo

source shared.sh

EXTERNAL_REL_BUILDROOT=../base_external
EXTERNAL_REL__ROOTFS_OVERLAY=../base_external/rootfs_overlay
git submodule init
git submodule sync
git submodule update

# Set ulimits
#ulimit -n 4096 #max open files current is 1024
#ulimit -u 4096 #max user process current is 30277

set -e 
cd `dirname $0`

if [ ! -e buildroot/.config ]
then
	echo "MISSING BUILDROOT CONFIGURATION FILE"

	if [ -e ${AESD_MODIFIED_DEFCONFIG} ]
	then
		echo "USING ${AESD_MODIFIED_DEFCONFIG}"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_MODIFIED_DEFCONFIG_REL_BUILDROOT} BR2_ROOTFS_OVERLAY=${EXTERNAL_REL__ROOTFS_OVERLAY}
	else
		echo "Run ./save_config.sh to save this as the default configuration in ${AESD_MODIFIED_DEFCONFIG}"
		echo "Then add packages as needed to complete the installation, re-running ./save_config.sh as needed"
		make -C buildroot defconfig BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT} BR2_DEFCONFIG=${AESD_DEFAULT_DEFCONFIG} BR2_ROOTFS_OVERLAY=${EXTERNAL_REL__ROOTFS_OVERLAY}
	fi
else
	echo "USING EXISTING BUILDROOT CONFIG"
	echo "To force update, delete .config or make changes using make menuconfig and build again."
	make -C buildroot BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}

fi
