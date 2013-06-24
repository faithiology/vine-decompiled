.class public Lcom/googlecode/javacv/cpp/videoInputLib;
.super Ljava/lang/Object;
.source "videoInputLib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    define = {
        "VI_COM_MULTI_THREADED"
    }
    include = {
        "<videoInput.cpp>"
    }
    includepath = {
        "../videoInput0.1995/videoInputSrcAndDemos/libs/videoInput/",
        "../videoInput0.1995/videoInputSrcAndDemos/libs/DShow/Include/"
    }
    link = {
        "ole32",
        "oleaut32",
        "amstrmid",
        "strmiids",
        "uuid"
    }
    value = {
        "windows"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;,
        Lcom/googlecode/javacv/cpp/videoInputLib$videoDevice;,
        Lcom/googlecode/javacv/cpp/videoInputLib$SampleGrabberCallback;,
        Lcom/googlecode/javacv/cpp/videoInputLib$_AMMediaType;,
        Lcom/googlecode/javacv/cpp/videoInputLib$IAMStreamConfig;,
        Lcom/googlecode/javacv/cpp/videoInputLib$IMediaEventEx;,
        Lcom/googlecode/javacv/cpp/videoInputLib$ISampleGrabber;,
        Lcom/googlecode/javacv/cpp/videoInputLib$IMediaControl;,
        Lcom/googlecode/javacv/cpp/videoInputLib$IAMCrossbar;,
        Lcom/googlecode/javacv/cpp/videoInputLib$IBaseFilter;,
        Lcom/googlecode/javacv/cpp/videoInputLib$IGraphBuilder;,
        Lcom/googlecode/javacv/cpp/videoInputLib$ICaptureGraphBuilder2;,
        Lcom/googlecode/javacv/cpp/videoInputLib$GUID;
    }
.end annotation


# static fields
.field public static final VI_1394:I = 0x4

.field public static final VI_COMPOSITE:I = 0x0

.field public static final VI_MAX_CAMERAS:I = 0x14

.field public static final VI_NTSC_433:I = 0x11

.field public static final VI_NTSC_M:I = 0x0

.field public static final VI_NTSC_M_J:I = 0x10

.field public static final VI_NUM_FORMATS:I = 0x12

.field public static final VI_NUM_TYPES:I = 0x12

.field public static final VI_PAL_B:I = 0x1

.field public static final VI_PAL_D:I = 0x2

.field public static final VI_PAL_G:I = 0x3

.field public static final VI_PAL_H:I = 0x4

.field public static final VI_PAL_I:I = 0x5

.field public static final VI_PAL_M:I = 0x6

.field public static final VI_PAL_N:I = 0x7

.field public static final VI_PAL_NC:I = 0x8

.field public static final VI_SECAM_B:I = 0x9

.field public static final VI_SECAM_D:I = 0xa

.field public static final VI_SECAM_G:I = 0xb

.field public static final VI_SECAM_H:I = 0xc

.field public static final VI_SECAM_K:I = 0xd

.field public static final VI_SECAM_K1:I = 0xe

.field public static final VI_SECAM_L:I = 0xf

.field public static final VI_S_VIDEO:I = 0x1

.field public static final VI_TUNER:I = 0x2

.field public static final VI_USB:I = 0x3

.field public static final VI_VERSION:D = 0.1995


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    return-void
.end method

.method public static native comInitCount()I
.end method

.method public static native comInitCount(I)V
.end method

.method public static native verbose(Z)V
.end method

.method public static native verbose()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method
