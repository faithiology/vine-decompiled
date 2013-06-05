.class public Lcom/googlecode/javacv/cpp/opencv_highgui;
.super Ljava/lang/Object;
.source "opencv_highgui.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "<opencv2/highgui/highgui_c.h>"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_highgui@.2.4",
                "opencv_imgproc@.2.4",
                "opencv_core@.2.4"
            }
            linkpath = {
                "/usr/local/lib/:/usr/local/lib64/:/opt/local/lib/:/opt/local/lib64/"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "C:/opencv/build/include/"
            }
            link = {
                "opencv_highgui245",
                "opencv_imgproc245",
                "opencv_core245"
            }
            preload = {
                "opencv_ffmpeg245",
                "opencv_ffmpeg245_64"
            }
            value = {
                "windows"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/opencv/build/x86/vc10/lib/"
            }
            preloadpath = {
                "C:/opencv/build/x86/vc10/bin/"
            }
            value = {
                "windows-x86"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            linkpath = {
                "C:/opencv/build/x64/vc10/lib/"
            }
            preloadpath = {
                "C:/opencv/build/x64/vc10/bin/"
            }
            value = {
                "windows-x86_64"
            }
        .end subannotation,
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            includepath = {
                "../include/"
            }
            linkpath = {
                "../lib/"
            }
            value = {
                "android"
            }
        .end subannotation
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvOpenGLCallback;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvMouseCallback;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvTrackbarCallback2;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvTrackbarCallback;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$CvButtonCallback;,
        Lcom/googlecode/javacv/cpp/opencv_highgui$Pt2Func;
    }
.end annotation


# static fields
.field public static final CV_CAP_ANDROID:I = 0x3e8

.field public static final CV_CAP_ANDROID_ANTIBANDING_50HZ:I = 0x0

.field public static final CV_CAP_ANDROID_ANTIBANDING_60HZ:I = 0x1

.field public static final CV_CAP_ANDROID_ANTIBANDING_AUTO:I = 0x2

.field public static final CV_CAP_ANDROID_ANTIBANDING_OFF:I = 0x3

.field public static final CV_CAP_ANDROID_COLOR_FRAME:I = 0x0

.field public static final CV_CAP_ANDROID_COLOR_FRAME_BGR:I = 0x0

.field public static final CV_CAP_ANDROID_COLOR_FRAME_BGRA:I = 0x3

.field public static final CV_CAP_ANDROID_COLOR_FRAME_RGB:I = 0x2

.field public static final CV_CAP_ANDROID_COLOR_FRAME_RGBA:I = 0x4

.field public static final CV_CAP_ANDROID_FLASH_MODE_AUTO:I = 0x0

.field public static final CV_CAP_ANDROID_FLASH_MODE_OFF:I = 0x1

.field public static final CV_CAP_ANDROID_FLASH_MODE_ON:I = 0x2

.field public static final CV_CAP_ANDROID_FLASH_MODE_RED_EYE:I = 0x3

.field public static final CV_CAP_ANDROID_FLASH_MODE_TORCH:I = 0x4

.field public static final CV_CAP_ANDROID_FOCUS_MODE_AUTO:I = 0x0

.field public static final CV_CAP_ANDROID_FOCUS_MODE_CONTINUOUS_VIDEO:I = 0x1

.field public static final CV_CAP_ANDROID_FOCUS_MODE_EDOF:I = 0x2

.field public static final CV_CAP_ANDROID_FOCUS_MODE_FIXED:I = 0x3

.field public static final CV_CAP_ANDROID_FOCUS_MODE_INFINITY:I = 0x4

.field public static final CV_CAP_ANDROID_FOCUS_MODE_MACRO:I = 0x5

.field public static final CV_CAP_ANDROID_GREY_FRAME:I = 0x1

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_AUTO:I = 0x0

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_CLOUDY_DAYLIGHT:I = 0x1

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_DAYLIGHT:I = 0x2

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_FLUORESCENT:I = 0x3

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_INCANDESCENT:I = 0x4

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_SHADE:I = 0x5

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_TWILIGHT:I = 0x6

