<<<<<<< HEAD
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.google.clientidbase=android-google \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Thank you, please drive thru!
PRODUCT_PROPERTY_OVERRIDES += persist.sys.dun.override=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/cardinal/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/cardinal/prebuilt/common/bin/50-cardinal.sh:system/addon.d/50-cardinal.sh

# Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip

# Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cardinal/overlay/dictionaries

# init.d support
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/bin/sysinit:system/bin/sysinit \
    vendor/cardinal/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cardinal/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init file
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/init.local.rc:root/init.cm.rc

# Bring in camera effects
PRODUCT_COPY_FILES +=  \
    vendor/cardinal/prebuilt/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/cardinal/prebuilt/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# SuperSU
PRODUCT_COPY_FILES += \
   vendor/cardinal/prebuilt/common/etc/UPDATE-SuperSU.zip:system/addon.d/UPDATE-SuperSU.zip \
   vendor/cardinal/prebuilt/common/etc/init.d/99SuperSUDaemon:system/etc/init.d/99SuperSUDaemon
   
# Layers Manager
PRODUCT_COPY_FILES += \
vendor/cardinal/prebuilt/common/app/LayersManager/layersmanager.apk:system/app/LayersManager/layersmanager.apk
=======
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

ifeq ($(PRODUCT_GMS_CLIENTID_BASE),)
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=android-google
else
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.clientidbase=$(PRODUCT_GMS_CLIENTID_BASE)
endif

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable excessive dalvik debug messages
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.debug.alloc=0

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/bin/backuptool.sh:install/bin/backuptool.sh \
    vendor/cardinal/prebuilt/common/bin/backuptool.functions:install/bin/backuptool.functions \
    vendor/cardinal/prebuilt/common/bin/50-cardinal.sh:system/addon.d/50-cardinal.sh

# Signature compatibility validation
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/bin/otasigcheck.sh:install/bin/otasigcheck.sh

# CARDINSL-specific init file
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/init.local.rc:root/init.aospb.rc

# Copy latinime for gesture typing
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/lib/libjni_latinimegoogle.so:system/lib/libjni_latinimegoogle.so

# SELinux filesystem labels
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/init.d/50selinuxrelabel:system/etc/init.d/50selinuxrelabel

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Don't export PS1 in /system/etc/mkshrc.
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/mkshrc:system/etc/mkshrc \
    vendor/cardinal/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf

PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/init.d/00banner:system/etc/init.d/00banner \
    vendor/cardinal/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/cardinal/prebuilt/common/bin/sysinit:system/bin/sysinit

# Required packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
	Camera2 \
    su \
	Eleven \
	CMFileManager \
    Trebuchet	
	
# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# Extra Optional packages
PRODUCT_PACKAGES += \
    LatinIME \
    BluetoothExt

# Extra tools
PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    ntfsfix \
    ntfs-3g

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so
 
# Layers Manager
PRODUCT_COPY_FILES += \
vendor/cardinal/prebuilt/common/app/LayersManager/layersmanager.apk:system/app/LayersManager/layersmanager.apk
>>>>>>> 58de194... [SQUASH][2/3]vendor: Changelog

# Layers Backup
PRODUCT_COPY_FILES += \
   vendor/cardinal/prebuilt/common/bin/71-layers.sh:system/addon.d/71-layers.sh
 
# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Enable wireless Xbox 360 controller support
PRODUCT_COPY_FILES += \
    frameworks/base/data/keyboards/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_0719.kl

# Misc packages
PRODUCT_PACKAGES += \
    BluetoothExt \
    LatinIME \
    libemoji \
    libsepol \
    e2fsck \
    mke2fs \
    tune2fs \
    bash \
    powertop \
    mount.exfat \
    fsck.exfat \
    mkfs.exfat \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    mkfs.ntfs \
    fsck.ntfs \
    mount.ntfs \
    gdbserver \
    micro_bench \
    oprofiled \
    sqlite3 \
    strace \
    Terminal
	
