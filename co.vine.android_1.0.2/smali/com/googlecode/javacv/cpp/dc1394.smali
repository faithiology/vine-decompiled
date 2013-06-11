.class public Lcom/googlecode/javacv/cpp/dc1394;
.super Ljava/lang/Object;
.source "dc1394.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    include = {
        "<poll.h>",
        "<dc1394/dc1394.h>"
    }
    includepath = {
        "/usr/local/include:/opt/local/include/"
    }
    link = {
        "dc1394@.22"
    }
    linkpath = {
        "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
    }
    value = {
        "linux",
        "macosx"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/dc1394$dc1394format7modeset_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394framerates_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394featureset_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_modes_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_modes_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394video_modes_t;,
        Lcom/googlecode/javacv/cpp/dc1394$dc1394color_codings_t;,
        Lcom/googlecode/javacv/cpp/dc1394$Log_handler;,
        Lcom/googlecode/javacv/cpp/dc1394$pollfd;
    }
.end annotation


# static fields
.field public static final DC1394_BASLER_CORRUPTED_SFF_CHUNK:I = -0x26

.field public static final DC1394_BASLER_NO_MORE_SFF_CHUNKS:I = -0x25

.field public static final DC1394_BASLER_UNKNOWN_SFF_CHUNK:I = -0x27

.field public static final DC1394_BAYER_METHOD_AHD:I = 0x7

.field public static final DC1394_BAYER_METHOD_BILINEAR:I = 0x2

.field public static final DC1394_BAYER_METHOD_DOWNSAMPLE:I = 0x4

.field public static final DC1394_BAYER_METHOD_EDGESENSE:I = 0x5

.field public static final DC1394_BAYER_METHOD_HQLINEAR:I = 0x3

.field public static final DC1394_BAYER_METHOD_MAX:I = 0x7

.field public static final DC1394_BAYER_METHOD_MIN:I = 0x0

.field public static final DC1394_BAYER_METHOD_NEAREST:I = 0x0

.field public static final DC1394_BAYER_METHOD_NUM:I = 0x8

.field public static final DC1394_BAYER_METHOD_SIMPLE:I = 0x1

.field public static final DC1394_BAYER_METHOD_VNG:I = 0x6

.field public static final DC1394_BYTE_ORDER_MAX:I = 0x321

.field public static final DC1394_BYTE_ORDER_MIN:I = 0x320

.field public static final DC1394_BYTE_ORDER_NUM:I = 0x2

.field public static final DC1394_BYTE_ORDER_UYVY:I = 0x320

.field public static final DC1394_BYTE_ORDER_YUYV:I = 0x321

.field public static final DC1394_CAMERA_NOT_INITIALIZED:I = -0x4

.field public static final DC1394_CAPTURE_FLAGS_AUTO_ISO:I = 0x8

.field public static final DC1394_CAPTURE_FLAGS_BANDWIDTH_ALLOC:I = 0x2

.field public static final DC1394_CAPTURE_FLAGS_CHANNEL_ALLOC:I = 0x1

.field public static final DC1394_CAPTURE_FLAGS_DEFAULT:I = 0x4

.field public static final DC1394_CAPTURE_IS_NOT_SET:I = -0xa

.field public static final DC1394_CAPTURE_IS_RUNNING:I = -0xb

.field public static final DC1394_CAPTURE_POLICY_MAX:I = 0x2a1

.field public static final DC1394_CAPTURE_POLICY_MIN:I = 0x2a0

.field public static final DC1394_CAPTURE_POLICY_NUM:I = 0x2

.field public static final DC1394_CAPTURE_POLICY_POLL:I = 0x2a1

.field public static final DC1394_CAPTURE_POLICY_WAIT:I = 0x2a0

.field public static final DC1394_COLOR_CODING_MAX:I = 0x16a

.field public static final DC1394_COLOR_CODING_MIN:I = 0x160

.field public static final DC1394_COLOR_CODING_MONO16:I = 0x165

.field public static final DC1394_COLOR_CODING_MONO16S:I = 0x167

.field public static final DC1394_COLOR_CODING_MONO8:I = 0x160

