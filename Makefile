
all: patches
clean:
	cd patches/2.032 && make clean
#	cd firmware && make clean
patches: firmwares
	cd patches/2.032 && make all
firmwares:
	cd firmware && make all
flash:
#	cd patches/2.032 && make flash
	cd applet && make flash