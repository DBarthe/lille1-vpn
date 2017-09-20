#!/usr/bin/env bash

lib_path='/usr/local/lib/lille1-vpn'
etc_path='/usr/local/etc/'
bin_path='/usr/local/bin'

read_user() {
    read -p "Enter username (firstname.name): " user
    echo
}

read_password() {
    read -s -p "Enter password: " password
    echo
    read -s -p "Retype password: " re_password
    echo
}

read_password_until_valid() {
    read_password
    while [ ! "$password" = "$re_password" ]; do
	echo "Error: the two passwords does not match"
	read_password
    done
}

install_files()
{
    install -d -m700 "$lib_path"
    install -m400 secret "$lib_path"/
    install -m400 certificat.pem "$lib_path"/
    install -m755 lille1-vpn.sh "$bin_path"/
    install -m744 lille1-vpn.conf "$etc_path"/
}

fill_secret_file() {
    secret_file="$lib_path"/secret
    echo "$user" > "$secret_file"
    echo "$password" >> "$secret_file"
}

install_service() {

    read -p "Install systemd service (for advanced users) ? (y/N)" resp
    if [ "$resp" = 'Y' ] || [ "$resp" = 'y' ];
    then
	install -m755 -d /usr/local/lib/systemd/system
	install -m644 lille1-vpn.service /usr/local/lib/systemd/system/
    fi
}

# The script starts here
read_user && \
    read_password_until_valid && \
    install_files && \
    fill_secret_file && \
    install_service

if [ $? -eq 0 ]; then
    echo
    echo "Thanks to install lille1-vpn :)"
    echo "Now execute 'sudo lille1-vpn.sh' to get connected to the VPN."
else
    echo "Sorry, an error occurs during installation."
fi
