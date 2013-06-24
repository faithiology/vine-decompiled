.class public Lcom/googlecode/javacv/cpp/freenect;
.super Ljava/lang/Object;
.source "freenect.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<libfreenect.h>",
                "<libfreenect-registration.h>",
                "<libfreenect_sync.h>"
            }
            includepath = {
                "/usr/local/include/libfreenect/",
                "/usr/local/include/",
                "/opt/local/include/libfreenect/",
                "/opt/local/include/",
                "/usr/include/libfreenect/"
            }
            link = {
                "freenect@0.1",
                "freenect_sync@0.1"
            }
            linkpath = {
                "/opt/local/lib/",
                "/opt/local/lib64/",
                "/usr/local/lib/",
                "/usr/local/lib64/"
            }
            value = {
                "linux",
                "macosx"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<WinSock2.h>",
                "<libfreenect.h>",
                "<libfreenect-registration.h>",
                "<libfreenect_sync.h>",
                "<libfreenect_sync.c>"
            }
            includepath = {
                "C:/libfreenect/include/",
                "C:/libfreenect/wrappers/c_sync/",
                "C:/pthreads-w32-2-8-0-release/",
                "C:/pthreads.2/",
                "C:/Pre-built.2/include/",
                "src/com/googlecode/javacv/cpp/"
            }
            link = {
                "freenect",
                "pthreadVC2"
            }
            linkpath = {
                "C:/libfreenect/lib/",
                "C:/pthreads-w32-2-8-0-release/",
                "C:/pthreads.2/",
                "C:/Pre-built.2/lib/"
            }
            value = {
                "windows"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/freenect$freenect_registration;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_zero_plane_info;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_reg_pad_info;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_reg_info;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_video_cb;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_depth_cb;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_log_cb;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_usb_context;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_device;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_context;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;,
        Lcom/googlecode/javacv/cpp/freenect$freenect_device_attributes;,
        Lcom/googlecode/javacv/cpp/freenect$timeval;
    }
.end annotation


# static fields
.field public static final FREENECT_COUNTS_PER_G:I = 0x333

.field public static final FREENECT_DEPTH_10BIT:I = 0x1

.field public static final FREENECT_DEPTH_10BIT_PACKED:I = 0x3

.field public static final FREENECT_DEPTH_11BIT:I = 0x0

.field public static final FREENECT_DEPTH_11BIT_PACKED:I = 0x2

.field public static final FREENECT_DEPTH_MM:I = 0x5

.field public static final FREENECT_DEPTH_MM_MAX_VALUE:I = 0x2710

.field public static final FREENECT_DEPTH_MM_NO_VALUE:I = 0x0

.field public static final FREENECT_DEPTH_RAW_MAX_VALUE:I = 0x800

.field public static final FREENECT_DEPTH_RAW_NO_VALUE:I = 0x7ff

.field public static final FREENECT_DEPTH_REGISTERED:I = 0x4

.field public static final FREENECT_DEVICE_AUDIO:I = 0x4

.field public static final FREENECT_DEVICE_CAMERA:I = 0x2

.field public static final FREENECT_LOG_DEBUG:I = 0x5

.field public static final FREENECT_LOG_ERROR:I = 0x1

.field public static final FREENECT_LOG_FATAL:I = 0x0

.field public static final FREENECT_LOG_FLOOD:I = 0x7

.field public static final FREENECT_LOG_INFO:I = 0x4

.field public static final FREENECT_LOG_NOTICE:I = 0x3

.field public static final FREENECT_LOG_SPEW:I = 0x6

.field public static final FREENECT_LOG_WARNING:I = 0x2

.field public static final FREENECT_RESOLUTION_HIGH:I = 0x2

.field public static final FREENECT_RESOLUTION_LOW:I = 0x0

.field public static final FREENECT_RESOLUTION_MEDIUM:I = 0x1

.field public static final FREENECT_VIDEO_BAYER:I = 0x1

.field public static final FREENECT_VIDEO_IR_10BIT:I = 0x3

.field public static final FREENECT_VIDEO_IR_10BIT_PACKED:I = 0x4

.field public static final FREENECT_VIDEO_IR_8BIT:I = 0x2

.field public static final FREENECT_VIDEO_RGB:I = 0x0

.field public static final FREENECT_VIDEO_YUV_RAW:I = 0x6

.field public static final FREENECT_VIDEO_YUV_RGB:I = 0x5

.field public static final LED_BLINK_GREEN:I = 0x4

.field public static final LED_BLINK_RED_YELLOW:I = 0x6

.field public static final LED_GREEN:I = 0x1

.field public static final LED_OFF:I = 0x0

.field public static final LED_RED:I = 0x2

.field public static final LED_YELLOW:I = 0x3

