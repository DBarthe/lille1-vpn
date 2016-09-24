## Installation

First, You need openvpn installed.

On Debian/Ubuntu:
```bash
$ sudo apt-get install openvpn
```
On ArchLinux:
```bash
$ sudo pacman -S openvpn
```

Then:
```bash
$ git clone https://github.com/DBarthe/lille1-vpn.git
$ cd lille1-vpn
$ sudo ./install.sh
```

## Usage
Keep running that in a terminal :
```bash
$ sudo lille1-vpn.sh
```

or in background with :
```bash
$ sudo lille1-vpn.sh > /dev/null &
```

or if you use systemd and have answered 'Y' during the installation :
```bash
$ sudo systemctl start lille1-vpn
```

You are now able to access various lille1 services such as ftp, webtp, prof, intranet, ...
