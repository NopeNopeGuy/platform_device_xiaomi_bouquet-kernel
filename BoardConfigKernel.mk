KERNEL_DIR := device/xiaomi/bouquet-kernel

KERNEL_MODULES := $(wildcard $(KERNEL_DIR)/*.ko)
BOARD_VENDOR_KERNEL_MODULES := $(KERNEL_MODULES)


# Let it fail if it doesn't match the device
ifeq ($(TARGET_DEVICE),whyred)
    LOCAL_KERNEL := $(KERNEL_DIR)/whyred-Image.gz-dtb
endif
ifeq ($(TARGET_DEVICE),tulip)
    LOCAL_KERNEL := $(KERNEL_DIR)/tulip-Image.gz-dtb
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
