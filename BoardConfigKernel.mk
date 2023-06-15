KERNEL_DIR := device/xiaomi/bouquet-kernel

KERNEL_MODULES := $(wildcard $(KERNEL_DIR)/*.ko)
BOARD_VENDOR_KERNEL_MODULES := $(KERNEL_MODULES)

TARGET_PREBUILT_KERNEL := $(KERNEL_DIR)/Image.gz-dtb

