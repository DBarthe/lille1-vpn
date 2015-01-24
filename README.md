## Installation
```bash
$ sudo ./install.sh
```

## Usage
if you have systemd and have answered 'Y' during the installation :
```bash
$ sudo systemctl start lille1-vpn
```

else, keep running that in a terminal :
```bash
$ sudo lille1-vpn.sh
```

or in background with :
```bash
$ sudo lille1-vpn.sh > /dev/null &
```

You are now able to access various lille1 services such as ftp, webtp, intranet, ...
