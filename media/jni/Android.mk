LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
    android_media_ImageWriter.cpp \
    android_media_ImageReader.cpp \
    android_media_MediaCrypto.cpp \
    android_media_MediaCodec.cpp \
    android_media_MediaCodecList.cpp \
    android_media_MediaDataSource.cpp \
    android_media_MediaDescrambler.cpp \
    android_media_MediaDrm.cpp \
    android_media_MediaExtractor.cpp \
    android_media_MediaHTTPConnection.cpp \
    android_media_MediaMetricsJNI.cpp \
    android_media_MediaMetadataRetriever.cpp \
    android_media_MediaMuxer.cpp \
    android_media_MediaPlayer.cpp \
    android_media_MediaProfiles.cpp \
    android_media_MediaRecorder.cpp \
    android_media_MediaScanner.cpp \
    android_media_MediaSync.cpp \
    android_media_ResampleInputStream.cpp \
    android_media_SyncParams.cpp \
    android_media_Utils.cpp \
    android_mtp_MtpDatabase.cpp \
    android_mtp_MtpDevice.cpp \
    android_mtp_MtpServer.cpp \
    midi/android_media_midi_MidiDevice.cpp \

LOCAL_SHARED_LIBRARIES := \
    libandroid_runtime \
    libnativehelper \
    libutils \
    libbinder \
    libmedia \
    libmediametrics \
    libmediadrm \
    libmidi \
    libskia \
    libui \
    liblog \
    libcutils \
    libgui \
    libstagefright \
    libstagefright_foundation \
    libcamera_client \
    libmtp \
    libexif \
    libpiex \
    libandroidfw

LOCAL_STATIC_LIBRARIES := \
    libgrallocusage \

LOCAL_C_INCLUDES += \
    external/libexif/ \
    external/piex/ \
    external/tremor/Tremor \
    frameworks/base/core/jni \
    frameworks/base/libs/hwui \
    frameworks/base/media/native \
    frameworks/av/media/libmedia \
    frameworks/av/media/libstagefright \
    frameworks/av/media/mtp \
    frameworks/native/include/media/openmax \
    $(call include-path-for, libhardware)/hardware \
    $(PV_INCLUDES) \
    $(JNI_H_INCLUDE)

LOCAL_CFLAGS += -Wall -Werror -Wno-error=deprecated-declarations -Wunused -Wunreachable-code

LOCAL_MODULE:= libmedia_jni

include $(BUILD_SHARED_LIBRARY)

# build libsoundpool.so
# build libaudioeffect_jni.so
include $(call all-makefiles-under,$(LOCAL_PATH))
