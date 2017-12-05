Steps taken to build rPi2 vision image.

Reference URLs:

* [Download Raspbian](https://downloads.raspberrypi.org/raspbian_latest)

***

* Download Raspbian
* On your linux machine:
    <pre>cat /proc/partitions</pre>
* Plug in your microSD card.
    <pre>cat /proc/partitions</pre>
* Compare the before/after output and see which device just showed up.  That is the microSD card.
* on your linux machine, blow it onto a microSD (replace '2015-11-21-raspbian-jessie.img' with the filename you downloaded above):
    <pre> sudo dd if=2015-11-21-raspbian-jessie.img of=/dev/sdc bs=1M </pre>
    * Note that /dev/sdc should be replaced with whichever device appeared in /proc/partitions, above.
* After the light stops blinking, you need to mount the first partition to modify the bootup configuration.
     <pre>
     sudo -s
     mount /dev/sdc1 /mnt
     touch /mnt/ssh
     echo "enable_uart=1" >> /mnt/config.txt
     echo "dtoverlay=dwc2" >> /mnt/config.txt
     echo "rfkill.default_state=0" >> /mnt/config.txt
     umount /mnt
     </pre>
     * note the importance of using ">>" instead of ">"

* Next we need to modify cmdline.txt. Do this:
```echo "dwc_otg.lpm_enable=0 console=serial0,115200 console=tty1 root=PARTUUID=3a920dfd-02 rootfstype=ext4 elevator=deadline fsck.repair=yes rootwait modules-load=dwc2,g_ether" > /mnt/cmdline.txt```

* Next we need to unmount the device.
```umount /mnt```


* What we've just done is make it so that the Pi0 will start up a USB network interface on its USB port.
* Move the microSD card to the rpi and power up.
    <pre>ssh pi@raspberrypi.local</pre>
    * The password is 'raspberry'

* Run configurator:
    <pre>sudo raspi-config </pre>

    * Change User Password
    * Boot Options
        * Console, Autologin
    * Advanced Options
        * Hostname  (which camera? 0-N)
            <pre>cam0</pre>
        * Expand filesystem
    * Interfacing Options
        * Enable Camera

* Create vision dir.
    <pre>mkdir -p ~/vision</pre>
* Prevent bluetooth/wifi drivers from loading
	<pre>
	cat > /etc/modprobe.d/raspi-blacklist.conf \<\<EOT
	\#wifi
	blacklist brcmfmac
	blacklist brcmutil
	\#bt
	blacklist btbcm
	blacklist hci_uart
   EOT
   </pre>

* Install a bunch of packages:
    ```sudo apt-get update && sudo apt-get -y install git cmake libjpeg8-dev ```

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
	<pre>
	cat > ~/vision/start\_everything.sh \<\<EOT
	\#!/bin/sh
	sudo killall -q mjpg\_streamer
	sleep 2
	\# Uncomment for USB camera
	\#env LD_LIBRARY_PATH=/usr/local/lib: mjpg\_streamer -o "output\_http.so -w /usr/local/www -p 1180" -i "input\_uvc.so -f 15 -r 320x200 -y -n" &
	env LD\_LIBRARY\_PATH=/home/pi/vision/mjpg-streamer/mjpg-streamer-experimental:$LD\_LIBRARY\_PATH /home/pi/vision/mjpg-streamer/mjpg-streamer-experimental/mjpg\_streamer -o "output_http.so -w /home/pi/vision/mjpg-streamer/mjpg-streamer-experimental/www -p 1180" -i "input\_raspicam.so -x 320 -y 200 -fps 15" &
	fi
	EOT
	</pre>
		
* make it executable:
    <pre>chmod 755 /home/pi/vision/start_everything.sh</pre>

* add the following to /etc/rc.local, just before the "exit 0" at the bottom:
    <pre>/home/pi/vision/start_everything.sh &</pre>

* Tell systemd to enable rc.local as a service:
	```sudo systemctl enable rc-local.service```
	
  That will start mjpg_streamer at boot.

***

If you got this far, it should be functional.   <pre> ssh pi@cam0.local vision/start_everything.sh</pre>

and the camera should be visible at: ```http://cam0.local:1180/```


