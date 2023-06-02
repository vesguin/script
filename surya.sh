#!/usr/bin

VESGUIN="https://github.com/vesguin"
LOS="https://github.com/LineageOs"

# Device Tree
"$(rm -rf device/xiaomi/surya)"
git clone ${VESGUIN}/android_device_xiaomi_surya -b test device/xiaomi/surya;

# Vendor Tree
"$(rm -rf vendor/xiaomi/surya)"
git clone ${VESGUIN}/android_vendor_xiaomi_surya -b test vendor/xiaomi/surya;

# Kernel Tree
"$(rm -rf kernel/xiaomi/surya)"
git clone ${VESGUIN}/android_kernel_xiaomi_surya -b test kernel/xiaomi/surya;

#HALS
"$(rm -rf hardware/qcom-caf/sm8150/display)"
git clone ${LOS}/android_hardware_qcom_display -b lineage-20.0-caf-sm8150 hardware/qcom-caf/sm8150/display;
"$(rm -rf hardware/qcom-caf/sm8150/media)"
git clone ${LOS}/android_hardware_qcom_media -b lineage-20.0-caf-sm8150 hardware/qcom-caf/sm8150/media;
"$(rm -rf hardware/qcom-caf/sm8150/audio)"
git clone ${LOS}/android_hardware_qcom_audio -b lineage-20.0-caf-sm8150 hardware/qcom-caf/sm8150/audio;

#Dependencies
"$(rm -rf hardware/xiaomi)"
git clone ${LOS}/android_hardware_xiaomi -b lineage-20 hardware/xiaomi;