.field public static final TILT_STATUS_LIMIT:I = 0x1

.field public static final TILT_STATUS_MOVING:I = 0x4

.field public static final TILT_STATUS_STOPPED:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 120
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    return-void
.end method

.method public static native freenect_camera_to_world(Lcom/googlecode/javacv/cpp/freenect$freenect_device;III[D[D)V
.end method

.method public static native freenect_close_device(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)I
.end method

.method public static native freenect_copy_registration(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)Lcom/googlecode/javacv/cpp/freenect$freenect_registration;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_destroy_registration(Lcom/googlecode/javacv/cpp/freenect$freenect_registration;)I
.end method

.method public static native freenect_find_depth_mode(II)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_resolution"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_depth_format"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_find_video_mode(II)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_resolution"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_video_format"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_free_device_attributes(Lcom/googlecode/javacv/cpp/freenect$freenect_device_attributes;)V
.end method

.method public static native freenect_get_current_depth_mode(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_get_current_video_mode(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_get_depth_mode(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_get_depth_mode_count()I
.end method

.method public static native freenect_get_mks_accel(Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;[D[D[D)V
.end method

.method public static native freenect_get_tilt_degs(Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;)D
.end method

.method public static native freenect_get_tilt_state(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;
.end method

.method public static native freenect_get_tilt_status(Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "freenect_tilt_status_code"
        }
    .end annotation
.end method

.method public static native freenect_get_user(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native freenect_get_video_mode(I)Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public static native freenect_get_video_mode_count()I
.end method

.method public static native freenect_init(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_usb_context;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native freenect_list_device_attributes(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_device_attributes;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native freenect_num_devices(Lcom/googlecode/javacv/cpp/freenect$freenect_context;)I
.end method

.method public static native freenect_open_device(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_device;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native freenect_open_device_by_camera_serial(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char*"
            }
        .end annotation
    .end parameter
.end method

.method public static native freenect_open_device_by_camera_serial(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_device;Ljava/lang/String;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native freenect_process_events(Lcom/googlecode/javacv/cpp/freenect$freenect_context;)I
.end method

.method public static native freenect_process_events_timeout(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$timeval;)I
.end method

.method public static native freenect_select_subdevices(Lcom/googlecode/javacv/cpp/freenect$freenect_context;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_device_flags"
            }
        .end annotation
    .end parameter
.end method

.method public static native freenect_set_depth_buffer(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacpp/Pointer;)I
.end method

.method public static native freenect_set_depth_callback(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacv/cpp/freenect$freenect_depth_cb;)V
.end method

.method public static native freenect_set_depth_mode(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native freenect_set_led(Lcom/googlecode/javacv/cpp/freenect$freenect_device;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_led_options"
            }
        .end annotation
    .end parameter
.end method

.method public static native freenect_set_log_callback(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_log_cb;)V
.end method

.method public static native freenect_set_log_level(Lcom/googlecode/javacv/cpp/freenect$freenect_context;I)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_loglevel"
            }
        .end annotation
    .end parameter
.end method

.method public static native freenect_set_tilt_degs(Lcom/googlecode/javacv/cpp/freenect$freenect_device;D)I
.end method

.method public static native freenect_set_user(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native freenect_set_video_buffer(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacpp/Pointer;)I
.end method

.method public static native freenect_set_video_callback(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacv/cpp/freenect$freenect_video_cb;)V
.end method

.method public static native freenect_set_video_mode(Lcom/googlecode/javacv/cpp/freenect$freenect_device;Lcom/googlecode/javacv/cpp/freenect$freenect_frame_mode;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
.end method

.method public static native freenect_shutdown(Lcom/googlecode/javacv/cpp/freenect$freenect_context;)I
.end method

.method public static native freenect_start_depth(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)I
.end method

.method public static native freenect_start_video(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)I
.end method

.method public static native freenect_stop_depth(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)I
.end method

.method public static native freenect_stop_video(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)I
.end method

.method public static native freenect_supported_subdevices()I
.end method

.method public static native freenect_sync_get_depth(Lcom/googlecode/javacpp/Pointer;[III)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_depth_format"
            }
        .end annotation
    .end parameter
.end method

.method public static native freenect_sync_get_tilt_state(Lcom/googlecode/javacv/cpp/freenect$freenect_raw_tilt_state;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native freenect_sync_get_video(Lcom/googlecode/javacpp/Pointer;[III)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "void**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_video_format"
            }
        .end annotation
    .end parameter
.end method

.method public static native freenect_sync_set_led(II)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "freenect_led_options"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native freenect_sync_set_tilt_degs(II)I
.end method

.method public static native freenect_sync_stop()V
.end method

.method public static native freenect_update_tilt_state(Lcom/googlecode/javacv/cpp/freenect$freenect_device;)I
.end method
