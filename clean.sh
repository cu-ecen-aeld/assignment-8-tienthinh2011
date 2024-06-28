#!/bin/bash
source shared.sh
EXTERNAL_REL_BUILDROOT=../base_external
make -j -C buildroot distclean BR2_EXTERNAL=${EXTERNAL_REL_BUILDROOT}