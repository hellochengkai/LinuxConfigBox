#!/bin/bash
. $LinuxConfigBoxPath/func/func.sh

install()
{
    sudo_copy_file $LinuxConfigBoxPath/tools/ittun_ngrok/ngrok /bin/ngrok
    sudo_copy_file $LinuxConfigBoxPath/tools/ittun_ngrok/config.yml /etc/ngrok/config.yml
    sudo_copy_file $LinuxConfigBoxPath/tools/ittun_ngrok/ittun-ngrok.service /etc/systemd/system/ittun-ngrok.service
    return
}

# install
