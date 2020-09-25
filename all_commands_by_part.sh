export _JAVA_OPTIONS=-Xmx3g
export USE_CCACHE=1
export CCACHE_EXEC=$(command -v ccache)
. build/envsetup.sh && lunch aosip_mido-userdebug && mka api-stubs-docs -j8 && mka hiddenapi-lists-docs -j8 && mka system-api-stubs-docs -j8 && mka test-api-stubs-docs -j8 && mka kronic -j8
