.class public Lcom/googlecode/javacv/cpp/PGRFlyCapture;
.super Ljava/lang/Object;
.source "PGRFlyCapture.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<windows.h>",
                "<PGRFlyCapture.h>",
                "<PGRFlyCapturePlus.h>",
                "<PGRFlyCaptureMessaging.h>"
            }
            includepath = {
                "C:/Program Files/Point Grey Research/PGR FlyCapture/include/",
                "C:/Program Files/Point Grey Research/FlyCapture2/include/FC1/"
            }
            link = {
                "PGRFlyCapture"
            }
            preload = {
                "FlyCapture2"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/Program Files/Point Grey Research/PGR FlyCapture/lib/",
                "C:/Program Files/Point Grey Research/FlyCapture2/lib/FC1/"
            }
            preloadpath = {
                "C:/Program Files/Point Grey Research/PGR FlyCapture/bin/",
                "C:/Program Files/Point Grey Research/FlyCapture2/bin/",
                "C:/Program Files/Point Grey Research/FlyCapture2/bin/FC1/"
            }
            value = {
                "windows-x86"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/Program Files/Point Grey Research/PGR FlyCapture/lib64/",
                "C:/Program Files/Point Grey Research/FlyCapture2/lib64/FC1/"
            }
            preloadpath = {
                "C:/Program Files/Point Grey Research/PGR FlyCapture/bin64/",
                "C:/Program Files/Point Grey Research/FlyCapture2/bin64/",
                "C:/Program Files/Point Grey Research/FlyCapture2/bin64/FC1/"
            }
            value = {
                "windows-x86_64"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureSystemTime;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCapturePacketInfo;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImageEvent;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureCallback;,
        Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;
    }
.end annotation


# static fields
.field public static final FLYCAPTURE_411YUV8:I = 0x2

.field public static final FLYCAPTURE_422YUV8:I = 0x4

.field public static final FLYCAPTURE_444YUV8:I = 0x8

.field public static final FLYCAPTURE_AIM:I = 0x2

.field public static final FLYCAPTURE_ALREADY_INITIALIZED:I = 0x5

.field public static final FLYCAPTURE_ALREADY_STARTED:I = 0x6

.field public static final FLYCAPTURE_ANY:I = 0x8

.field public static final FLYCAPTURE_AUTO_EXPOSURE:I = 0x1

.field public static final FLYCAPTURE_BGR:I = 0x10000001

.field public static final FLYCAPTURE_BGRU:I = 0x10000002

.field public static final FLYCAPTURE_BLACK_AND_WHITE:I = 0x0

.field public static final FLYCAPTURE_BRIGHTNESS:I = 0x0

.field public static final FLYCAPTURE_BUFFER_SIZE_TOO_SMALL:I = 0x1a

.field public static final FLYCAPTURE_BUMBLEBEE:I = 0xa

.field public static final FLYCAPTURE_BUMBLEBEE2:I = 0xb

.field public static final FLYCAPTURE_BUMBLEBEEXB3:I = 0xc

.field public static final FLYCAPTURE_BUS_ERROR:I = 0x3

.field public static final FLYCAPTURE_BUS_MESSAGE:I = 0x3b9ac9ff

.field public static final FLYCAPTURE_BUS_RESET:I = 0x0

.field public static final FLYCAPTURE_CALLBACK_ALREADY_REGISTERED:I = 0x8

.field public static final FLYCAPTURE_CALLBACK_NOT_REGISTERED:I = 0x7

.field public static final FLYCAPTURE_CAMERACONTROL_PROBLEM:I = 0x9

.field public static final FLYCAPTURE_CHAMELEON:I = 0xe

.field public static final FLYCAPTURE_COLOR:I = 0x1

.field public static final FLYCAPTURE_COULD_NOT_OPEN_DEVICE_HANDLE:I = 0xb

.field public static final FLYCAPTURE_COULD_NOT_OPEN_FILE:I = 0xa

.field public static final FLYCAPTURE_DEPRECATED:I = 0x19

.field public static final FLYCAPTURE_DEVICE_ARRIVAL:I = 0x1

.field public static final FLYCAPTURE_DEVICE_BUSY:I = 0x18