.field public static final CV_CAP_ANDROID_WHITE_BALANCE_WARM_FLUORESCENT:I = 0x7

.field public static final CV_CAP_ANY:I = 0x0

.field public static final CV_CAP_AVFOUNDATION:I = 0x4b0

.field public static final CV_CAP_CMU1394:I = 0x12c

.field public static final CV_CAP_DC1394:I = 0x12c

.field public static final CV_CAP_DSHOW:I = 0x2bc

.field public static final CV_CAP_FIREWARE:I = 0x12c

.field public static final CV_CAP_FIREWIRE:I = 0x12c

.field public static final CV_CAP_GIGANETIX:I = 0x514

.field public static final CV_CAP_GSTREAMER_QUEUE_LENGTH:I = 0xc8

.field public static final CV_CAP_IEEE1394:I = 0x12c

.field public static final CV_CAP_MIL:I = 0x64

.field public static final CV_CAP_MSMF:I = 0x578

.field public static final CV_CAP_OPENNI:I = 0x384

.field public static final CV_CAP_OPENNI_ASUS:I = 0x38e

.field public static final CV_CAP_OPENNI_BGR_IMAGE:I = 0x5

.field public static final CV_CAP_OPENNI_DEPTH_GENERATOR:I = -0x80000000

.field public static final CV_CAP_OPENNI_DEPTH_GENERATOR_BASELINE:I = -0x7fffff9a

.field public static final CV_CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH:I = -0x7fffff99

.field public static final CV_CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION:I = -0x7fffff98

.field public static final CV_CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON:I = -0x7fffff98

.field public static final CV_CAP_OPENNI_DEPTH_MAP:I = 0x0

.field public static final CV_CAP_OPENNI_DISPARITY_MAP:I = 0x2

.field public static final CV_CAP_OPENNI_DISPARITY_MAP_32F:I = 0x3

.field public static final CV_CAP_OPENNI_GENERATORS_MASK:I = -0x40000000

.field public static final CV_CAP_OPENNI_GRAY_IMAGE:I = 0x6

.field public static final CV_CAP_OPENNI_IMAGE_GENERATOR:I = 0x40000000

.field public static final CV_CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE:I = 0x40000064

.field public static final CV_CAP_OPENNI_IMAGE_GENERATOR_PRESENT:I = 0x4000006d

.field public static final CV_CAP_OPENNI_POINT_CLOUD_MAP:I = 0x1

.field public static final CV_CAP_OPENNI_QVGA_30HZ:I = 0x3

.field public static final CV_CAP_OPENNI_QVGA_60HZ:I = 0x4

.field public static final CV_CAP_OPENNI_SXGA_15HZ:I = 0x1

.field public static final CV_CAP_OPENNI_SXGA_30HZ:I = 0x2

.field public static final CV_CAP_OPENNI_VALID_DEPTH_MASK:I = 0x4

.field public static final CV_CAP_OPENNI_VGA_30HZ:I = 0x0

.field public static final CV_CAP_PROP_ANDROID_ANTIBANDING:I = 0x1f44

.field public static final CV_CAP_PROP_ANDROID_FLASH_MODE:I = 0x1f41

.field public static final CV_CAP_PROP_ANDROID_FOCAL_LENGTH:I = 0x1f45

.field public static final CV_CAP_PROP_ANDROID_FOCUS_DISTANCE_FAR:I = 0x1f48

.field public static final CV_CAP_PROP_ANDROID_FOCUS_DISTANCE_NEAR:I = 0x1f46

.field public static final CV_CAP_PROP_ANDROID_FOCUS_DISTANCE_OPTIMAL:I = 0x1f47

.field public static final CV_CAP_PROP_ANDROID_FOCUS_MODE:I = 0x1f42

.field public static final CV_CAP_PROP_ANDROID_WHITE_BALANCE:I = 0x1f43

.field public static final CV_CAP_PROP_AUTOGRAB:I = 0x400

