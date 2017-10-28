Steps taken to build rPi2 vision image.

Reference URLs:

* [Download Raspbian](https://downloads.raspberrypi.org/raspbian_latest)

***

* Download Raspbian
* on a linux machine, blow it onto a microSD:
    ```sudo dd if=2015-11-21-raspbian-jessie.img of=/dev/sdc bs=1M```
* After the light stops blinking, move it to the rpi and power up.
    ```ssh pi@raspberrypi.local```

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


```sudo apt-get update && sudo apt-get -y install git cmake python-pip libopencv-dev```
    
```sudo pip install virtualenv```
    
```cd ~/vision; virtualenv venv```
