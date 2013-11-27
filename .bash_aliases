#my bash aliases



#android
if [ -f ~/android/sdk/platform-tools/adb ]; then
    alias adb='~/android/sdk/platform-tools/adb'
	alias adb-restart='~/android/sdk/platform-tools/adb kill-server && sudo ~/android/sdk/platform-tools/adb devices'
fi

if [ -f ~/android/ndk/ndk-build ]; then
    alias ndkb='~/android/ndk/ndk-build'
fi



#common commands
g() { 
   grep -r "$1"
}
