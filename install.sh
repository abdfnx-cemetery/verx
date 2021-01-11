#!/bin/bash

UNAME=$(uname)
verxUrl=https://raw.githubusercontent.com/abdfnx/verx/HEAD/verx
verxLocLD=/usr/local/bin

successInstall() {
    echo "verx was installed successfully 👍"
}

if [ -x "$(command -v curl)" ]; then
    if [[ "$UNAME" == Linux || "$UNAME" == "Darwin" ]]; then
        if [ -x "$(command -v sudo)" ]; then
            sudo wget -P $verxLocLD $verxUrl

            sudo chmod 755 $verxLocLD/verx
        else
            wget -P $verxLocLD $verxUrl

            chmod 755 $verxLocLD/verx
        fi

        successInstall

    elif [[ "$UNAME" == CYGWIN* || "$UNAME" == MINGW* ]]; then
        wget -P /usr/bin $verxUrl

        successInstall

    else
        echo "Unidentified system..."
        echo "support us to 👨‍💻 verx for this system"
    fi
fi
