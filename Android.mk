#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),a52sxq)
include $(call all-makefiles-under,$(LOCAL_PATH))
include $(CLEAR_VARS)
endif
