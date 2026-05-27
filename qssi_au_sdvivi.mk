SDV_VEHICLE_POWER_STATE_MANAGER_MODULE := vepsm
SDV_SOMEIP_BROKER_CONFIG := broker_config.json
SDV_VM_LEVEL_PERMISSIONS_MODULE := com.oem.sdv.authz.allow_all.ivi
PRODUCT_BROKEN_SUBOPTIMAL_ORDER_OF_SYSTEM_SERVER_JARS := true
#TARGET_BOARD_DERIVATIVE_SUFFIX := _sdvivi

include device/google/sdv/sdv_ivi_base/sdv_ivi_base.mk
include device/google/sdv/sdv_ivi_base/sdv_samples_ivi_services.mk
include device/google/sdv/sdv_base/sdv_sample_ethernet_setup.mk
include device/google/sdv/sdv_base/sepolicy/samples/device_sepolicy.mk
include device/qcom/qssi_au/qssi_au.mk

VENDOR_QTI_DEVICE := qssi_au_sdvivi
PRODUCT_NAME := $(VENDOR_QTI_DEVICE)
PRODUCT_DEVICE := $(VENDOR_QTI_DEVICE)

PRODUCT_PROPERTY_OVERRIDES += \
ro.boot.sdv.instance_name=instance2 \
ro.boot.sdv.boot_mode=unlocked \
ro.boot.sdv.vvmfactorytrust=c779a73d0595a6814ba0414a419e99ad4026ad0feb603f2ad80ee6a9e4d1adb7 \
ro.vendor.sdv.rpc.network.ready=true \
ro.sdv.ethernet.ready=true \

PRODUCT_PACKAGES += init_open_dice
TARGET_FS_CONFIG_GEN += \
                    device/qcom/qssi_au_sdvivi/config.fs \
                    device/qcom/qssi_au/config.fs \

PRODUCT_PACKAGES += DriverUIPrebuilt
PRODUCT_COPY_FILES += device/google/sdv/sdv_ivi_cf/ethernet/ethernet.sdv_ivi_cf.rc:$(TARGET_COPY_OUT_PRODUCT)/etc/init/ethernet.sdv_ivi_cf.rc
PRODUCT_PACKAGES += passwd

$(call inherit-product, packages/services/Car/car_product/driverui/driverui_app_and_rros.mk)