.field public static final CV_CAP_PROP_AUTO_EXPOSURE:I = 0x15

.field public static final CV_CAP_PROP_BACKLIGHT:I = 0x20

.field public static final CV_CAP_PROP_BRIGHTNESS:I = 0xa

.field public static final CV_CAP_PROP_CONTRAST:I = 0xb

.field public static final CV_CAP_PROP_CONVERT_RGB:I = 0x10

.field public static final CV_CAP_PROP_DC1394_MODE_AUTO:I = -0x2

.field public static final CV_CAP_PROP_DC1394_MODE_MANUAL:I = -0x3

.field public static final CV_CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO:I = -0x1

.field public static final CV_CAP_PROP_DC1394_OFF:I = -0x4

.field public static final CV_CAP_PROP_EXPOSURE:I = 0xf

.field public static final CV_CAP_PROP_FOCUS:I = 0x1c

.field public static final CV_CAP_PROP_FORMAT:I = 0x8

.field public static final CV_CAP_PROP_FOURCC:I = 0x6

.field public static final CV_CAP_PROP_FPS:I = 0x5

.field public static final CV_CAP_PROP_FRAME_COUNT:I = 0x7

.field public static final CV_CAP_PROP_FRAME_HEIGHT:I = 0x4

.field public static final CV_CAP_PROP_FRAME_WIDTH:I = 0x3

.field public static final CV_CAP_PROP_GAIN:I = 0xe

.field public static final CV_CAP_PROP_GAMMA:I = 0x16

.field public static final CV_CAP_PROP_GIGA_FRAME_HEIGH_MAX:I = 0x2714

.field public static final CV_CAP_PROP_GIGA_FRAME_OFFSET_X:I = 0x2711

.field public static final CV_CAP_PROP_GIGA_FRAME_OFFSET_Y:I = 0x2712

.field public static final CV_CAP_PROP_GIGA_FRAME_SENS_HEIGH:I = 0x2716

.field public static final CV_CAP_PROP_GIGA_FRAME_SENS_WIDTH:I = 0x2715

.field public static final CV_CAP_PROP_GIGA_FRAME_WIDTH_MAX:I = 0x2713

.field public static final CV_CAP_PROP_GUID:I = 0x1d

.field public static final CV_CAP_PROP_HUE:I = 0xd

.field public static final CV_CAP_PROP_IOS_DEVICE_EXPOSURE:I = 0x232a

.field public static final CV_CAP_PROP_IOS_DEVICE_FLASH:I = 0x232b

.field public static final CV_CAP_PROP_IOS_DEVICE_FOCUS:I = 0x2329

.field public static final CV_CAP_PROP_IOS_DEVICE_TORCH:I = 0x232d

.field public static final CV_CAP_PROP_IOS_DEVICE_WHITEBALANCE:I = 0x232c

.field public static final CV_CAP_PROP_IRIS:I = 0x24

.field public static final CV_CAP_PROP_ISO_SPEED:I = 0x1e

.field public static final CV_CAP_PROP_MAX_DC1394:I = 0x1f

.field public static final CV_CAP_PROP_MODE:I = 0x9

.field public static final CV_CAP_PROP_MONOCROME:I = 0x13

.field public static final CV_CAP_PROP_OPENNI_APPROX_FRAME_SYNC:I = 0x69

.field public static final CV_CAP_PROP_OPENNI_BASELINE:I = 0x66

.field public static final CV_CAP_PROP_OPENNI_CIRCLE_BUFFER:I = 0x6b

.field public static final CV_CAP_PROP_OPENNI_FOCAL_LENGTH:I = 0x67

.field public static final CV_CAP_PROP_OPENNI_FRAME_MAX_DEPTH:I = 0x65

.field public static final CV_CAP_PROP_OPENNI_GENERATOR_PRESENT:I = 0x6d

.field public static final CV_CAP_PROP_OPENNI_MAX_BUFFER_SIZE:I = 0x6a

