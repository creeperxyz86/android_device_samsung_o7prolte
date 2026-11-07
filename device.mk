#Inherit from vendor
$(call inherit-product-if-exists, vendor/samsung/o7prolte/o7prolte-vendor.mk)

# Inherit from common
$(call inherit-product, device/samsung/o7-common/device-common.mk)

LOCAL_PATH := device/samsung/o7prolte

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Common overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# PRODUCT_COPY_FILES += \
#     device/samsung/o7prolte/phh-ims/privapp-permissions-phh-ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-phh-ims.xml

# Enable VoLTE/VoWiFi UI
PRODUCT_PROPERTY_OVERRIDES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1
