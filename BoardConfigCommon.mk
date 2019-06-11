# Common BoardConfig for marlin / sailfish
TARGET_KERNEL_CONFIG := marlin_defconfig
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/google/marlin
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := $(shell grep -v based prebuilts/clang/host/$(HOST_OS)-x86/*/AndroidVersion.txt | sort | tail -n 1 | cut -d : -f 2)

BOARD_VENDORIMAGE_PARTITION_SIZE := 314572800
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
