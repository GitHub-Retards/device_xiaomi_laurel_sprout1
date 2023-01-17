#
# Copyright (C) 2021 The Evolution-X Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit some common RiceDroidOs stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from laurel_sprout device
$(call inherit-product, $(LOCAL_PATH)/laurel_sprout.mk)

PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := laurel_sprout
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := lineage_laurel_sprout
PRODUCT_MODEL := Mi A3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# ABI Checks
SKIP_ABI_CHECKS := true

# Props
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_GAPPS_ARCH := arm64
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Pixel charging animation
TARGET_INCLUDE_PIXEL_CHARGER := true


# UDFPS ICONS/ANIMATIONS
TARGET_HAS_UDFPS := true
HAS_FOD := true

# RiceDroid Official
#RICE_OFFICIAL := true

# maintainer flag
RICE_MAINTAINER := BASUBHAJANTRI

# Sushi Bootanimation
SUSHI_BOOTANIMATION := 720

# Enable blur support
TARGET_ENABLE_BLUR := true

# Allow usage of custom binary linker (LD)
TARGET_KERNEL_OPTIONAL_LD := true

# Spoof build fingerprint as pixel device
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_USE_GOOGLE_TELEPHONY := false

# AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Pixel
WITH_GMS := true
RICE_PACKAGE_TYPE := PIXEL
TARGET_ENABLE_PIXEL_GBOARD_PADDINGS := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true

BUILD_FINGERPRINT := "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys"
