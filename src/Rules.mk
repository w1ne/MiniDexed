#
# Rules.mk
#

-include $(CIRCLE_STDLIB_DIR)/Config.mk

NEWLIBDIR   ?= $(CIRCLE_STDLIB_DIR)/install/$(NEWLIB_ARCH)
CIRCLEHOME  ?= $(CIRCLE_STDLIB_DIR)/libs/circle

include $(CIRCLEHOME)/Rules.mk

INCLUDE += \
	   -I $(CIRCLE_STDLIB_DIR)/include \
	   -I $(NEWLIBDIR)/include

LIBS += \
 	$(NEWLIBDIR)/lib/libm.a \
	$(NEWLIBDIR)/lib/libc.a \
	$(NEWLIBDIR)/lib/libcirclenewlib.a \
	$(CIRCLEHOME)/addon/SDCard/libsdcard.a \
  	$(CIRCLEHOME)/lib/usb/libusb.a \
 	$(CIRCLEHOME)/lib/input/libinput.a \
 	$(CIRCLEHOME)/addon/fatfs/libfatfs.a \
 	$(CIRCLEHOME)/lib/fs/libfs.a \
  	$(CIRCLEHOME)/lib/sched/libsched.a \
	$(CIRCLEHOME)/lib/libcircle.a

-include $(DEPS)