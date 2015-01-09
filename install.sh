#!/bin/bash
#sudo apt-get update
#sudo apt-get install -y build-essential python-dev python-smbus python-pip python-imaging python-numpy git
#sudo pip install RPi.GPIO
if [ -d ~/Adafruit_Python_ILI9341 ]; then
	echo "Adafruit_Python_ILI9341 already installed"
else
	cd ~
	git clone https://github.com/adafruit/Adafruit_Python_ILI9341.git
	cd Adafruit_Python_ILI9341
	sudo python setup.py install
fi
sudo npm install -g forever
sudo cp node-server.sh /etc/init.d/
cd /etc/init.d
sudo chmod 755 node-server.sh
sudo update-rc.d node-server.sh defaults
echo "finshed" 