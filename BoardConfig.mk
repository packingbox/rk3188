USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/rockchip/rk3188/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := rk30board
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true

TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := neon

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_VFP := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_ARMV7A := true

TARGET_BOOTLOADER_BOARD_NAME := rk3188

#root@rk3188:/ # cat /proc/mtd
#dev:    size   erasesize  name
#mtd0: 00400000 00004000 "misc"
#mtd1: 00c00000 00004000 "kernel"	十进制为12582912
#mtd2: 01000000 00004000 "boot"	十进制为16777216
#mtd3: 02000000 00004000 "recovery"	十进制为33554432
#mtd4: 04000000 00004000 "backup"
#mtd5: 08000000 00004000 "cache"
#mtd6: 80000000 00004000 "userdata"	十进制为2147483648
#mtd7: 00400000 00004000 "metadata"
#mtd8: 00400000 00004000 "kpanic"
#mtd9: 30000000 00004000 "system"	十进制为805306368
#mtd10: 2e2e00000 00004000 "user"

#root@android:/ # cat /proc/partitions
#major minor  #blocks  name
#
# 179        0    7761920 mmcblk0
# 179        1    7760896 mmcblk0p1
#  31        0       4096 mtdblock0
#  31        1      12288 mtdblock1
#  31        2      16384 mtdblock2 <--boot.img
#  31        3      32768 mtdblock3
#  31        4      65536 mtdblock4
#  31        5     131072 mtdblock5
#  31        6    2097152 mtdblock6
#  31        7       4096 mtdblock7
#  31        8     786432 mtdblock8
#  31        9   12109824 mtdblock9

# BOARD_KERNEL_PAGESIZE: the pagesize of the stock boot.img and must be set properly in order to boot.
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x60400000
BOARD_KERNEL_PAGESIZE := 16384 #blocks

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 805306368
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2147483648
BOARD_FLASH_BLOCK_SIZE := 16384 #erasesize 0x00004000 of cat /proc/mtd

TARGET_PREBUILT_KERNEL := device/rockchip/rk3188/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_PROVIDES_INIT_RC := true
TARGET_USERIMAGES_USE_EXT4 := true
