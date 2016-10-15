#!/usr/bin/env sh

openvpn_config="/usr/local/etc/lille1-vpn.conf"
openvpn --config "$openvpn_config" --script-security 2 --up /etc/openvpn/update-resolv-conf --down /etc/openvpn/update-resolv-conf