# Required packages
PRODUCT_PACKAGES += \
	Camera2 \
	Eleven  \
	messaging
	
# AudioFX
PRODUCT_PACKAGES += \
    AudioFX

# Stagefright FFMPEG plugin
PRODUCT_PACKAGES += \
    libffmpeg_extractor \
    libffmpeg_omx \
    media_codecs_ffmpeg.xml

PRODUCT_PROPERTY_OVERRIDES += \
    media.sf.omx-plugin=libffmpeg_omx.so \
    media.sf.extractor-plugin=libffmpeg_extractor.so

# Telephony packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Stk

# Mms depends on SoundRecorder for recorded audio messages
PRODUCT_PACKAGES += \
    SoundRecorder

# World APN list
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/apns-conf.xml:system/etc/apns-conf.xml

# Selective SPN list for operator number who has the problem.
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/etc/selective-spn-conf.xml:system/etc/selective-spn-conf.xml

# Overlays & Include LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += \
	vendor/cardinal/overlay/common \
	vendor/cardinal/overlay/dictionaries

# Proprietary latinime libs needed for Keyboard swyping
ifneq ($(filter arm64,$(TARGET_ARCH)),)
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/lib/libjni_latinime.so:system/lib/libjni_latinime.so
else
PRODUCT_COPY_FILES += \
    vendor/cardinal/prebuilt/common/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so
endif

# by default, do not update the recovery with system updates
PRODUCT_PROPERTY_OVERRIDES += persist.sys.recovery_update=false


ifneq ($(TARGET_BUILD_VARIANT),eng)
# Enable ADB authentication
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

$(call inherit-product-if-exists, vendor/extra/product.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/cardinal/overlay/common

# Versioning System
# Cardinal-AOSP first version.
PRODUCT_VERSION_MAJOR = 6.0.1
PRODUCT_VERSION_MINOR = BETA
PRODUCT_VERSION_MAINTENANCE = 1.0
ifdef CARDINAL_BUILD_EXTRA
    CARDINAL_POSTFIX := -$(CARDINAL_BUILD_EXTRA)
endif
ifndef CARDINAL_BUILD_TYPE
ifeq ($(CARDINAL_RELEASE),true)
    CARDINAL := OFFICIAL
    PLATFORM_VERSION_CODENAME := OFFICIAL
    CARDINAL_POSTFIX := -$(shell date +"%Y%m%d")
else
    CARDINAL_BUILD_TYPE := UNOFFICIAL
    PLATFORM_VERSION_CODENAME := UNOFFICIAL
	CARDINAL_POSTFIX := -$(shell date +"%Y%m%d")
endif
endif

ifeq ($(CARDINAL_BUILD_TYPE),DM)
    CARDINAL_POSTFIX := -$(shell date +"%Y%m%d")
endif

ifndef CARDINAL_POSTFIX
    CARDINAL_POSTFIX := -$(shell date +"%Y%m%d-%H%M")
endif

PLATFORM_VERSION_CODENAME := $(CARDINAL_BUILD_TYPE)

# Set all versions
CARDINAL_VERSION := Cardinal-AOSP-$(PRODUCT_VERSION_MINOR)-$(CARDINAL_BUILD_TYPE)$(CARDINAL_POSTFIX)
CARDINAL_MOD_VERSION := Cardinal-AOSP-$(CARDINAL_BUILD)-$(PRODUCT_VERSION_MINOR)-$(CARDINAL_BUILD_TYPE)$(CARDINAL_POSTFIX)

PRODUCT_PROPERTY_OVERRIDES += \
    BUILD_DISPLAY_ID=$(BUILD_ID) \
    ro.cardinal.version=$(CARDINAL_VERSION) \
    ro.modversion=$(CARDINAL_MOD_VERSION) \
    ro.cardinal.buildtype=$(CARDINAL_BUILD_TYPE)
