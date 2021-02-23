#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
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
#

# Release name
PRODUCT_RELEASE_NAME := willow

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := willow
PRODUCT_NAME := omni_willow
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8T
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR_PRODUCT_NAME := willow
TARGET_VENDOR_DEVICE_NAME := willow

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=willow \
    BUILD_PRODUCT=willow \
    PRODUCT_NAME=willow

PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-311

PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
