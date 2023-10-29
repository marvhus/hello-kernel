obj-m += hello.o

KERN_DIR := /lib/modules/$(shell uname -r)/build

all:
	make -C $(KERN_DIR) M=$(PWD) modules

clean:
	make -C $(KERN_DIR) M=$(PWD) clean

start:
	sudo insmod hello.ko
	sudo dmesg | tail -1

stop:
	sudo rmmod hello.ko
	sudo dmesg | tail -1

test:
	sudo insmod hello.ko
	sudo dmesg | tail -1

	sudo rmmod hello.ko
	sudo dmesg | tail -2
