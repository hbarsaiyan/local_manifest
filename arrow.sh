cd /datadrive/arrow
repo init -u https://github.com/ArrowOS/android_manifest.git -b arrow-10.0 --depth=1
repo sync -c -f --force-sync --no-tags --no-clone-bundle -j$(nproc --all) --optimized-fetch
git clone https://github.com/hbarsaiyan/android_device_motorola_falcon -b arrow device/motorola/falcon
git clone https://github.com/hbarsaiyan/android_device_motorola_msm8226-common -b colt device/motorola/msm8226-common
git clone https://github.com/hbarsaiyan/proprietary_vendor_motorola vendor/motorola
git clone https://github.com/RenanQueiroz/android_kernel_motorola_msm8226 kernel/motorola/msm8226
cd /datadrive/arrow
rm -rf frameworks/base
git clone https://github.com/hbarsaiyan/android_frameworks_base-1 frameworks/base
rm -rf hardware/qcom/display-caf/msm8974
git clone https://github.com/hbarsaiyan/android_hardware_qcom_display-1 -b lineage-17.1-caf-msm8974 hardware/qcom/display-caf/msm8974
#rm -rf hardware/qcom/media-caf
#git clone https://github.com/hbarsaiyan/android_hardware_qcom_media -b lineage-17.1-caf-msm8974 hardware/qcom/media-caf
ccache -M 30G
export USE_CCACHE=1
export CCACHE_EXEC=$(command -v ccache)
