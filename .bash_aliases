bind '"\t":menu-complete'

#android
###############################################################################
if [ -f ~/android/sdk/platform-tools/adb ]; then
    alias adb='~/android/sdk/platform-tools/adb'
	alias adb-restart='~/android/sdk/platform-tools/adb kill-server && sudo ~/android/sdk/platform-tools/adb devices'
fi

if [ -f ~/android/ndk/ndk-build ]; then
	alias ndkb='~/android/ndk/ndk-build'
fi

#mutiple device install
alias adbmi='adb devices | tail -n +2 | cut -sf 1 | xargs -iX adb -s X install -r'

#multiple device uninstall
alias adbmu='adb devices | tail -n +2 | cut -sf 1 | xargs -iX adb -s X uninstall'

###############################################################################





#common commands
###############################################################################
g() { 
	grep -r "$1"
}

f() {
	find -name "$1"
}

hg() {
	history | grep "$1"
}

alias r='reset'
###############################################################################





#custom commands, not under VCS
###############################################################################
if [ -f ~/Linux-configs/.bash_aliases_custom ]; then
    . ~/Linux-configs/.bash_aliases_custom
fi
###############################################################################