.field public static final DC1394_COLOR_CODING_NUM:I = 0xb

.field public static final DC1394_COLOR_CODING_RAW16:I = 0x16a

.field public static final DC1394_COLOR_CODING_RAW8:I = 0x169

.field public static final DC1394_COLOR_CODING_RGB16:I = 0x166

.field public static final DC1394_COLOR_CODING_RGB16S:I = 0x168

.field public static final DC1394_COLOR_CODING_RGB8:I = 0x164

.field public static final DC1394_COLOR_CODING_YUV411:I = 0x161

.field public static final DC1394_COLOR_CODING_YUV422:I = 0x162

.field public static final DC1394_COLOR_CODING_YUV444:I = 0x163

.field public static final DC1394_COLOR_FILTER_BGGR:I = 0x203

.field public static final DC1394_COLOR_FILTER_GBRG:I = 0x201

.field public static final DC1394_COLOR_FILTER_GRBG:I = 0x202

.field public static final DC1394_COLOR_FILTER_MAX:I = 0x203

.field public static final DC1394_COLOR_FILTER_MIN:I = 0x200

.field public static final DC1394_COLOR_FILTER_NUM:I = 0x4

.field public static final DC1394_COLOR_FILTER_RGGB:I = 0x200

.field public static final DC1394_ERROR_MAX:I = 0x0

.field public static final DC1394_ERROR_MIN:I = -0x27

.field public static final DC1394_ERROR_NUM:I = 0x28

.field public static final DC1394_FAILURE:I = -0x1

.field public static final DC1394_FALSE:I = 0x0

.field public static final DC1394_FEATURE_BRIGHTNESS:I = 0x1a0

.field public static final DC1394_FEATURE_CAPTURE_QUALITY:I = 0x1b5

.field public static final DC1394_FEATURE_CAPTURE_SIZE:I = 0x1b4

.field public static final DC1394_FEATURE_EXPOSURE:I = 0x1a1

.field public static final DC1394_FEATURE_FOCUS:I = 0x1aa

.field public static final DC1394_FEATURE_FRAME_RATE:I = 0x1af

.field public static final DC1394_FEATURE_GAIN:I = 0x1a8

.field public static final DC1394_FEATURE_GAMMA:I = 0x1a6

.field public static final DC1394_FEATURE_HUE:I = 0x1a4

.field public static final DC1394_FEATURE_IRIS:I = 0x1a9

.field public static final DC1394_FEATURE_MAX:I = 0x1b5

.field public static final DC1394_FEATURE_MIN:I = 0x1a0

.field public static final DC1394_FEATURE_MODE_AUTO:I = 0x2e1

.field public static final DC1394_FEATURE_MODE_MANUAL:I = 0x2e0

.field public static final DC1394_FEATURE_MODE_MAX:I = 0x2e2

.field public static final DC1394_FEATURE_MODE_MIN:I = 0x2e0

.field public static final DC1394_FEATURE_MODE_NUM:I = 0x3

.field public static final DC1394_FEATURE_MODE_ONE_PUSH_AUTO:I = 0x2e2

.field public static final DC1394_FEATURE_NUM:I = 0x16

.field public static final DC1394_FEATURE_OPTICAL_FILTER:I = 0x1b3

.field public static final DC1394_FEATURE_PAN:I = 0x1b1

.field public static final DC1394_FEATURE_SATURATION:I = 0x1a5

.field public static final DC1394_FEATURE_SHARPNESS:I = 0x1a2

.field public static final DC1394_FEATURE_SHUTTER:I = 0x1a7

.field public static final DC1394_FEATURE_TEMPERATURE:I = 0x1ab

.field public static final DC1394_FEATURE_TILT:I = 0x1b2

.field public static final DC1394_FEATURE_TRIGGER:I = 0x1ac

.field public static final DC1394_FEATURE_TRIGGER_DELAY:I = 0x1ad

.field public static final DC1394_FEATURE_WHITE_BALANCE:I = 0x1a3

.field public static final DC1394_FEATURE_WHITE_SHADING:I = 0x1ae

.field public static final DC1394_FEATURE_ZOOM:I = 0x1b0

