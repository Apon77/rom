#!/bin/bash

bot_token=1336436573:AAFpaGsPLEc90A9LBObk6kSXDvjrySmQH14        #Get token from Telegra        >
send_message_to=571213272               #Give telegram id/group id where message will b

curl -s -X POST https://api.telegram.org/bot$bot_token/sendMessage -d chat_id=$send_message_to -d text="Build started"

ccache_dir=/dev/shm/ 	#Space is not allowed
max_ccache=30G


export CCACHE_DIR=$ccache_dir
ccache -M $max_ccache

export USE_CCACHE=1
export CCACHE_EXEC=$(which ccache)
#export SELINUX_IGNORE_NEVERALLOWS=true

export KBUILD_BUILD_USER="k"
export KBUILD_BUILD_HOST="K"
#export DEVICE_MAINTAINERS="Khalakuzzaman Apon"

cd /mnt/aex/
. build/envsetup.sh
#lunch superior_tulip-userdebug
lunch aosp_mido-userdebug
make aex -j18


curl -s -X POST https://api.telegram.org/bot$bot_token/sendMessage -d chat_id=$send_message_to -d text="Build finished"
