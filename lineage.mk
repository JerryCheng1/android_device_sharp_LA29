$(call inherit-product, device/sharp/pa29/full_pa29.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_NAME := lineage_pa29
BOARD_VENDOR := SG
TARGET_VENDOR := SG
PRODUCT_DEVICE := pa29

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="SG404SH" \
    PRODUCT_NAME="SG404SH" \
    BUILD_FINGERPRINT="SG/SG404SH/SG404SH:5.0.2/F317Q/00.00.00:eng/test-keys" \
    PRIVATE_BUILD_DESC="SG404SH-eng 5.0.2 F317Q 00.00.00 test-keys"