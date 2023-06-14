KERNEL_DIR := device/xiaomi/bouquet-kernel

KERNEL_MODULES := $(wildcard $(KERNEL_DIR)/*.ko)
BOARD_VENDOR_KERNEL_MODULES := $(KERNEL_MODULES)


LOCAL_KERNEL := $(KERNEL_DIR)/whyred-Image.gz-dtb


PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel
