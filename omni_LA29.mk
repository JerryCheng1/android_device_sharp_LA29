# Release name
PRODUCT_RELEASE_NAME := LA29

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := LA29
PRODUCT_NAME := omni_LA29
PRODUCT_BRAND := Sharp
PRODUCT_MODEL := 404SH
PRODUCT_MANUFACTURER := Sharp

TARGET_VENDOR_PRODUCT_NAME := Sharp
TARGET_VENDOR_DEVICE_NAME := LA29
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=LA29 PRODUCT_NAME=Sharp

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.build.product=Sharp \
    ro.product.device=LA29

# ADB access into recovery
ADDITIONAL_DEFAULT_PROPERTIES += \
	  ro.secure=0 \
	  ro.adb.secure=0 \
		ro.debuggable=1

PRODUCT_COPY_FILES += \
	   $(LOCAL_PATH)/recovery/root/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
		 $(LOCAL_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc \
		 $(LOCAL_PATH)/recovery/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
		 $(LOCAL_PATH)/recovery/root/ueventd.qcom.rc:root/ueventd.qcom.rc
