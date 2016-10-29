#!/bin/bash
sudo apt-get install libcups2 libcups2-dev
sudo /etc/init.d/cups restart
./configure
make
sudo make install
echo Copying /usr/local/bin to /usr/bin
sudo cp /usr/local/bin/alc1100 /usr/bin
sudo cp /usr/local/bin/alc1100_lprwrapper.sh /usr/bin
sudo cp /usr/local/bin/pstoalc1100.sh /usr/bin
sudo restart cups
echo Done!
