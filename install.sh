#!/bin/bash

UNAME=$(uname)
verxUrl=https://raw.githubusercontent.com/abdfnx/verx/HEAD/verx

successInstall() {
    echo "verx was installed successfully 👍"
}

check_verx_is_installed() {
    if [ -x "$(command -v verx)" ]; then
        successInstall
    fi
}

if [ -x "$(command -v curl)" ]; then
    if [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]]; then
        check_verx_is_installed

        wget -P /usr/bin $verxUrl

        check_verx_is_installed

    else
        verxLocLD=/usr/local/bin

        if [ -x "$(command -v sudo)" ]; then
            sudo wget -P $verxLocLD $verxUrl

            sudo chmod 755 $verxLocLD/verx
        else
            wget -P $verxLocLD $verxUrl

            chmod 755 $verxLocLD/verx
        fi
    fi
fi
