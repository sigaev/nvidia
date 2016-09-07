ARCH:=$(if $(findstring x86-64,$(shell file /bin/bash)),x64,x86)

install:
	install -m755 -t/usr/local/sbin nvidia-remove
	bash -c "wget -qO- s3.amazonaws.com/sigaev/linux/nvidia/$(ARCH)/all.txz | tee >(tar tiJ | grep -v /$$ | xargs echo rm -f >> /usr/local/sbin/nvidia-remove) | tar xiJC /"
	install -m644 -t/etc/X11 xorg.conf