.field public static final FLYCAPTURE_DEVICE_REMOVAL:I = 0x2

.field public static final FLYCAPTURE_DISABLE:I = 0x0

.field public static final FLYCAPTURE_DRAGONFLY:I = 0x1

.field public static final FLYCAPTURE_DRAGONFLY2:I = 0x9

.field public static final FLYCAPTURE_DRAGONFLY_EXPRESS:I = 0x6

.field public static final FLYCAPTURE_EDGE_SENSING:I = 0x1

.field public static final FLYCAPTURE_ERROR_UNKNOWN:I = 0x13

.field public static final FLYCAPTURE_FAILED:I = 0x1

.field public static final FLYCAPTURE_FILEFORMAT_BMP:I = 0x2

.field public static final FLYCAPTURE_FILEFORMAT_JPG:I = 0x3

.field public static final FLYCAPTURE_FILEFORMAT_PGM:I = 0x0

.field public static final FLYCAPTURE_FILEFORMAT_PNG:I = 0x4

.field public static final FLYCAPTURE_FILEFORMAT_PPM:I = 0x1

.field public static final FLYCAPTURE_FILEFORMAT_RAW:I = 0x5

.field public static final FLYCAPTURE_FIREFLY:I = 0x0

.field public static final FLYCAPTURE_FIREFLY_MV:I = 0x8

.field public static final FLYCAPTURE_FLEA:I = 0x5

.field public static final FLYCAPTURE_FLEA2:I = 0x7

.field public static final FLYCAPTURE_FOCUS:I = 0x8

.field public static final FLYCAPTURE_FRAMERATE_120:I = 0x7

.field public static final FLYCAPTURE_FRAMERATE_15:I = 0x3

.field public static final FLYCAPTURE_FRAMERATE_1_875:I = 0x0

.field public static final FLYCAPTURE_FRAMERATE_240:I = 0x8

.field public static final FLYCAPTURE_FRAMERATE_30:I = 0x4

.field public static final FLYCAPTURE_FRAMERATE_3_75:I = 0x1

.field public static final FLYCAPTURE_FRAMERATE_60:I = 0x6

.field public static final FLYCAPTURE_FRAMERATE_7_5:I = 0x2

.field public static final FLYCAPTURE_FRAMERATE_ANY:I = 0xb

.field public static final FLYCAPTURE_FRAMERATE_CUSTOM:I = 0xa

.field public static final FLYCAPTURE_FRAMERATE_UNUSED:I = 0x5

.field public static final FLYCAPTURE_FRAME_RATE:I = 0xf

.field public static final FLYCAPTURE_GAIN:I = 0xd

.field public static final FLYCAPTURE_GAMMA:I = 0x6

.field public static final FLYCAPTURE_GRABBED_IMAGE:I = 0x4

.field public static final FLYCAPTURE_GRASSHOPPER:I = 0xd

.field public static final FLYCAPTURE_HQLINEAR:I = 0x5

.field public static final FLYCAPTURE_HUE:I = 0x4

.field public static final FLYCAPTURE_IMAGE_FILTER_ALL:I = -0x1

.field public static final FLYCAPTURE_IMAGE_FILTER_NONE:I = 0x0

.field public static final FLYCAPTURE_IMAGE_FILTER_SCORPION_CROSSTALK:I = 0x1

.field public static final FLYCAPTURE_INFINITE:I = -0x1

.field public static final FLYCAPTURE_INVALID_ARGUMENT:I = 0x2

.field public static final FLYCAPTURE_INVALID_CONTEXT:I = 0x3

.field public static final FLYCAPTURE_INVALID_CUSTOM_SIZE:I = 0x14

.field public static final FLYCAPTURE_INVALID_MODE:I = 0x12

.field public static final FLYCAPTURE_IRIS:I = 0x7

.field public static final FLYCAPTURE_MAX_BANDWIDTH_EXCEEDED:I = 0x10

.field public static final FLYCAPTURE_MEMORY_ALLOC_ERROR:I = 0xc

.field public static final FLYCAPTURE_MESSAGE_BUS_RESET:I = 0x2

