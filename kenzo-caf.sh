git clone https://github.com/aranhid/device_xiaomi_kenzo -b nos-10-new device/xiaomi/kenzo
git clone https://github.com/aranhid/device_xiaomi_msm8956-common -b nos-10-new device/xiaomi/msm8956-common
git clone https://github.com/aranhid/proprietary_vendor_xiaomi -b nos-10-new vendor/xiaomi
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
cd hardware/qcom-caf/msm8952
cd audio
git remote add a https://github.com/aranhid/android_hardware_qcom_audio-caf-msm8952
git fetch a
git cherry-pick --strategy=recursive -X theirs 1e9dfc1ae4c2921546ad2865c8337c36c478b613
git cherry-pick --strategy=recursive -X theirs a5a45f4215da2283a94e04fc729143a85ecc8dff
cd -
cd media
git remote add m https://github.com/aranhid/android_hardware_qcom_media-caf-msm8952
git fetch m
git cherry-pick --strategy=recursive -X theirs b109f972d9b062966a0a2b9297daa7e841641938
cd -
cd display
git remote add d https://github.com/aranhid/android_hardware_qcom_display-caf-msm8952
git fetch d
git cherry-pick --strategy=recursive -X theirs dbda3cc0b214939fd25f86dd90198da4b11c323a
git cherry-pick --strategy=recursive -X theirs 164fad1ca9d91201a6af81d4409bc325098b90e4
git cherry-pick --strategy=recursive -X theirs 9716e1b3f783dacd9e9f00f113ae97118589e674
cd /drive/du