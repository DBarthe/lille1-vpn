
Installation:
----------------------
$ sudo ./install.sh
------------------------

Usage:
if you have systemd and have answered 'Y' during its installation :
---------------------------------
$ sudo systemctl start lille1-vpn
---------------------------------

else, keep running that in a terminal :
--------------------
$ sudo lille1-vpn.sh
--------------------

or in background with :
----------------------------------
$ sudo lille1-vpn.sh > /dev/null &
----------------------------------
