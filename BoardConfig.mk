USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/sawshark/BoardConfigVendor.mk

DEVICE_PATH := device/huawei/sawshark

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := MSM8909w
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

TARGET_NO_RADIOIMAGE := true
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := sawshark

BOARD_KERNEL_CMDLINE := androidboot.hardware=sawshark console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --base 0x00000000 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000
BOARD_KERNEL_PAGESIZE := 2048

# prebuilt kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel
#TARGET_KERNEL_SOURCE := kernel/huawei/sawshark
#TARGET_KERNEL_CONFIG := sawshark_defconfig

BOARD_BOOTIMAGE_PARTITION_SIZE := 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 
BOARD_CACHEIMAGE_PARTITION_SIZE := 
BOARD_FLASH_BLOCK_SIZE := 

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_JB_CRYPTO := true

# recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs

# what is this?
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true 
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/config/twrp.fstab

# TWRP
TW_THEME := watch_mdpi
TW_ROUND_SCREEN := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_NO_USB_STORAGE := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
#BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_SUPERSU := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 180
TARGET_RECOVERY_QCOM_RTC_FIX := true
