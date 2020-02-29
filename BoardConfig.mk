#
# Copyright 2020 The LineageOS Project
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

# Use the non-open-source parts, if they're present
-include vendor/shift/axolotl/BoardConfigVendor.mk

DEVICE_PATH := device/shift/axolotl

TARGET_BOARD_PLATFORM := sdm845
TARGET_BOOTLOADER_BOARD_NAME := sdm845

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo385

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := kryo385

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CONFIG := sdm845-SHIFT6MQ-perf_defconfig
TARGET_KERNEL_SOURCE := kernel/shift/sdm845
TARGET_USES_UNCOMPRESSED_KERNEL := false

BOARD_KERNEL_IMAGE_NAME  := Image.gz
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0xA84000 androidboot.console=ttyMSM0 printk.devkmsg=on
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom video=vfb:640x400,bpp=32,memsize=3072000 lpm_levels.sleep_disabled=1 androidboot.configfs=true loop.max_part=7
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += androidboot.memcg=1 cgroup.memory=nokmem
BOARD_KERNEL_CMDLINE += androidboot.usbcontroller=a600000.dwc3 swiotlb=2048
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/1d84000.ufshc
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive

BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS := --header_version 2
BOARD_KERNEL_SEPARATED_DTBO := true

# AB
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += boot dtbo system vbmeta

# APEX
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BOARD_VNDK_VERSION := current
TARGET_COPY_OUT_VENDOR := vendor
TARGET_USES_64_BIT_BINDER := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_DTBOIMG_PARTITION_SIZE := 0x0800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x06000000
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Dynamic Partitions
#BOARD_DYNAMIC_PARTITION_ENABLE := true
#BOARD_EXT4_SHARE_DUP_BLOCKS := true
#BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 6438256640
#BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system product vendor
#BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 12884901888

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.axolotl

# Verified Boot
BOARD_AVB_ENABLE := true

# Qualcomm BSP
#BOARD_USES_QCOM_HARDWARE := true
BUILD_WITHOUT_VENDOR := true

TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