.field public static final DC1394_FORMAT7_ERROR_FLAG_1:I = -0xd

.field public static final DC1394_FORMAT7_ERROR_FLAG_2:I = -0xe

.field public static final DC1394_FRAMERATE_120:I = 0x26

.field public static final DC1394_FRAMERATE_15:I = 0x23

.field public static final DC1394_FRAMERATE_1_875:I = 0x20

.field public static final DC1394_FRAMERATE_240:I = 0x27

.field public static final DC1394_FRAMERATE_30:I = 0x24

.field public static final DC1394_FRAMERATE_3_75:I = 0x21

.field public static final DC1394_FRAMERATE_60:I = 0x25

.field public static final DC1394_FRAMERATE_7_5:I = 0x22

.field public static final DC1394_FRAMERATE_MAX:I = 0x27

.field public static final DC1394_FRAMERATE_MIN:I = 0x20

.field public static final DC1394_FRAMERATE_NUM:I = 0x8

.field public static final DC1394_FUNCTION_NOT_SUPPORTED:I = -0x3

.field public static final DC1394_IIDC_VERSION_1_04:I = 0x220

.field public static final DC1394_IIDC_VERSION_1_20:I = 0x221

.field public static final DC1394_IIDC_VERSION_1_30:I = 0x223

.field public static final DC1394_IIDC_VERSION_1_31:I = 0x224

.field public static final DC1394_IIDC_VERSION_1_32:I = 0x225

.field public static final DC1394_IIDC_VERSION_1_33:I = 0x226

.field public static final DC1394_IIDC_VERSION_1_34:I = 0x227

.field public static final DC1394_IIDC_VERSION_1_35:I = 0x228

.field public static final DC1394_IIDC_VERSION_1_36:I = 0x229

.field public static final DC1394_IIDC_VERSION_1_37:I = 0x22a

.field public static final DC1394_IIDC_VERSION_1_38:I = 0x22b

.field public static final DC1394_IIDC_VERSION_1_39:I = 0x22c

.field public static final DC1394_IIDC_VERSION_MAX:I = 0x22c

.field public static final DC1394_IIDC_VERSION_MIN:I = 0x220

.field public static final DC1394_IIDC_VERSION_NUM:I = 0xd

.field public static final DC1394_IIDC_VERSION_PTGREY:I = 0x222

.field public static final DC1394_INVALID_ARGUMENT_VALUE:I = -0xf

.field public static final DC1394_INVALID_BAYER_METHOD:I = -0x1d

.field public static final DC1394_INVALID_BYTE_ORDER:I = -0x23

.field public static final DC1394_INVALID_CAPTURE_POLICY:I = -0x1b

.field public static final DC1394_INVALID_COLOR_CODING:I = -0x19

.field public static final DC1394_INVALID_COLOR_FILTER:I = -0x1a

.field public static final DC1394_INVALID_ERROR_CODE:I = -0x1c

.field public static final DC1394_INVALID_FEATURE:I = -0x11

.field public static final DC1394_INVALID_FEATURE_MODE:I = -0x21

.field public static final DC1394_INVALID_FRAMERATE:I = -0x14

.field public static final DC1394_INVALID_IIDC_VERSION:I = -0x18

.field public static final DC1394_INVALID_ISO_SPEED:I = -0x17

.field public static final DC1394_INVALID_LOG_TYPE:I = -0x22

.field public static final DC1394_INVALID_OPERATION_MODE:I = -0x1f

.field public static final DC1394_INVALID_STEREO_METHOD:I = -0x24

.field public static final DC1394_INVALID_TRIGGER_MODE:I = -0x15

.field public static final DC1394_INVALID_TRIGGER_POLARITY:I = -0x20

.field public static final DC1394_INVALID_TRIGGER_SOURCE:I = -0x16

.field public static final DC1394_INVALID_VIDEO1394_DEVICE:I = -0x1e

.field public static final DC1394_INVALID_VIDEO_FORMAT:I = -0x12

.field public static final DC1394_INVALID_VIDEO_MODE:I = -0x13

.field public static final DC1394_IOCTL_FAILURE:I = -0x9

