#


starttime=`date +'%Y-%m-%d %H:%M:%S'`

export PATH=/home/lu/gcc-4.9/bin:${PATH}
export CROSS_COMPILE=aarch64-linux-android-
make ARCH=arm64 O=../out merge_hi6250_defconfig
make ARCH=arm64 O=../out -j8

endtime=`date +'%Y-%m-%d %H:%M:%S'`
start_seconds=$(date --date="$starttime" +%s);
end_seconds=$(date --date="$endtime" +%s);
echo 开始时间：$starttime
echo 结束时间：$endtime
echo "本次Kernel编译用时： "$((end_seconds-start_seconds))"s"
