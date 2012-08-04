d:=$(if $(findstring x86-64,$(shell file /bin/bash)),x64,x86)

install:
	wget -qO- s3.amazonaws.com/sigaev/programs/nvidia/$(d)/nvidia{0,1}.txz | tar xiJC /
	git apply --directory=/ xorg.conf.patch