.field public static final FLYCAPTURE_MESSAGE_DEVICE_ARRIVAL:I = 0x3

.field public static final FLYCAPTURE_MESSAGE_DEVICE_REMOVAL:I = 0x4

.field public static final FLYCAPTURE_MONO16:I = 0x20

.field public static final FLYCAPTURE_MONO8:I = 0x1

.field public static final FLYCAPTURE_NEAREST_NEIGHBOR:I = 0x2

.field public static final FLYCAPTURE_NEAREST_NEIGHBOR_FAST:I = 0x3

.field public static final FLYCAPTURE_NON_PGR_CAMERA:I = 0x11

.field public static final FLYCAPTURE_NOT_IMPLEMENTED:I = 0x4

.field public static final FLYCAPTURE_NOT_INITIALIZED:I = 0xe

.field public static final FLYCAPTURE_NOT_STARTED:I = 0xf

.field public static final FLYCAPTURE_NO_IMAGE:I = 0xd

.field public static final FLYCAPTURE_NUM_FRAMERATES:I = 0x9

.field public static final FLYCAPTURE_NUM_VIDEOMODES:I = 0x17

.field public static final FLYCAPTURE_OK:I = 0x0

.field public static final FLYCAPTURE_PAN:I = 0xa

.field public static final FLYCAPTURE_RAW16:I = 0x400

.field public static final FLYCAPTURE_RAW8:I = 0x200

.field public static final FLYCAPTURE_REGISTER_READ:I = 0x5

.field public static final FLYCAPTURE_REGISTER_READ_BLOCK:I = 0x6

.field public static final FLYCAPTURE_REGISTER_WRITE:I = 0x7

.field public static final FLYCAPTURE_REGISTER_WRITE_BLOCK:I = 0x8

.field public static final FLYCAPTURE_RGB16:I = 0x40

.field public static final FLYCAPTURE_RGB8:I = 0x10

.field public static final FLYCAPTURE_RIGOROUS:I = 0x4

.field public static final FLYCAPTURE_S100:I = 0x0

.field public static final FLYCAPTURE_S1600:I = 0x5

.field public static final FLYCAPTURE_S200:I = 0x1

.field public static final FLYCAPTURE_S3200:I = 0x6

.field public static final FLYCAPTURE_S400:I = 0x2

.field public static final FLYCAPTURE_S480:I = 0x3

.field public static final FLYCAPTURE_S800:I = 0x4

.field public static final FLYCAPTURE_SATURATION:I = 0x5

.field public static final FLYCAPTURE_SCORPION:I = 0x3

.field public static final FLYCAPTURE_SHARPNESS:I = 0x2

.field public static final FLYCAPTURE_SHUTTER:I = 0xc

.field public static final FLYCAPTURE_SOFTWARE_WHITEBALANCE:I = 0x10

.field public static final FLYCAPTURE_SPEED_UNKNOWN:I = -0x1

.field public static final FLYCAPTURE_STIPPLEDFORMAT_BGGR:I = 0x0

.field public static final FLYCAPTURE_STIPPLEDFORMAT_DEFAULT:I = 0x4

.field public static final FLYCAPTURE_STIPPLEDFORMAT_GBRG:I = 0x1

.field public static final FLYCAPTURE_STIPPLEDFORMAT_GRBG:I = 0x2

.field public static final FLYCAPTURE_STIPPLEDFORMAT_RGGB:I = 0x3

.field public static final FLYCAPTURE_S_FASTEST:I = 0x7

.field public static final FLYCAPTURE_S_MONO16:I = 0x80

.field public static final FLYCAPTURE_S_RGB16:I = 0x100

.field public static final FLYCAPTURE_TEMPERATURE:I = 0x11

.field public static final FLYCAPTURE_TILT:I = 0xb

.field public static final FLYCAPTURE_TIMEOUT:I = 0x15

.field public static final FLYCAPTURE_TOO_MANY_LOCKED_BUFFERS:I = 0x16

.field public static final FLYCAPTURE_TRIGGER_DELAY:I = 0xe

.field public static final FLYCAPTURE_TYPHOON:I = 0x4

.field public static final FLYCAPTURE_UNKNOWN:I = -0x1

