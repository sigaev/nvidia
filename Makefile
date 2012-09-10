ARCH:=$(if $(findstring x86-64,$(shell file /bin/bash)),x64,x86)

install:
	wget -qO- s3.amazonaws.com/sigaev/linux/nvidia/$(ARCH)/{0,1}.txz | tar xiJC /
	install -m644 -t/usr/lib/opengl/nvidia xorg.conf
