# Copyright (C) 2020 The PixelExperience Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# Inherit from motorola msm8953-common
-include device/motorola/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/potter

# Assertions
TARGET_OTA_ASSERT_DEVICE := potter

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
BOARD_KERNEL_SEPARATED_DT := true
BOARD_DTBTOOL_ARGS := --force-v3 --motorola 1
TARGET_CUSTOM_DTBTOOL := dtbTool_custom
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_CONFIG := potter_defconfig

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# NFC
NXP_CHIP_TYPE := PN551

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3510353920
BOARD_VENDORIMAGE_PARTITION_SIZE := 665845760
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 260014080

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/device.prop

# SELinux
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor
BOARD_PLAT_PUBLIC_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Sensors
BOARD_USES_MOT_SENSOR_HUB := true
BOARD_USES_CAP_SENSOR_SX9310 := true
MOT_SENSOR_HUB_HW_TYPE_L0 := true
MOT_AP_SENSOR_HW_REARPROX := true
MOT_AP_SENSOR_HW_REARPROX_2 := true
MOT_SENSOR_HUB_HW_AK09912 := true
MOT_SENSOR_HUB_HW_BMI160 := true
MOT_SENSOR_HUB_FEATURE_CHOPCHOP := true
MOT_SENSOR_HUB_FEATURE_LIFT := true
MOT_SENSOR_HUB_FEATURE_PEDO := true
MOT_SENSOR_HUB_FEATURE_LA := true
MOT_SENSOR_HUB_FEATURE_GR := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += $(DEVICE_PATH)

# Treble
PRODUCT_FULL_TREBLE_OVERRIDE := true

# inherit from the proprietary version
include vendor/motorola/potter/BoardConfigVendor.mk