.field public static final CV_CAP_PROP_OPENNI_MAX_TIME_DURATION:I = 0x6c

.field public static final CV_CAP_PROP_OPENNI_OUTPUT_MODE:I = 0x64

.field public static final CV_CAP_PROP_OPENNI_REGISTRATION:I = 0x68

.field public static final CV_CAP_PROP_OPENNI_REGISTRATION_ON:I = 0x68

.field public static final CV_CAP_PROP_PAN:I = 0x21

.field public static final CV_CAP_PROP_POS_AVI_RATIO:I = 0x2

.field public static final CV_CAP_PROP_POS_FRAMES:I = 0x1

.field public static final CV_CAP_PROP_POS_MSEC:I = 0x0

.field public static final CV_CAP_PROP_PREVIEW_FORMAT:I = 0x401

.field public static final CV_CAP_PROP_PVAPI_MULTICASTIP:I = 0x12c

.field public static final CV_CAP_PROP_RECTIFICATION:I = 0x12

.field public static final CV_CAP_PROP_ROLL:I = 0x23

.field public static final CV_CAP_PROP_SATURATION:I = 0xc

.field public static final CV_CAP_PROP_SETTINGS:I = 0x25

.field public static final CV_CAP_PROP_SHARPNESS:I = 0x14

.field public static final CV_CAP_PROP_SUPPORTED_PREVIEW_SIZES_STRING:I = 0x401

.field public static final CV_CAP_PROP_TEMPERATURE:I = 0x17

.field public static final CV_CAP_PROP_TILT:I = 0x22

.field public static final CV_CAP_PROP_TRIGGER:I = 0x18

.field public static final CV_CAP_PROP_TRIGGER_DELAY:I = 0x19

.field public static final CV_CAP_PROP_WHITE_BALANCE_BLUE_U:I = 0x11

.field public static final CV_CAP_PROP_WHITE_BALANCE_RED_V:I = 0x1a

.field public static final CV_CAP_PROP_XI_AEAG:I = 0x19f

.field public static final CV_CAP_PROP_XI_AEAG_LEVEL:I = 0x1a3

.field public static final CV_CAP_PROP_XI_AE_MAX_LIMIT:I = 0x1a1

.field public static final CV_CAP_PROP_XI_AG_MAX_LIMIT:I = 0x1a2

.field public static final CV_CAP_PROP_XI_AUTO_WB:I = 0x19e

.field public static final CV_CAP_PROP_XI_DATA_FORMAT:I = 0x191

.field public static final CV_CAP_PROP_XI_DOWNSAMPLING:I = 0x190

.field public static final CV_CAP_PROP_XI_EXP_PRIORITY:I = 0x1a0

.field public static final CV_CAP_PROP_XI_GPI_LEVEL:I = 0x198

.field public static final CV_CAP_PROP_XI_GPI_MODE:I = 0x197

.field public static final CV_CAP_PROP_XI_GPI_SELECTOR:I = 0x196

.field public static final CV_CAP_PROP_XI_GPO_MODE:I = 0x19a

.field public static final CV_CAP_PROP_XI_GPO_SELECTOR:I = 0x199

.field public static final CV_CAP_PROP_XI_LED_MODE:I = 0x19c

.field public static final CV_CAP_PROP_XI_LED_SELECTOR:I = 0x19b

.field public static final CV_CAP_PROP_XI_MANUAL_WB:I = 0x19d

.field public static final CV_CAP_PROP_XI_OFFSET_X:I = 0x192

.field public static final CV_CAP_PROP_XI_OFFSET_Y:I = 0x193

.field public static final CV_CAP_PROP_XI_TIMEOUT:I = 0x1a4

.field public static final CV_CAP_PROP_XI_TRG_SOFTWARE:I = 0x195

.field public static final CV_CAP_PROP_XI_TRG_SOURCE:I = 0x194

.field public static final CV_CAP_PROP_ZOOM:I = 0x1b

.field public static final CV_CAP_PVAPI:I = 0x320

