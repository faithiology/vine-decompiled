.class public Lcom/googlecode/javacv/cpp/ARToolKitPlus;
.super Ljava/lang/Object;
.source "ARToolKitPlus.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "ARToolKitPlus"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    define = {
        "LIBRPP_STATIC"
    }
    include = {
        "<ARToolKitPlus/template.h>",
        "<MemoryManager.cpp>",
        "<librpp/rpp.cpp>",
        "<librpp/rpp_quintic.cpp>",
        "<librpp/rpp_vecmat.cpp>",
        "<librpp/rpp_svd.cpp>",
        "<librpp/librpp.cpp>",
        "<extra/Profiler.cpp>"
    }
    includepath = {
        "/usr/include/malloc/",
        "../ARToolKitPlus_2.1.1t/include/",
        "../ARToolKitPlus_2.1.1t/src/"
    }
    options = {
        "fastfpu"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$MultiTracker;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$SingleTracker;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$FunctionLogger;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$ArtLogFunction;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$Tracker;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$Profiler;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$Camera;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$Logger;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiMarkerInfoT;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMultiEachMarkerInfoT;,
        Lcom/googlecode/javacv/cpp/ARToolKitPlus$ARMarkerInfo;
    }
.end annotation


# static fields
.field public static final IMAGE_FULL_RES:I = 0x1

.field public static final IMAGE_HALF_RES:I = 0x0

.field public static final MARKER_ID_BCH:I = 0x2

.field public static final MARKER_ID_SIMPLE:I = 0x1

.field public static final MARKER_TEMPLATE:I = 0x0

.field public static final PIXEL_FORMAT_ABGR:I = 0x1

.field public static final PIXEL_FORMAT_BGR:I = 0x3

.field public static final PIXEL_FORMAT_BGRA:I = 0x2

.field public static final PIXEL_FORMAT_LUM:I = 0x7

.field public static final PIXEL_FORMAT_RGB:I = 0x5

.field public static final PIXEL_FORMAT_RGB565:I = 0x6

.field public static final PIXEL_FORMAT_RGBA:I = 0x4

.field public static final POSE_ESTIMATOR_ORIGINAL:I = 0x0

.field public static final POSE_ESTIMATOR_ORIGINAL_CONT:I = 0x1

.field public static final POSE_ESTIMATOR_RPP:I = 0x2

.field public static final UNDIST_LUT:I = 0x2

.field public static final UNDIST_NONE:I = 0x0

.field public static final UNDIST_STD:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 55
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    return-void
.end method

.method public static native createImagePatternBCH(ILjava/nio/ByteBuffer;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
.end method

.method public static native createImagePatternBCH(I[B)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
.end method

.method public static native createImagePatternSimple(ILjava/nio/ByteBuffer;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
.end method

.method public static native createImagePatternSimple(I[B)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "ARToolKitPlus::ARUint8*"
            }
        .end annotation
    .end parameter
.end method
