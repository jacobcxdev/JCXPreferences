include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = JCXPreferences

JCXPreferences_FILES = $(wildcard *.m)
JCXPreferences_INSTALL_PATH = /Library/PreferenceBundles
JCXPreferences_FRAMEWORKS = UIKit
JCXPreferences_PRIVATE_FRAMEWORKS = Preferences
JCXPreferences_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
    $(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
    $(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/JCXPreferences.plist$(ECHO_END)