.field public static final DC1394_ISO_SPEED_100:I = 0x0

.field public static final DC1394_ISO_SPEED_1600:I = 0x4

.field public static final DC1394_ISO_SPEED_200:I = 0x1

.field public static final DC1394_ISO_SPEED_3200:I = 0x5

.field public static final DC1394_ISO_SPEED_400:I = 0x2

.field public static final DC1394_ISO_SPEED_800:I = 0x3

.field public static final DC1394_ISO_SPEED_MAX:I = 0x5

.field public static final DC1394_ISO_SPEED_MIN:I = 0x0

.field public static final DC1394_ISO_SPEED_NUM:I = 0x6

.field public static final DC1394_LOG_DEBUG:I = 0x302

.field public static final DC1394_LOG_ERROR:I = 0x300

.field public static final DC1394_LOG_MAX:I = 0x302

.field public static final DC1394_LOG_MIN:I = 0x300

.field public static final DC1394_LOG_NUM:I = 0x3

.field public static final DC1394_LOG_WARNING:I = 0x301

.field public static final DC1394_MEMORY_ALLOCATION_FAILURE:I = -0x5

.field public static final DC1394_NOT_A_CAMERA:I = -0x2

.field public static final DC1394_NO_BANDWIDTH:I = -0x8

.field public static final DC1394_NO_ISO_CHANNEL:I = -0x7

.field public static final DC1394_OFF:I = 0x0

.field public static final DC1394_ON:I = 0x1

.field public static final DC1394_OPERATION_MODE_1394B:I = 0x1e1

.field public static final DC1394_OPERATION_MODE_LEGACY:I = 0x1e0

.field public static final DC1394_OPERATION_MODE_MAX:I = 0x1e1

.field public static final DC1394_OPERATION_MODE_MIN:I = 0x1e0

.field public static final DC1394_OPERATION_MODE_NUM:I = 0x2

.field public static final DC1394_PHY_DELAY_MAX:I = 0x281

.field public static final DC1394_PHY_DELAY_MAX_144_NS:I = 0x280

.field public static final DC1394_PHY_DELAY_MIN:I = 0x280

.field public static final DC1394_PHY_DELAY_NUM:I = 0x2

.field public static final DC1394_PHY_DELAY_UNKNOWN_0:I = 0x281

.field public static final DC1394_PHY_DELAY_UNKNOWN_1:I = 0x282

.field public static final DC1394_PHY_DELAY_UNKNOWN_2:I = 0x283

.field public static final DC1394_POWER_CLASS_MAX:I = 0x267

.field public static final DC1394_POWER_CLASS_MIN:I = 0x260

.field public static final DC1394_POWER_CLASS_NONE:I = 0x260

.field public static final DC1394_POWER_CLASS_NUM:I = 0x8

.field public static final DC1394_POWER_CLASS_PROV_MIN_15W:I = 0x261

.field public static final DC1394_POWER_CLASS_PROV_MIN_30W:I = 0x262

.field public static final DC1394_POWER_CLASS_PROV_MIN_45W:I = 0x263

.field public static final DC1394_POWER_CLASS_USES_MAX_10W:I = 0x267

.field public static final DC1394_POWER_CLASS_USES_MAX_1W:I = 0x264

.field public static final DC1394_POWER_CLASS_USES_MAX_3W:I = 0x265

.field public static final DC1394_POWER_CLASS_USES_MAX_6W:I = 0x266

.field public static final DC1394_QUERY_FROM_CAMERA:I = -0x1

.field public static final DC1394_RAW1394_FAILURE:I = -0xc

.field public static final DC1394_REQ_VALUE_OUTSIDE_RANGE:I = -0x10

.field public static final DC1394_STEREO_METHOD_FIELD:I = 0x1

.field public static final DC1394_STEREO_METHOD_INTERLACED:I = 0x0

.field public static final DC1394_STEREO_METHOD_MAX:I = 0x1

.field public static final DC1394_STEREO_METHOD_MIN:I = 0x0

.field public static final DC1394_STEREO_METHOD_NUM:I = 0x2

.field public static final DC1394_SUCCESS:I = 0x0