.field public static final CV_CAP_QT:I = 0x1f4

.field public static final CV_CAP_STEREO:I = 0x190

.field public static final CV_CAP_TYZX:I = 0x190

.field public static final CV_CAP_UNICAP:I = 0x258

.field public static final CV_CAP_V4L:I = 0xc8

.field public static final CV_CAP_V4L2:I = 0xc8

.field public static final CV_CAP_VFW:I = 0xc8

.field public static final CV_CAP_XIAPI:I = 0x44c

.field public static CV_CHECKBOX:I = 0x0

.field public static final CV_CVTIMG_FLIP:I = 0x1

.field public static final CV_CVTIMG_SWAP_RB:I = 0x2

.field public static final CV_EVENT_FLAG_ALTKEY:I = 0x20

.field public static final CV_EVENT_FLAG_CTRLKEY:I = 0x8

.field public static final CV_EVENT_FLAG_LBUTTON:I = 0x1

.field public static final CV_EVENT_FLAG_MBUTTON:I = 0x4

.field public static final CV_EVENT_FLAG_RBUTTON:I = 0x2

.field public static final CV_EVENT_FLAG_SHIFTKEY:I = 0x10

.field public static final CV_EVENT_LBUTTONDBLCLK:I = 0x7

.field public static final CV_EVENT_LBUTTONDOWN:I = 0x1

.field public static final CV_EVENT_LBUTTONUP:I = 0x4

.field public static final CV_EVENT_MBUTTONDBLCLK:I = 0x9

.field public static final CV_EVENT_MBUTTONDOWN:I = 0x3

.field public static final CV_EVENT_MBUTTONUP:I = 0x6

.field public static final CV_EVENT_MOUSEMOVE:I = 0x0

.field public static final CV_EVENT_RBUTTONDBLCLK:I = 0x8

.field public static final CV_EVENT_RBUTTONDOWN:I = 0x2

.field public static final CV_EVENT_RBUTTONUP:I = 0x5

.field public static final CV_FONT_BLACK:I = 0x57

.field public static final CV_FONT_BOLD:I = 0x4b

.field public static final CV_FONT_DEMIBOLD:I = 0x3f

.field public static final CV_FONT_LIGHT:I = 0x19

.field public static final CV_FONT_NORMAL:I = 0x32

#the value of this static final field might be set in the static constructor
.field public static final CV_FOURCC_DEFAULT:I = 0x0

.field public static final CV_FOURCC_PROMPT:I = -0x1

.field public static final CV_GUI_EXPANDED:I = 0x0

.field public static final CV_GUI_NORMAL:I = 0x10

.field public static final CV_IMWRITE_JPEG_QUALITY:I = 0x1

.field public static final CV_IMWRITE_PNG_BILEVEL:I = 0x12

.field public static final CV_IMWRITE_PNG_COMPRESSION:I = 0x10

.field public static final CV_IMWRITE_PNG_STRATEGY:I = 0x11

.field public static final CV_IMWRITE_PNG_STRATEGY_DEFAULT:I = 0x0

.field public static final CV_IMWRITE_PNG_STRATEGY_FILTERED:I = 0x1

.field public static final CV_IMWRITE_PNG_STRATEGY_FIXED:I = 0x4

.field public static final CV_IMWRITE_PNG_STRATEGY_HUFFMAN_ONLY:I = 0x2

.field public static final CV_IMWRITE_PNG_STRATEGY_RLE:I = 0x3

.field public static final CV_IMWRITE_PXM_BINARY:I = 0x20

.field public static final CV_LOAD_IMAGE_ANYCOLOR:I = 0x4

.field public static final CV_LOAD_IMAGE_ANYDEPTH:I = 0x2

.field public static final CV_LOAD_IMAGE_COLOR:I = 0x1

.field public static final CV_LOAD_IMAGE_GRAYSCALE:I = 0x0

.field public static final CV_LOAD_IMAGE_UNCHANGED:I = -0x1

.field public static CV_PUSH_BUTTON:I = 0x0

