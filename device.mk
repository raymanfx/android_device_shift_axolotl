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

$(call inherit-product-if-exists, vendor/shift/axolotl/device-vendor.mk)

#BOARD_AVB_VBMETA_SYSTEM := system
#BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
#BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
#BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
#BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 2

#BOARD_AVB_VBMETA_VENDOR := vendor
#BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
#BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
#BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
#BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 3


PRODUCT_PACKAGES += fastbootd
PRODUCT_PACKAGES += android.hardware.fastboot@1.0-impl-mock
