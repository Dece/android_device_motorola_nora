#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/nora

# Assert
TARGET_OTA_ASSERT_DEVICE := nora,nora_row,nora_8917

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := nora_defconfig
TARGET_CUSTOM_DTBTOOL := dtbTool_custom
BOARD_DTBTOOL_ARGS := --force-v3 --motorola 1

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16879616
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11614010368

# Security patch level
VENDOR_SECURITY_PATCH := 2020-04-27

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/nora/BoardConfigVendor.mk
