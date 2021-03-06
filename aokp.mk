#
# Copyright (C) 2012 The AOKP Project
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

# Inherit device configuration for BN Acclaim
$(call inherit-product, device/bn/acclaim/full_acclaim.mk)

# Inherit common product files.
$(call inherit-product, vendor/aokp/configs/common_tablet_small.mk)

DEVICE_PACKAGE_OVERLAYS += device/bn/acclaim/overlay/aokp

# Setup device specific product configuration.
PRODUCT_NAME := aokp_acclaim
PRODUCT_DEVICE := acclaim
PRODUCT_BRAND := NOOK
PRODUCT_MODEL := NookTablet
PRODUCT_MANUFACTURER := Barnes&Noble
PRODUCT_RELEASE_NAME := NookTablet
