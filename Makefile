ARCH:=$(if $(findstring x86-64,$(shell file /bin/bash)),x64,x86)

install:
	install -m644 -t/usr/lib/opengl/nvidia xorg.conf
	install -m755 -t/usr/local/sbin nvidia-remove
	bash -c "wget -qO- s3.amazonaws.com/sigaev/linux/nvidia/$(ARCH)/{0,1}.txz | tee >(tar tiJ | grep -v /$$ | xargs echo rm -f >> /usr/local/sbin/nvidia-remove) | tar xiJC /"