.field public static final DC1394_TAGGED_REGISTER_NOT_FOUND:I = -0x6

.field public static final DC1394_TRIGGER_ACTIVE_HIGH:I = 0x2c1

.field public static final DC1394_TRIGGER_ACTIVE_LOW:I = 0x2c0

.field public static final DC1394_TRIGGER_ACTIVE_MAX:I = 0x2c1

.field public static final DC1394_TRIGGER_ACTIVE_MIN:I = 0x2c0

.field public static final DC1394_TRIGGER_ACTIVE_NUM:I = 0x2

.field public static final DC1394_TRIGGER_MODE_0:I = 0x180

.field public static final DC1394_TRIGGER_MODE_1:I = 0x181

.field public static final DC1394_TRIGGER_MODE_14:I = 0x186

.field public static final DC1394_TRIGGER_MODE_15:I = 0x187

.field public static final DC1394_TRIGGER_MODE_2:I = 0x182

.field public static final DC1394_TRIGGER_MODE_3:I = 0x183

.field public static final DC1394_TRIGGER_MODE_4:I = 0x184

.field public static final DC1394_TRIGGER_MODE_5:I = 0x185

.field public static final DC1394_TRIGGER_MODE_MAX:I = 0x187

.field public static final DC1394_TRIGGER_MODE_MIN:I = 0x180

.field public static final DC1394_TRIGGER_MODE_NUM:I = 0x8

.field public static final DC1394_TRIGGER_SOURCE_0:I = 0x240

.field public static final DC1394_TRIGGER_SOURCE_1:I = 0x241

.field public static final DC1394_TRIGGER_SOURCE_2:I = 0x242

.field public static final DC1394_TRIGGER_SOURCE_3:I = 0x243

.field public static final DC1394_TRIGGER_SOURCE_MAX:I = 0x244

.field public static final DC1394_TRIGGER_SOURCE_MIN:I = 0x240

.field public static final DC1394_TRIGGER_SOURCE_NUM:I = 0x5

.field public static final DC1394_TRIGGER_SOURCE_SOFTWARE:I = 0x244

.field public static final DC1394_TRUE:I = 0x1

.field public static final DC1394_USE_MAX_AVAIL:I = -0x2

.field public static final DC1394_USE_RECOMMENDED:I = -0x3

.field public static final DC1394_VIDEO_MODE_1024x768_MONO16:I = 0x4e

.field public static final DC1394_VIDEO_MODE_1024x768_MONO8:I = 0x4c

.field public static final DC1394_VIDEO_MODE_1024x768_RGB8:I = 0x4b

.field public static final DC1394_VIDEO_MODE_1024x768_YUV422:I = 0x4a

.field public static final DC1394_VIDEO_MODE_1280x960_MONO16:I = 0x55

.field public static final DC1394_VIDEO_MODE_1280x960_MONO8:I = 0x51

.field public static final DC1394_VIDEO_MODE_1280x960_RGB8:I = 0x50

.field public static final DC1394_VIDEO_MODE_1280x960_YUV422:I = 0x4f

.field public static final DC1394_VIDEO_MODE_1600x1200_MONO16:I = 0x56

.field public static final DC1394_VIDEO_MODE_1600x1200_MONO8:I = 0x54

.field public static final DC1394_VIDEO_MODE_1600x1200_RGB8:I = 0x53

.field public static final DC1394_VIDEO_MODE_1600x1200_YUV422:I = 0x52

.field public static final DC1394_VIDEO_MODE_160x120_YUV444:I = 0x40

.field public static final DC1394_VIDEO_MODE_320x240_YUV422:I = 0x41

.field public static final DC1394_VIDEO_MODE_640x480_MONO16:I = 0x46

.field public static final DC1394_VIDEO_MODE_640x480_MONO8:I = 0x45

.field public static final DC1394_VIDEO_MODE_640x480_RGB8:I = 0x44

.field public static final DC1394_VIDEO_MODE_640x480_YUV411:I = 0x42

.field public static final DC1394_VIDEO_MODE_640x480_YUV422:I = 0x43

