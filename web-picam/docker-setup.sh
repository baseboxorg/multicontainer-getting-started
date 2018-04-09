#!/bin/bash
echo /opt/vc/lib > /etc/ld.so.conf
ldconfig

mkdir -p /opt/vc/bin
cp /RPi_Cam_Web_Interface/bin/raspimjpeg /opt/vc/bin/
chmod 755 /opt/vc/bin/raspimjpeg
if [ ! -e /usr/bin/raspimjpeg ]; then
   sudo ln -s /opt/vc/bin/raspimjpeg /usr/bin/raspimjpeg
fi
