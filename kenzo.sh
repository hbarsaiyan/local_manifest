git clone https://github.com/magicxavi/device_xiaomi_kenzo -b havoc3.0 device/xiaomi/kenzo
git clone https://github.com/magicxavi/device_xiaomi_msm8956-common -b ten device/xiaomi/msm8956-common
git clone https://github.com/magicxavi/proprietary_vendor_xiaomi -b ten vendor/xiaomi
git clone https://github.com/magicxavi/Escrima_kernel_xiaomi_msm8956 -b ten kernel/xiaomi/msm8956
rm -rf system/bt
git clone https://github.com/magicxavi/android_system_bt-1 -b ten system/bt
rm -rf prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/
git clone https://github.com/magicxavi/android_prebuilts_gcc_linux-x86_aarch64_aarch64-linux-android-4.9 prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/
rm -rf hardware/qcom-caf/msm8952/audio
rm -rf hardware/qcom-caf/msm8952/media
rm -rf hardware/qcom-caf/msm8952/display
git clone https://github.com/magicxavi/android_hardware_qcom_audio -b ten hardware/qcom-caf/msm8952/audio
git clone https://github.com/AmolAmrit/android_hardware_qcom_media hardware/qcom-caf/msm8952/media
git clone https://github.com/AmolAmrit/android_hardware_qcom_display hardware/qcom-caf/msm8952/display
cd frameworks/av
git remote add av https://github.com/magicxavi/platform_frameworks_av
git fetch av
git cherry-pick bb35abb34afedacbecd260baf75650472cf9a447
git clone https://github.com/magicxavi/android_packages_apps_AdvancedControls -b ten packages/apps/AdvancedControls
cd device/xiaomi/kenzo
git revert 75cb214534793844763e3c81d26f9d3e6e9dcdb8