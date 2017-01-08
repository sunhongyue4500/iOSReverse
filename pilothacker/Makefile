THEOS_DEVICE_IP = 192.168.1.120
ARCHS = armv7 arm64
TARGET = iphone:latest:9.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = PilotHacker
PilotHacker_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Pilot"
