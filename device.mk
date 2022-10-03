#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 The TWRP Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30

# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Dependencies
TARGET_RECOVERY_DEVICE_MODULES += \
    libandroidicu \
    libion

PRODUCT_COPY_FILES += \
    $(OUT_DIR)/target/product/$(PRODUCT_RELEASE_NAME)/obj/SHARED_LIBRARIES/libandroidicu_intermediates/libandroidicu.so:$(TARGET_COPY_OUT_RECOVERY)/root/system/lib64/libandroidicu.so

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(COMMON_PATH)

# Screen
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2400

# Copy modules for depmod
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/sec_cmd.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/sec_cmd.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/sec_common_fn.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/sec_common_fn.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/sec_secure_touch.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/sec_secure_touch.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/sec_tclm_v2.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/sec_tclm_v2.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/sec_tsp_dumpkey.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/sec_tsp_dumpkey.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/sec_tsp_log.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/sec_tsp_log.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/1.1/stm_ts.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/1.1/stm_ts.ko
