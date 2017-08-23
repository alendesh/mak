#!/bin/bash

vpnService="openvpn@anchor.service"
checkUrl="jira.anchorfree.local"

case ${1} in
    stop)
        action=Stop
        ;;
    *)
        action=Start
        ;;
esac

function vpnStop () {
    sudo systemctl stop ${vpnService}
}

function vpnStart () {
    sudo systemctl restart ${vpnService}
    sleep 5
    if $(ping -c3 -q ${checkUrl} &>/dev/null); then
        echo "VPN connection established"
    else
        echo "Failed!"
        exit 1
    fi
}

command=vpn${action}
eval ${command}

