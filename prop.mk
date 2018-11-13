# System.prop for msm8994

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
	rild.libargs=-d /dev/smd0

PRODUCT_PROPERTY_OVERRIDES += \
	persist.rild.nitz_plmn="" \
	persist.rild.nitz_long_ons_0="" \
	persist.rild.nitz_long_ons_1="" \
	persist.rild.nitz_long_ons_2="" \
	persist.rild.nitz_long_ons_3="" \
	persist.rild.nitz_short_ons_0="" \
	persist.rild.nitz_short_ons_1="" \
	persist.rild.nitz_short_ons_2="" \
	persist.rild.nitz_short_ons_3="" \
	ril.subscription.types=NV,RUIM \
	DEVICE_PROVISIONED=1

# Start in global mode
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=10

PRODUCT_PROPERTY_OVERRIDES += \
	debug.sf.hw=1 \
	debug.egl.hw=1 \
	debug.composition.type=c2d \
	persist.hwc.mdpcomp.enable=true \
	persist.mdpcomp.4k2kSplit=1 \
	persist.hwc.mdpcomp.maxpermixer=5 \
	persist.mdpcomp_perfhint=50 \
	debug.mdpcomp.logs=0 \
	persist.metadata_dynfps.disable=true \
	persist.hwc.ptor.enable=true \
	dalvik.vm.heapsize=36m \
	dev.pm.dyn_samplingrate=1 \
	persist.demo.hdmirotationlock=false

#SH_AUDIO_DRIVER-> 14-051
PRODUCT_PROPERTY_OVERRIDES += \
	qcom.hw.aac.encoder=false

# SHARP_EXTEND 2015.01.13 Disable CNE START #
PRODUCT_PROPERTY_OVERRIDES += \
	persist.cne.feature=0

#system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.enable-player=true \
	media.stagefright.enable-http=true \
	media.stagefright.enable-aac=true \
	media.stagefright.enable-qcp=true \
	media.stagefright.enable-fma2dp=true \
	media.stagefright.enable-scan=true \
	mmp.enable.3g2=true \
	mm.enable.smoothstreaming=true \
	media.aac_51_output_enabled=true

#system props for the MM modules
PRODUCT_PROPERTY_OVERRIDES += \
	mm.enable.qcom_parser=3314291

# Enable AwesomePlayer stats
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.sf.statistics=1

# Print clip name being played
PRODUCT_PROPERTY_OVERRIDES += \
	media.stagefright.log-uri=1

# VIDC: debug_levels
# 1:ERROR 2:HIGH 4:LOW 0:NOLOGS 7:AllLOGS
PRODUCT_PROPERTY_OVERRIDES += \
	vidc.debug.level=1

# Additional i/p buffer in case of encoder DCVS
PRODUCT_PROPERTY_OVERRIDES += \
	vidc.enc.dcvs.extra-buff-count=2

# system props for the data modules
PRODUCT_PROPERTY_OVERRIDES += \
	ro.use_data_netmgrd=true \
	persist.data.netmgrd.qos.enable=true \
	persist.data.mode=concurrent \
	ro.data.large_tcp_window_size=true

#system props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
	persist.timed.enable=true

# system prop for opengles version
#
# 196608 is decimal for 0x30000 to report version 3
# 196609 is decimal for 0x30001 to report version 3.1
# 196610 is decimal for 0x30002 to report version 3.2
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196610

# System property for cabl
# SHARP_EXTEND for SHDISP Mod Start
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qualcomm.cabl=0

# System props for bluetooth
# System prop to turn on hfp client
PRODUCT_PROPERTY_OVERRIDES += \
	bluetooth.hfp.client=1

#Simulate sdcard on /data/media
PRODUCT_PROPERTY_OVERRIDES += \
	persist.fuse_sdcard=true

#system prop for Bluetooth SOC type
PRODUCT_PROPERTY_OVERRIDES += \
	qcom.bluetooth.soc=rome

#system prop for A4WP profile support
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bluetooth.a4wp=true

#system prop for wipower support
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bluetooth.wipower=true

#snapdragon value add features
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sdk.audio.ssr=false

#SH_AUDIO_DRIVER-> 14-016
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sdk.audio.fluencetype=fluence \
	persist.audio.fluence.voicecall=true \
	persist.audio.fluence.voicerec=false \
	persist.audio.fluence.speaker=false
#SH_AUDIO_DRIVER<- 14-016
PRODUCT_PROPERTY_OVERRIDES += \
	ro.qc.sdk.sensors.gestures=true \
	ro.qc.sdk.gestures.camera=false \
	ro.qc.sdk.camera.facialproc=false
#property to enable user to access Google WFD settings.
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.wfd.enable=1

#property to choose between virtual/external wfd display
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.wfd.virtual=0 \
	tunnel.audio.encode = false
#enable gapless by default
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.gapless.enabled=true

#Buffer size in kbytes for compress offload playback
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.buffer.size.kb=32

#Enable offload audio video playback by default
PRODUCT_PROPERTY_OVERRIDES += \
	av.offload.enable=true

#Disable 16 bit PCM offload by default
#Change audio.offload.pcm.16bit.enable true
#audio.offload.pcm.16bit.enable=false
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.pcm.16bit.enable=true

#Enable 24 bit PCM offload by default
PRODUCT_PROPERTY_OVERRIDES += \
	audio.offload.pcm.24bit.enable=true

#property to enable VDS WFD solution
PRODUCT_PROPERTY_OVERRIDES += \
	persist.hwc.enable_vds=1

#hwui properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hwui.texture_cache_size=72 \
	ro.hwui.layer_cache_size=48 \
	ro.hwui.r_buffer_cache_size=8 \
	ro.hwui.path_cache_size=32 \
	ro.hwui.gradient_cache_size=1 \
	ro.hwui.drop_shadow_cache_size=6 \
	ro.hwui.texture_cache_flushrate=0.4 \
	ro.hwui.text_small_cache_width=1024 \
	ro.hwui.text_small_cache_height=1024 \
	ro.hwui.text_large_cache_width=2048 \
	ro.hwui.text_large_cache_height=1024

# enable navigation bar
PRODUCT_PROPERTY_OVERRIDES += \
	qemu.hw.mainkeys=0

#enable voice path for PCM VoIP by default
PRODUCT_PROPERTY_OVERRIDES += \
	use.voice.path.for.pcm.voip=true

#selects CoreSight configuration to enable
PRODUCT_PROPERTY_OVERRIDES += \
	persist.debug.coresight.config=none

#System property for FM transmitter
PRODUCT_PROPERTY_OVERRIDES += \
	ro.fm.transmitter=false

# Common qcom
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.extension_library=libqti-perfd-client.so

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.version.incremental=00.00.00

# Property for vendor specific library
PRODUCT_PROPERTY_OVERRIDES += \
	ro.vendor.gt_library=libqti-gt.so \
	ro.vendor.at_library=libqti-at.so \
	sys.games.gt.prof=1
