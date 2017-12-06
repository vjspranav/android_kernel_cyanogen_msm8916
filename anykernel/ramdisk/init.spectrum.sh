#!/system/bin/sh
# SPECTRUM KERNEL MANAGER
# Profile initialization script by nathanchance

# If there is not a persist value, we need to set one
if [ ! -f /data/property/persist.spectrum.profile ]; then
    setprop persist.spectrum.profile 0
fi

# Add few features

# Rendering Tweaks
setprop debug.composition.type c2d
setprop debug.egl.hw 1
setprop debug.enabletr true
setprop debug.overlayui.enable 1
setprop debug.qctwa.preservebuf 1
setprop debug.performance.tuning 1
setprop debug.sf.hw 1
setprop dev.pm.dyn_samplingrate 1
setprop hw3d.force 1
setprop ro.config.disable.hw_accel false
setprop ro.fb.mode 1
setprop ro.sf.compbypass.enable 0
setprop ro.vold.umsdirtyratio 20
setprop persist.sys.composition.type c2d
setprop persist.sys.ui.hw 1
setprop video.accelerate.hw 1

 # Enable GPU Acceleration
setprop debug.sf.hw 1
setprop video.accelerate.hw 1
setprop debug.performance.tuning 1
setprop persist.sys.composition.type gpu
setprop debug.qc.hardware true
setprop debug.qctwa.statusbar 1
setprop debug.qctwa.preservebuf 1
setprop debug.egl.profiler 1
setprop debug.egl.hw 1
setprop debug.composition.type gpu
setprop hw3d.force 1
setprop ro.product.gpu.driver 1
setprop persist.sys.use_16bpp_alpha 1 
setprop persist.sampling_profiler 0
setprop hwui.render_dirty_regions false
setprop hwui.disable_vsync true

 # Saves some battery without reducing performances
setprop wifi.supplicant_scan_interval 497
setprop pm.sleep_mode 1
setprop power.saving.mode 1
setprop ro.ril.disable.power.collapse 0
setprop ro.vold.umsdirtyratio 20

 # Battery save 
setprop pm.sleep_mode 1 
setprop ro.ril.disable.power.collapse 0 
setprop profiler.force_disable_err_rpt 1 
setprop profiler.force_disable_ulog 1 
setprop dalvik.vm.checkjni false 
setprop dalvik.vm.execution-mode int:jit
setprop ro.ril.power_collapse 1
setprop power_supply.wakeup enable
setprop ro.mot.eri.losalert.delay 1000
setprop ro.config.hw_fast_dormancy 1
setprop ro.config.hw_power_saving 1

 # Misc Tweaks (enables ADB service)
setprop persist.service.adb.enable 1

 # Sensor Sleep Control
setprop ro.ril.sensor.sleep.control 1

 # Device will boot faster
setprop persist.sys.shutdown.mode hibernate
setprop ro.config.hw_fast_dormancy 1
setprop ro.config.hw_quickpoweron true

 # Reduce dial-out time
setprop ro.telephony.call_ring.delay 0

 # Allow purge of assets to free more ram
setprop persist.sys.purgeable_assets 1

 # More free ram and apps load faster
setprop dalvik.vm.dexopt-flags m y

 # More RAM 
setprop persist.sys.purgeable_assets 1 
setprop persist.service.pcsync.enable 0 
setprop persist.service.lgospd.enable 0

 # Increase general Performance
setprop debug.performance.tuning 1

 # Increase some Performance
setprop ro.secure 0
setprop persist.sys.use_16bpp_alpha 1
setprop ro.product.gpu.driver 1
 
 # Reduce the black screen time of the proximity sensor
setprop ro.lge.proximity.delay 15
setprop mot.proximity.delay 15
setprop ro.ril.enable.amr.wideband 1

 # TOUCH
setprop touch.presure.scale 0.001

 # Better Scrolling responsiveness and speed
setprop windowsmgr.max_events_per_sec 150
setprop ro.max.fling_velocity 12000
setprop ro.min_pointer_dur 8

 # Smoothens UI