.field public static CV_RADIOBOX:I = 0x0

.field public static final CV_STYLE_ITALIC:I = 0x1

.field public static final CV_STYLE_NORMAL:I = 0x0

.field public static final CV_STYLE_OBLIQUE:I = 0x2

.field public static final CV_TYZX_COLOR:I = 0x192

.field public static final CV_TYZX_LEFT:I = 0x190

.field public static final CV_TYZX_RIGHT:I = 0x191

.field public static final CV_TYZX_Z:I = 0x193

.field public static final CV_WINDOW_AUTOSIZE:I = 0x1

.field public static final CV_WINDOW_FREERATIO:I = 0x100

.field public static final CV_WINDOW_FULLSCREEN:I = 0x1

.field public static final CV_WINDOW_KEEPRATIO:I = 0x0

.field public static final CV_WINDOW_NORMAL:I = 0x0

.field public static final CV_WINDOW_OPENGL:I = 0x1000

.field public static final CV_WND_PROP_ASPECTRATIO:I = 0x2

.field public static final CV_WND_PROP_AUTOSIZE:I = 0x1

.field public static final CV_WND_PROP_FULLSCREEN:I = 0x0

.field public static final CV_WND_PROP_OPENGL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 85
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_imgproc;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    sput v0, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_PUSH_BUTTON:I

    const/4 v0, 0x1

    sput v0, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_CHECKBOX:I

    const/4 v0, 0x2

    sput v0, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_RADIOBOX:I

    .line 556
    const/16 v0, 0x49

    const/16 v1, 0x59

    const/16 v2, 0x55

    const/16 v3, 0x56

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_FOURCC(CCCC)I

    move-result v0

    sput v0, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_FOURCC_DEFAULT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 541
    return-void
.end method

.method public static CV_FOURCC(BBBB)I
    .locals 2
    .parameter "c1"
    .parameter "c2"
    .parameter "c3"
    .parameter "c4"

    .prologue
    .line 548
    and-int/lit16 v0, p0, 0xff

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method public static CV_FOURCC(CCCC)I
    .locals 4
    .parameter "c1"
    .parameter "c2"
    .parameter "c3"
    .parameter "c4"

    .prologue
    .line 551
    int-to-byte v0, p0

    int-to-byte v1, p1

    int-to-byte v2, p2

    int-to-byte v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_FOURCC(BBBB)I

    move-result v0

    return v0
.end method

