COMPATIBLE_MACHINE = "ipbox55"

require ${META-SH4-NAME}/recipes-bsp/linux/linux-sh4.inc

STXNUMBER = "stx7109"

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-sh4:"

SRC_URI_append += "\
    file://linux-sh4-${MACHINE}_setup_stm24_${STM_PATCH_STR}.patch;patch=1 \
    file://linux-sh4-i2c-st40-pio_stm24_${STM_PATCH_STR}.patch;patch=1 \
    file://linux-sh4-ipbox_bdinfo_stm24_${STM_PATCH_STR}.patch;patch=1 \
"