.field public static final FLYCAPTURE_VERSION_MISMATCH:I = 0x17

.field public static final FLYCAPTURE_VIDEOMODE_1024x768RGB:I = 0x15

.field public static final FLYCAPTURE_VIDEOMODE_1024x768Y16:I = 0x9

.field public static final FLYCAPTURE_VIDEOMODE_1024x768Y8:I = 0x8

.field public static final FLYCAPTURE_VIDEOMODE_1024x768YUV422:I = 0x14

.field public static final FLYCAPTURE_VIDEOMODE_1280x960RGB:I = 0x17

.field public static final FLYCAPTURE_VIDEOMODE_1280x960Y16:I = 0x18

.field public static final FLYCAPTURE_VIDEOMODE_1280x960Y8:I = 0xa

.field public static final FLYCAPTURE_VIDEOMODE_1280x960YUV422:I = 0x16

.field public static final FLYCAPTURE_VIDEOMODE_1600x1200RGB:I = 0x33

.field public static final FLYCAPTURE_VIDEOMODE_1600x1200Y16:I = 0x34

.field public static final FLYCAPTURE_VIDEOMODE_1600x1200Y8:I = 0xb

.field public static final FLYCAPTURE_VIDEOMODE_1600x1200YUV422:I = 0x32

.field public static final FLYCAPTURE_VIDEOMODE_160x120YUV444:I = 0x0

.field public static final FLYCAPTURE_VIDEOMODE_320x240YUV422:I = 0x1

.field public static final FLYCAPTURE_VIDEOMODE_640x480RGB:I = 0x4

.field public static final FLYCAPTURE_VIDEOMODE_640x480Y16:I = 0x6

.field public static final FLYCAPTURE_VIDEOMODE_640x480Y8:I = 0x5

.field public static final FLYCAPTURE_VIDEOMODE_640x480YUV411:I = 0x2

.field public static final FLYCAPTURE_VIDEOMODE_640x480YUV422:I = 0x3

.field public static final FLYCAPTURE_VIDEOMODE_800x600RGB:I = 0x12

.field public static final FLYCAPTURE_VIDEOMODE_800x600Y16:I = 0x13

.field public static final FLYCAPTURE_VIDEOMODE_800x600Y8:I = 0x7

.field public static final FLYCAPTURE_VIDEOMODE_800x600YUV422:I = 0x11

.field public static final FLYCAPTURE_VIDEOMODE_ANY:I = 0x10

.field public static final FLYCAPTURE_VIDEOMODE_CUSTOM:I = 0xf

.field public static final FLYCAPTURE_WHITE_BALANCE:I = 0x3

.field public static final FLYCAPTURE_ZOOM:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3429
    return-void
.end method