.method public static native cvAddText(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvPoint;Lcom/googlecode/javacv/cpp/opencv_core$CvFont;)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvConvertImage(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V
.end method

.method public static native cvCreateButton(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_highgui$CvButtonCallback;Lcom/googlecode/javacpp/Pointer;II)I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvCreateCameraCapture(I)Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;
.end method

.method public static native cvCreateFileCapture(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;
.end method

.method public static native cvCreateTrackbar(Ljava/lang/String;Ljava/lang/String;[IILcom/googlecode/javacv/cpp/opencv_highgui$CvTrackbarCallback;)I
.end method

.method public static native cvCreateTrackbar2(Ljava/lang/String;Ljava/lang/String;[IILcom/googlecode/javacv/cpp/opencv_highgui$CvTrackbarCallback2;Lcom/googlecode/javacpp/Pointer;)I
.end method

.method public static native cvCreateVideoWriter(Ljava/lang/String;IDLcom/googlecode/javacv/cpp/opencv_core$CvSize;I)Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method

.method public static cvDecodeImage(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "buf"

    .prologue
    .line 285
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvDecodeImage(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static native cvDecodeImage(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static cvDecodeImageM(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "buf"

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvDecodeImageM(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static native cvDecodeImageM(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public static native cvDestroyAllWindows()V
.end method

.method public static native cvDestroyWindow(Ljava/lang/String;)V
.end method

.method public static native cvDisplayOverlay(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvDisplayStatusBar(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static cvEncodeImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "ext"
    .parameter "image"

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvEncodeImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static native cvEncodeImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public static native cvFontQt(Ljava/lang/String;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;III)Lcom/googlecode/javacv/cpp/opencv_core$CvFont;
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvGetCaptureDomain(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)I
.end method

.method public static native cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D
.end method

.method public static native cvGetTrackbarPos(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native cvGetWindowHandle(Ljava/lang/String;)Lcom/googlecode/javacpp/Pointer;
.end method

.method public static native cvGetWindowName(Lcom/googlecode/javacpp/Pointer;)Ljava/lang/String;
.end method

.method public static native cvGetWindowProperty(Ljava/lang/String;I)D
.end method

.method public static native cvGrabFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)I
.end method

.method public static native cvInitSystem(ILcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
.end method

.method public static cvLoadImage(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "filename"

    .prologue
    .line 241
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImage(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static native cvLoadImage(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static cvLoadImageBGRA(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 5
    .parameter "filename"

    .prologue
    .line 247
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImage(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 248
    .local v0, imageBGR:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-nez v0, :cond_0

    .line 249
    const/4 v1, 0x0

    .line 254
    :goto_0
    return-object v1

    .line 251
    :cond_0
    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v2

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImage(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    .line 252
    .local v1, imageBGRA:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 253
    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto :goto_0
.end method

.method public static cvLoadImageM(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1
    .parameter "filename"

    .prologue
    .line 243
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImageM(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    return-object v0
.end method

.method public static native cvLoadImageM(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public static cvLoadImageRGBA(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 5
    .parameter "filename"

    .prologue
    .line 259
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImage(Ljava/lang/String;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    .line 260
    .local v0, imageBGR:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-nez v0, :cond_0

    .line 261
    const/4 v1, 0x0

    .line 266
    :goto_0
    return-object v1

    .line 263
    :cond_0
    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvGetSize(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v2

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v3

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImage(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    .line 264
    .local v1, imageRGBA:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 265
    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    goto :goto_0
.end method

.method public static native cvLoadWindowParameters(Ljava/lang/String;)V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvMoveWindow(Ljava/lang/String;II)V
.end method

.method public static cvNamedWindow(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvNamedWindow(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static native cvNamedWindow(Ljava/lang/String;I)I
.end method

.method public static native cvQueryFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static native cvReleaseCapture(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvReleaseVideoWriter(Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByPtrPtr;
        .end annotation
    .end parameter
.end method

.method public static native cvResizeWindow(Ljava/lang/String;II)V
.end method

.method public static cvRetrieveFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .parameter "capture"

    .prologue
    .line 365
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvRetrieveFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public static native cvRetrieveFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public static cvSaveImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)I
    .locals 1
    .parameter "filename"
    .parameter "image"

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSaveImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I)I

    move-result v0

    return v0
.end method

.method public static native cvSaveImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;[I)I
.end method

.method public static native cvSaveWindowParameters(Ljava/lang/String;)V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I
.end method

.method public static native cvSetMouseCallback(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_highgui$CvMouseCallback;Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native cvSetOpenGlContext(Ljava/lang/String;)V
.end method

.method public static native cvSetOpenGlDrawCallback(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_highgui$CvOpenGLCallback;Lcom/googlecode/javacpp/Pointer;)V
.end method

.method public static native cvSetTrackbarPos(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native cvSetWindowProperty(Ljava/lang/String;ID)V
.end method

.method public static native cvShowImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
.end method

.method public static native cvStartLoop(Lcom/googlecode/javacv/cpp/opencv_highgui$Pt2Func;ILcom/googlecode/javacpp/PointerPointer;)I
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "char**"
            }
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvStartWindowThread()I
.end method

.method public static native cvStopLoop()V
    .annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
        value = {
            "linux"
        }
    .end annotation
.end method

.method public static native cvUpdateWindow(Ljava/lang/String;)V
.end method

.method public static cvWaitKey()I
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvWaitKey(I)I

    move-result v0

    return v0
.end method

.method public static native cvWaitKey(I)I
.end method

.method public static native cvWriteFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I
.end method
