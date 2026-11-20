#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/lge/h990

# inherit from common v20
-include device/lge/v20-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := h990,us996,elsa

# Kernel
TARGET_KERNEL_CONFIG += vendor/lge/h990.config

BOARD_KERNEL_CMDLINE += model.name=LG-H990ds lge.sim_num=2

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE :=
BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE := 5863636992
BOARD_SUPER_PARTITION_SIZE := $(BOARD_SUPER_PARTITION_SYSTEM_DEVICE_SIZE)
BOARD_SUPER_PARTITION_METADATA_DEVICE := system
BOARD_SUPER_PARTITION_BLOCK_DEVICES := system
BOARD_LGE_DYNAMIC_PARTITIONS_SIZE := $(shell expr $(BOARD_SUPER_PARTITION_SIZE) - 4194304)
BOARD_SYSTEMIMAGE_PARTITION_RESERVED_SIZE := 41943040
BOARD_SYSTEM_EXTIMAGE_PARTITION_RESERVED_SIZE := 41943040
BOARD_VENDORIMAGE_PARTITION_RESERVED_SIZE := 41943040
BOARD_ODMIMAGE_PARTITION_RESERVED_SIZE := 41943040
BOARD_PRODUCTIMAGE_PARTITION_RESERVED_SIZE := 41943040

# inherit from the proprietary version
include vendor/lge/h990/BoardConfigVendor.mk
