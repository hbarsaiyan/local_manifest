git clone https://github.com/hbarsaiyan/device_xiaomi_kenzo -b sx device/xiaomi/kenzo
git clone https://github.com/hbarsaiyan/device_xiaomi_msm8956-common -b sx device/xiaomi/msm8956-common
git clone https://github.com/magicxavi/proprietary_vendor_xiaomi -b ten vendor/xiaomi
git clone https://github.com/magicxavi/Escrima_kernel_xiaomi_msm8956 -b ten kernel/xiaomi/msm8956

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
export USE_CCACHE=1
export LC_ALL=C
export TEMPORARY_DISABLE_PATH_RESTRICTIONS=true
