rm -rf hardware/qcom-caf/sm8150
git clone https://github.com/wadiehabib/hardware_qcom-caf_sm8150_display.git -b 12_soviet hardware/qcom-caf/sm8150/display
git clone https://github.com/yaap/hardware_qcom-caf_sm8150_audio -b twelve hardware/qcom-caf/sm8150/audio
git clone https://github.com/yaap/hardware_qcom-caf_sm8150_media -b twelve hardware/qcom-caf/sm8150/media
git clone https://github.com/wadiehabib/vendor_xiaomi_raphael.git -b oss-12 vendor/xiaomi/raphael --depth=1
git clone https://github.com/SOVIET-ANDROID/kernel_xiaomi_raphael.git -b 12.0 kernel/xiaomi/raphael --depth=1
git clone https://github.com/kdrag0n/proton-clang.git -b master prebuilts/clang/host/linux-x86/clang-proton --depth=1
