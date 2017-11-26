Steps taken to build rPi2 vision image.

Reference URLs:

* [Download Raspbian](https://downloads.raspberrypi.org/raspbian_latest)

***
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
     umount /mnt
     </pre>
     * note the importance of using ">>" instead of ">"

* Next we need to unmount the device.
```umount /mnt```
* Run configurator:
    ```sudo raspi-config```

    * Expand Filesystem
    * Change User Password
    * Boot Options
        * Console, Autologin
    * Advanced Options
        * Serial
            * Yes
        * Hostname
            ```pi4627```

* Create vision dir.
    * ```mkdir -p ~/vision```

* <pre>sudo apt-get update && sudo apt-get -y install
   git \
   cmake \
   python-pip \
   libnss-mdns \
   python-setuptools \
   python-opencv \
   libopencv-dev \
   python-numpy \
   python-dev
   </pre>
    
```sudo pip install enum```
