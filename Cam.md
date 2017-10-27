Steps taken to build rPi2 vision image.

Reference URLs:

* [Download Raspbian](https://downloads.raspberrypi.org/raspbian_latest)

***

* Download Raspbian
* on a linux machine, blow it onto a microSD:
    <pre> sudo dd if=2015-11-21-raspbian-jessie.img of=/dev/sdc bs=1M </pre>
* After the light stops blinking, move it to the rpi and power up.
    <pre>ssh pi@raspberrypi.local</pre>

* Run configurator:
    <pre>sudo raspi-config </pre>

    * Expand Filesystem
    * Change User Password
    * Boot Options
        * Console, Autologin
    * Advanced Options
        * Serial
            * Yes
        * Hostname  (which camera? 0-N)
            <pre>cam0</pre>
    * Interfacing Options
        * Enable Camera

* Create vision dir.
    <pre>mkdir -p ~/vision</pre>

* Install a bunch of packages:
    <pre> sudo apt-get update && sudo apt-get -y install git cmake libjpeg8-dev</pre>

* Install mjpg-streamer
    <pre> 
    cd ~/vision
    git clone https://github.com/jacksonliam/mjpg-streamer.git
    cd mjpg-streamer/mjpg-streamer-experimental
    make clean all
    sudo make install
    </pre>

* edit ~/.bashrc
    * add:
        ```LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH```

***

* lets build a startup script to launch it all:
````bash
#!/bin/sh
# Kill everything.
killall -q mjpg_streamer
sudo rm -f /root/GRIP.log*
sleep 2
# In case someone accidentally hits the 'deploy' button.
cd /home/pi/vision/grip
#
if [ -e /dev/video0 ];
then
        env LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH mjpg_streamer -o "output_http.so -w /usr/local/www -p 1180" -i "input_uvc.so -f 15 -r 320x200 -y -n" &
fi
^D
````
* make it executable:
    <pre>chmod 755 /home/pi/vision/start_everything.sh</pre>

* add the following to /etc/rc.local, just before the "exit 0" at the bottom:
    <pre>/home/pi/vision/start_everything.sh &</pre>

* Tell systemd to enable rc.local as a service:
	```sudo systemctl enable rc-local.service```
	
  That will start GRIP at boot.  Seems to take 32 seconds from power-on before contours are published in the network tables.

***

If you got this far, it should be functional.   <pre> ssh pi@cam0.local vision/start_everything.sh</pre>


