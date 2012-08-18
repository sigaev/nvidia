d:=$(if $(findstring x86-64,$(shell file /bin/bash)),x64,x86)

install:
	wget -qO- s3.amazonaws.com/sigaev/linux/nvidia/$(d)/{0,1}.txz | tar xiJC /
	patch -fd/ -p1 <xorg.conf.patch
