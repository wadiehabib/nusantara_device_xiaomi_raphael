KERNEL="https://github.com/wadiehabib/kernel_xiaomi_raphael -b snaplight"
VENDOR="https://github.com/wadiehabib/vendor_xiaomi_raphael -b oss-12"

DISPLAY="https://github.com/wadiehabib/hardware_qcom-caf_sm8150_display.git -b 12_soviet"
AUDIO="https://github.com/yaap/hardware_qcom-caf_sm8150_audio -b twelve"
MEDIA="https://github.com/yaap/hardware_qcom-caf_sm8150_media -b twelve"

CLANG="https://github.com/kdrag0n/proton-clang.git -b master"




# Check if this is the initial setup or not
FILE=initialsetup > /dev/null 2>&1
if test -f "$FILE"; then :
else
    rm -rf hardware/qcom-caf/sm8150 > /dev/null 2>&1
    rm -rf vendor/xiaomi/raphael > /dev/null 2>&1
    rm -rf kernel/xiaomi/raphael > /dev/null 2>&1
    rm -rf prebuilts/clang/host/linux-x86/clang-proton > /dev/null 2>&1
    echo "Downloading dependencies (initial setup)..."
fi

# Pull changes / download non-existing dependencies
# SM8150-Display
if [ -d "hardware/qcom-caf/sm8150/display" ] 
then
    echo "Pulling changes from GitHub"
    git -C hardware/qcom-caf/sm8150/display pull > /dev/null 2>&1
else
    git clone $DISPLAY hardware/qcom-caf/sm8150/display > /dev/null 2>&1
    echo "SM8150 Display downloaded"
fi
# SM8150-Audio
if [ -d "hardware/qcom-caf/sm8150/audio" ] 
then
    git -C hardware/qcom-caf/sm8150/audio pull > /dev/null 2>&1
else
    git clone $AUDIO hardware/qcom-caf/sm8150/audio > /dev/null 2>&1
    echo "SM8150 Audio downloaded"
fi
# SM8150-Media
if [ -d "hardware/qcom-caf/sm8150/media" ] 
then
    git -C hardware/qcom-caf/sm8150/media pull > /dev/null 2>&1
else
    git clone $MEDIA hardware/qcom-caf/sm8150/media > /dev/null 2>&1
    echo "SM8150 Media downloaded"
fi
# Raphael-Vendor
if [ -d "vendor/xiaomi/raphael" ] 
then
    git -C vendor/xiaomi/raphael pull > /dev/null 2>&1
else
    git clone $VENDOR vendor/xiaomi/raphael --depth=1 > /dev/null 2>&1
    echo "Vendor downloaded"
fi
# Raphael-Kernel
if [ -d "kernel/xiaomi/raphael" ] 
then
    git -C kernel/xiaomi/raphael pull > /dev/null 2>&1
else
    git clone $KERNEL kernel/xiaomi/raphael --depth=1 > /dev/null 2>&1
    echo "Kernel downloaded"
fi
# Clang-Proton
if [ -d "prebuilts/clang/host/linux-x86/clang-proton" ] 
then
    git -C prebuilts/clang/host/linux-x86/clang-proton pull > /dev/null 2>&1
else
    git clone $CLANG prebuilts/clang/host/linux-x86/clang-proton --depth=1 > /dev/null 2>&1
    echo "Clang-Proton downloaded"
fi
# Pull DeviceTree Changes
    git -C device/xiaomi/raphael pull > /dev/null 2>&1

# Create file after initial setup
touch initialsetup > /dev/null 2>&1
