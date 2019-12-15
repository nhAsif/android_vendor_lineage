# Inherit full common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# GApps
ifeq ($(WITH_GMS),true)
$(warning Building with gapps)
    $(call inherit-product, vendor/gapps/common/common-vendor.mk)
else
$(warning Building vanilla - without gapps)
$(warning Add export WITH_GMS=true)
endif

# Include Lineage LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/dictionaries

$(call inherit-product, vendor/lineage/config/telephony.mk)