.field public static final DC1394_VIDEO_MODE_800x600_MONO16:I = 0x4d

.field public static final DC1394_VIDEO_MODE_800x600_MONO8:I = 0x49

.field public static final DC1394_VIDEO_MODE_800x600_RGB8:I = 0x48

.field public static final DC1394_VIDEO_MODE_800x600_YUV422:I = 0x47

.field public static final DC1394_VIDEO_MODE_EXIF:I = 0x57

.field public static final DC1394_VIDEO_MODE_FORMAT7_0:I = 0x58

.field public static final DC1394_VIDEO_MODE_FORMAT7_1:I = 0x59

.field public static final DC1394_VIDEO_MODE_FORMAT7_2:I = 0x5a

.field public static final DC1394_VIDEO_MODE_FORMAT7_3:I = 0x5b

.field public static final DC1394_VIDEO_MODE_FORMAT7_4:I = 0x5c

.field public static final DC1394_VIDEO_MODE_FORMAT7_5:I = 0x5d

.field public static final DC1394_VIDEO_MODE_FORMAT7_6:I = 0x5e

.field public static final DC1394_VIDEO_MODE_FORMAT7_7:I = 0x5f

.field public static final DC1394_VIDEO_MODE_FORMAT7_MAX:I = 0x5f

.field public static final DC1394_VIDEO_MODE_FORMAT7_MIN:I = 0x58

.field public static final DC1394_VIDEO_MODE_FORMAT7_NUM:I = 0x8

.field public static final DC1394_VIDEO_MODE_MAX:I = 0x5f

.field public static final DC1394_VIDEO_MODE_MIN:I = 0x40

.field public static final DC1394_VIDEO_MODE_NUM:I = 0x20

.field public static final POLLERR:S = 0x8s

.field public static final POLLHUP:S = 0x10s

.field public static final POLLIN:S = 0x1s

.field public static final POLLMSG:S = 0x400s

.field public static final POLLNVAL:S = 0x20s

.field public static final POLLOUT:S = 0x4s

.field public static final POLLPRI:S = 0x2s

.field public static final POLLRDHUP:S = 0x2000s

.field public static final POLLREMOVE:S = 0x1000s


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    return-void
.end method