setprop persist.service.lgospd.enable 0
setprop persist.service.pcsync.enable 0
setprop ro.ril.enable.a52 1
setprop ro.ril.enable.a53 0

 # Increase camera's photo and video recording quality
setprop ro.media.dec.jpeg.memcap 10000000
setprop ro.media.enc.hprof.vid.bps 10000000
setprop ro.media.enc.hprof.vid.fps 60

 # Better Flashlight intensity and camera-flash quality
setprop ro.media.capture.flash led
setprop ro.media.capture.flashMinV 3300000
setprop ro.media.capture.torchIntensity 40
setprop ro.media.capture.flashIntensity 70
setprop ro.media.capture.maxres 8m
setprop ro.media.capture.fast.fps 4
setprop ro.media.capture.slow.fps 120
setprop ro.media.panorama.defres 3264x1840
setprop ro.media.panorama.frameres 1280x720
setprop ro.camcorder.videoModes true
setprop ro.media.enc.hprof.vid.fps 65

 # Increase the volume steps in-call
setprop ro.config.vc_call_steps 20

 # Better call voice quality.
setprop ro.ril.enable.amr.wideband 1

 # Force launcher into memory
setprop ro.HOME_APP_ADJ 1

 # Disable Bytecode Verification
setprop dalvik.vm.verify-bytecode false
setprop dalvik.vm.dexopt-flags m y,v n,o v
setprop dalvik.vm.dexopt-flags m y,v n,o v,u n

 # Improves Camera & Video Results
setprop ro.media.panorama.defres 3264x1840
setprop ro.media.panorama.frameres 1280x720
setprop ro.camcorder.videoModes true
setprop ime_extend_row_keyboard true
setprop ime_onehand_keyboard true
setprop ime_split_keyboard true
setprop ime_vibration_pattern 0:60

 # Increase jpg quality to 100%
setprop ro.media.enc.jpeg.quality 100

 # Disable Error reporting and logs
setprop profiler.force_disable_err_rpt 1
setprop profiler.force_disable_ulog 1

 # Disable Sending Usage Data
setprop ro.config.nocheckin 1

 # Fix some application issues (FC)
setprop ro.kernel.android.checkjni 0

 # MMS APN retry timer set to 2 sec( if SMS/MMS couldn`t be sent, it retries after 2 instead of 5 seconds)
setprop ro.gsm.2nd_data_retry_config max/_retries 3, 2000, 2000, 2000

 # Miscellaneous Tweaks for performance
setprop ro.config.hw_menu_unlockscreen false
setprop persist.sys.use_dithering 0
setprop persist.sys.purgeable_assets 1 
setprop dalvik.vm.dexopt-flags m y
setprop ro.mot.eri.losalert.delay 1000

 # Smoother video streaming and tweak media
setprop media.stagefright.enable-player true
setprop media.stagefright.enable-meta true
setprop media.stagefright.enable-scan true
setprop media.stagefright.enable-http true
setprop media.stagefright.enable-aac true
setprop media.stagefright.enable-qcp true
setprop media.stagefright.enable-record true

 # CRT
setprop persist.sys.screen_off crt
setprop persist.sys.screen_on crt

 #
setprop ro.com.google.locationfeatures 1
setprop ro.com.google.networklocation 1
setprop htc.audio.alt.enable 0
setprop htc.audio.hac.enable 0

 # Video Acceleration Enabled And HW debugging
setprop video.accelerate.hw 1
setprop debug.sf.hw 1
setprop debug.performance.tuning 1
setprop debug.egl.profiler 1 
 
 # Measure rendering time in adb shell dumpsys gfxinfo
setprop debug.egl.hw 1
 
 # Disable hardware overlays and use GPU for screen compositing
setprop debug.composition.type gpu 

 # Disable logcat
setprop logcat.live disable

 # Better image quality, lower performance.
setprop persist.sys.use_dithering 1

#Zram Mods
setprop persist.service.zram 0
setprop ro.zram.default 0




