#include device/google/sdv/sdv_ivi_base/BoardConfig.mk
TARGET_ARCH := ARM
include device/qcom/qssi_au/BoardConfig.mk
SDV_RPC_INTERFACE := sdv_rpc

PRODUCT_PUBLIC_SEPOLICY_DIRS += device/qcom/qssi_au_sdvivi/sepolicy/product/public
PRODUCT_PRIVATE_SEPOLICY_DIRS += device/qcom/qssi_au_sdvivi/sepolicy/product/private
BOARD_PRODUCT_SEPOLICY_PREBUILT_DIRS += device/qcom/qssi_au_sdvivi/sepolicy/product
