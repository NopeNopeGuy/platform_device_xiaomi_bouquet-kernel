# Let it fail if it doesn't match the device
ifeq ($(TARGET_DEVICE),whyred)
    LOCAL_KERNEL := device/xiaomi/bouquet-kernel/whyred-Image.gz-dtb
endif
ifeq ($(TARGET_DEVICE),tulip)
    LOCAL_KERNEL := device/xiaomi/bouquet-kernel/tulip-Image.gz-dtb
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
