THEOS_DEVICE_IP = 192.168.1.155
ARCHS = arm64
TARGET = iphone:latest:9.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WeChatTest
WeChatTest_FILES = Tweak.xm
WeChatTest_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