.method public static native flycaptureBusCameraCount([I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureBusEnumerateCamerasEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureBusErrorToString(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
.end method

.method public static native flycaptureCheckVideoMode(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II[Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureVideoMode"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureFrameRate"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureCloseMessaging(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureConvertImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureCreateContext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureContext*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureDestroyContext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureEnableLookUpTable(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureErrorToString(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureError"
            }
        .end annotation
    .end parameter
.end method

.method public static native flycaptureGetBusSpeed(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureBusSpeed*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureBusSpeed*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraAbsProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraAbsPropertyEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[Z[Z[F)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraAbsPropertyRange(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[F[FLcom/googlecode/javacpp/BytePointer;Lcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "const char**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraInfo(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I[I[Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraPropertyEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[Z[Z[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraPropertyRange(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[I[I[I[Z[Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraPropertyRangeEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[Z[Z[Z[Z[Z[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCameraTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetColorProcessingMethod(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureColorMethod*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetColorTileFormat(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureStippledFormat*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCurrentCustomImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I[I[I[I[I[I[F[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCapturePixelFormat*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCurrentVideoMode(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureVideoMode*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureFrameRate*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetCustomImagePacketInfo(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IIIILcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCapturePacketInfo;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCapturePixelFormat"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetImageFilters(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetImageTimestamping(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetLibraryVersion()I
.end method

.method public static native flycaptureGetLookUpTableChannel(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetMemoryChannel(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetMessageLoggingStatus(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetPacketInfo(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IILcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCapturePacketInfo;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureVideoMode"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureFrameRate"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetStrobe(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[Z[I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGetTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Z[I[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
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
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureGrabImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacpp/PointerPointer;[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char**"
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
                "FlyCaptureVideoMode*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static flycaptureGrabImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Lcom/googlecode/javacpp/BytePointer;[I[I[I[I)I
    .locals 6
    .parameter "context"
    .parameter "ppImageBuffer"
    .parameter "piRows"
    .parameter "piCols"
    .parameter "piRowInc"
    .parameter "pVideoMode"

    .prologue
    .line 1422
    new-instance v1, Lcom/googlecode/javacpp/PointerPointer;

    invoke-direct {v1, p1}, Lcom/googlecode/javacpp/PointerPointer;-><init>([Lcom/googlecode/javacpp/Pointer;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGrabImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacpp/PointerPointer;[I[I[I[I)I

    move-result v0

    return v0
.end method

.method public static native flycaptureGrabImage2(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureInitialize(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureInitializeFromSerialNumber(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;J)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureCameraSerialNumber"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureInitializeMessaging(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureInitializePlus(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IILcom/googlecode/javacpp/BytePointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureInplaceRGB24toBGR24(Lcom/googlecode/javacpp/BytePointer;I)I
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureInplaceWhiteBalance(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacpp/BytePointer;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureLockLatest(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureLockNext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImagePlus;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureModifyCallback(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureCallback;Lcom/googlecode/javacpp/Pointer;Z)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureParseImageTimestamp(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacpp/BytePointer;[I[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned char*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureQueryCustomImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[I[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureQueryCustomImageEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[I[I[I[I[I[I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureQueryLookUpTable(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Z[I[Z[I[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureQueryStrobe(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[Z[Z[Z[Z[I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureQueryTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Z[Z[Z[Z[Z[I[Z[I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureReadRegisterBlock(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;SI[II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureReceiveMessage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;ILcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureMessage;Lcom/googlecode/javacpp/Pointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "OVERLAPPED*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureRegisterToString(I)Ljava/lang/String;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
.end method

.method public static native flycaptureRestoreFromMemoryChannel(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSaveImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;Ljava/lang/String;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureImageFileFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSaveToMemoryChannel(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetBusSpeed(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureBusSpeed"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureBusSpeed"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraAbsProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IF)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraAbsPropertyBroadcast(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IF)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraAbsPropertyBroadcastEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IZZZF)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraAbsPropertyEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IZZZF)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IIIZ)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraPropertyBroadcast(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IIIZ)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "long"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraPropertyBroadcastEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IZZZII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraPropertyEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IZZZII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureProperty"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraRegisterBroadcast(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;III)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetCameraTriggerBroadcast(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;BBB)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetColorProcessingMethod(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureColorMethod"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetColorTileFormat(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureStippledFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetGrabTimeoutEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetImageFilters(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetImageTimestamping(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetJPEGCompressionQuality(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetLookUpTableChannel(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned int*"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetMessageLoggingStatus(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Z)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetStrobe(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IZZII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetStrobeBroadcast(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IZZII)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;ZIIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSetTriggerBroadcast(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;ZIIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
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
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStart(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureVideoMode"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureFrameRate"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStartCustomImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IIIIIFI)I
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
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCapturePixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStartCustomImagePacket(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IIIIIII)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCapturePixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStartLockNext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureVideoMode"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCaptureFrameRate"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStartLockNextCustomImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IIIIIFI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCapturePixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStartLockNextCustomImagePacket(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;JJJJJJI)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "FlyCapturePixelFormat"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureStop(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureSyncForLockNext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureUnlock(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureUnlockAll(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureWaitForImageEvent(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImageEvent;I)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method

.method public static native flycaptureWriteRegisterBlock(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;SI[II)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long*"
            }
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "unsigned long"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "FlyCaptureError"
        }
    .end annotation
.end method
