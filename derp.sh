git clone https://github.com/magicxavi/device_xiaomi_kenzo -b havoc3.0 device/xiaomi/kenzo
git clone https://github.com/magicxavi/device_xiaomi_msm8956-common -b ten device/xiaomi/msm8956-common
git clone https://github.com/magicxavi/proprietary_vendor_xiaomi -b ten vendor/xiaomi
git clone https://github.com/magicxavi/Escrima_kernel_xiaomi_msm8956 -b ten kernel/xiaomi/msm8956
cd system/bt
git remote add bt https://github.com/magicxavi/android_system_bt-1
git fetch bt
git cherry-pick --strategy=recursive -X theirs 53294891018208bf3ccef0fa85d8dd52510485ba
cd -
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
cd -
rm -rf device/xiaomi/kenzo/overlay/frameworks/base/packages
git clone https://github.com/magicxavi/android_packages_apps_AdvancedControls -b ten packages/apps/AdvancedControls
cd frameworks/base
git remote add fb https://github.com/saikat0511/platform_frameworks_base
git fetch fb
git cherry-pick --strategy=recursive -X theirs 26fba26322651e32454362de33b02c047f9cb683
cd -
cd packages/apps/DerpQuest
git remote add dq https://github.com/saikat0511/platform_packages_apps_DerpQuest
git fetch dq
git cherry-pick --strategy=recursive -X theirs 2e33801069ece6a22a5179374b5e2c8384565941
cd -
