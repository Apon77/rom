export _JAVA_OPTIONS=-Xmx3g
export USE_CCACHE=1
export CCACHE_EXEC=$(command -v ccache)
. build/envsetup.sh && lunch aosip_mido-userdebug && mka kronic -j4
