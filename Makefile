d:=$(if $(findstring x86-64,$(shell file /bin/bash)),x64,x86)

install:
	wget -qO- -Bhttp://sigaev.com/programs/nvidia/$(d)/ nvidia{0,1}.txz | tar xiJC /
	patch -d/ -p1 <xorg.conf.patch
