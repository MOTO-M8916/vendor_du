# Boot Animation
ifeq ($(filter osprey,harpia,lux,merlin,surnia,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/media/720x1280.zip:system/media/bootanimation.zip
endif

ifneq ($(filter taimen,$(du_device)),)
scr_resolution := 1440x2880
endif

ifneq ($(filter shamu marlin angler nash,$(du_device)),)
scr_resolution := 1440x2560
endif

ifneq ($(filter dumpling,$(du_device)),)
scr_resolution := 1080x2160
endif

ifneq ($(filter tenderloin,$(du_device)),)
scr_resolution := 768x1024
endif

ifneq ($(filter dragon,$(du_device)),)
scr_resolution := 1800x2560
endif

ifneq ($(wildcard vendor/du/prebuilt/common/media/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/media/$(scr_resolution).zip:system/media/bootanimation.zip
endif