.method public static native dc1394_bayer_decoding_16bit(Lcom/googlecode/javacpp/ShortPointer;Lcom/googlecode/javacpp/ShortPointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint16_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_filter_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bayer_method_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_bayer_decoding_8bit(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_filter_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bayer_method_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_enumerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_free(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)V
.end method

.method public static native dc1394_camera_free_list(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;)V
.end method

.method public static native dc1394_camera_get_broadcast(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_get_node(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_new(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;J)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public static native dc1394_camera_new_unit(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;JI)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
.end method

.method public static native dc1394_camera_print_info(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FILE*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_reset(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_set_broadcast(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_camera_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_capture_dequeue(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;ILcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394capture_policy_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_capture_enqueue(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_capture_get_fileno(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
.end method

.method public static native dc1394_capture_is_frame_corrupt(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public static native dc1394_capture_setup(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_capture_stop(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_checksum_crc16(Lcom/googlecode/javacpp/BytePointer;I)S
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native dc1394_checksum_crc16(Ljava/nio/ByteBuffer;I)S
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native dc1394_checksum_crc16([BI)S
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static native dc1394_convert_frames(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_convert_to_MONO8(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_convert_to_RGB8(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_convert_to_YUV422(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;IIIII)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_debayer_frames(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bayer_method_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_deinterlace_stereo(Lcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint8_t*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_deinterlace_stereo_frames(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394stereo_method_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_error_get_string(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394error_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native dc1394_external_trigger_get_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394trigger_mode_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_get_polarity(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394trigger_polarity_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_get_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_get_source(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394trigger_source_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_get_supported_sources(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394trigger_sources_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_has_polarity(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_set_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394trigger_mode_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_set_polarity(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394trigger_polarity_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_external_trigger_set_source(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394trigger_source_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_absolute_boundaries(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[F[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_absolute_control(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_absolute_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_all(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394featureset_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_boundaries(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_mode_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_modes(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;ILcom/googlecode/javacv/cpp/dc1394$dc1394feature_modes_t;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_get_string(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
.end method

.method public static native dc1394_feature_get_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_has_absolute_control(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_is_present(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_is_readable(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_is_switchable(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_print(Lcom/googlecode/javacv/cpp/dc1394$dc1394feature_info_t;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FILE*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_print_all(Lcom/googlecode/javacv/cpp/dc1394$dc1394featureset_t;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FILE*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_set_absolute_control(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_set_absolute_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IF)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_set_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_mode_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_set_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394feature_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_temperature_get_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_temperature_set_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_whitebalance_get_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_whitebalance_set_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_whiteshading_get_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_feature_whiteshading_set_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;III)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_color_coding(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_color_codings(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_codings_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_color_filter(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_filter_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_data_depth(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_frame_interval(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_image_position(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_image_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_max_image_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_mode_info(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;ILcom/googlecode/javacv/cpp/dc1394$dc1394format7mode_t;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_modeset(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394format7modeset_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_packet_parameters(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_packet_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_packets_per_frame(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_pixel_number(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_recommended_packet_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_roi(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t*"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_total_bytes(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_unit_position(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_get_unit_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
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
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_set_color_coding(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_set_image_position(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;III)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_set_image_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;III)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_set_packet_size(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_format7_set_roi(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IIIIIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_framerate_as_float(I[F)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394framerate_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_free(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;)V
.end method

.method public static native dc1394_get_PIO_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_SIO_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_absolute_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IJ[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_adv_control_registers(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[II)I
    .parameter
    .end parameter
    .parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_color_coding_bit_size(I[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_color_coding_data_depth(I[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_color_coding_from_video_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_control_registers(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[II)I
    .parameter
    .end parameter
    .parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_format7_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IJ[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_image_size_from_video_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_registers(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[II)I
    .parameter
    .end parameter
    .parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_get_strobe_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_is_color(I[I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394color_coding_t"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_is_same_camera(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public static native dc1394_is_video_mode_scalable(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public static native dc1394_is_video_mode_still_image(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394bool_t"
        }
    .end annotation
.end method

.method public static native dc1394_iso_allocate_bandwidth(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_iso_allocate_channel(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_iso_release_all(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_iso_release_bandwidth(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_iso_release_channel(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_iso_set_persist(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_log_debug(Ljava/lang/String;)V
.end method

.method public static native dc1394_log_error(Ljava/lang/String;)V
.end method

.method public static native dc1394_log_register_handler(ILcom/googlecode/javacv/cpp/dc1394$Log_handler;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394log_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_log_set_default_handler(I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394log_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_log_warning(Ljava/lang/String;)V
.end method

.method public static native dc1394_memory_busy(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_memory_load(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_memory_save(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_new()Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;
.end method

.method public static native dc1394_pio_get(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_pio_set(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_read_cycle_timer(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I[J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint64_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_reset_bus(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_PIO_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;JI)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_SIO_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;JI)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_absolute_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IJI)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_adv_control_registers(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[II)I
    .parameter
    .end parameter
    .parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_control_registers(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[II)I
    .parameter
    .end parameter
    .parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_format7_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IJI)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_registers(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;J[II)I
    .parameter
    .end parameter
    .parameter
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_set_strobe_register(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;JI)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_software_trigger_get_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_software_trigger_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_bandwidth_usage(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_data_depth(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_framerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394framerate_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_iso_channel(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "uint32_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_iso_speed(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394speed_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_multi_shot(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_one_shot(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394bool_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_operation_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394operation_mode_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_supported_framerates(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;ILcom/googlecode/javacv/cpp/dc1394$dc1394framerates_t;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_supported_modes(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_modes_t;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_get_transmission(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_framerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394framerate_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_iso_channel(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_iso_speed(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394speed_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394video_mode_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_multi_shot(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_one_shot(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_operation_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394operation_mode_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native dc1394_video_set_transmission(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "dc1394switch_t"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "dc1394error_t"
        }
    .end annotation
.end method

.method public static native poll(Lcom/googlecode/javacv/cpp/dc1394$pollfd;JI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "nfds_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
