#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-commmon
include device/samsung/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/samsung/z3q

# Camera
SOONG_CONFIG_samsungCameraVars += extra_ids
SOONG_CONFIG_samsungCameraVars_extra_ids := 52 # telephoto

# Display
TARGET_SCREEN_DENSITY := 450

# Kernel
TARGET_KERNEL_CONFIG += vendor/samsung/z3q.config

# OTA assert
TARGET_OTA_ASSERT_DEVICE := z3q
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# UDFPS
TARGET_SURFACEFLINGER_UDFPS_LIB := //$(DEVICE_PATH):libudfps_extension.z3q
TARGET_USES_FOD_ZPOS := true

# Wi-Fi
BOARD_WLAN_DEVICE := bcmdhd
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_FEATURE_HOSTAPD_11AX := true
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X