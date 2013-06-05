.class public Lcom/googlecode/javacv/cpp/opencv_flann;
.super Ljava/lang/Object;
.source "opencv_flann.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Properties;
    value = {
        .subannotation Lcom/googlecode/javacpp/annotation/Platform;
            include = {
                "opencv_adapters.h",
                "<opencv2/flann/miniflann.hpp>"
            }
            includepath = {
                "/usr/local/include:/opt/local/include/"
            }
            link = {
                "opencv_flann@.2.4",
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
                "opencv_flann245",
                "opencv_core245"
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
        Lcom/googlecode/javacv/cpp/opencv_flann$Index;,
        Lcom/googlecode/javacv/cpp/opencv_flann$SearchParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$SavedIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$LshIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$KMeansIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$HierarchicalClusteringIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$AutotunedIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$CompositeIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$LinearIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$KDTreeIndexParams;,
        Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;
    }
.end annotation


# static fields
.field public static final FLANN_CENTERS_GONZALES:I = 0x1

.field public static final FLANN_CENTERS_KMEANSPP:I = 0x2

.field public static final FLANN_CENTERS_RANDOM:I = 0x0

.field public static final FLANN_DIST_CHI_SQUARE:I = 0x7

.field public static final FLANN_DIST_CS:I = 0x7

.field public static final FLANN_DIST_EUCLIDEAN:I = 0x1

.field public static final FLANN_DIST_HAMMING:I = 0x9

.field public static final FLANN_DIST_HELLINGER:I = 0x6

.field public static final FLANN_DIST_HIST_INTERSECT:I = 0x5

.field public static final FLANN_DIST_KL:I = 0x8

.field public static final FLANN_DIST_KULLBACK_LEIBLER:I = 0x8

.field public static final FLANN_DIST_L1:I = 0x2

.field public static final FLANN_DIST_L2:I = 0x1

.field public static final FLANN_DIST_MANHATTAN:I = 0x2

.field public static final FLANN_DIST_MAX:I = 0x4

.field public static final FLANN_DIST_MINKOWSKI:I = 0x3

.field public static final FLANN_INDEX_AUTOTUNED:I = 0xff

.field public static final FLANN_INDEX_COMPOSITE:I = 0x3

.field public static final FLANN_INDEX_KDTREE:I = 0x1

.field public static final FLANN_INDEX_KMEANS:I = 0x2

.field public static final FLANN_INDEX_LINEAR:I = 0x0

.field public static final FLANN_INDEX_SAVED:I = 0xfe

.field public static final FLANN_VERSION_:Ljava/lang/String; = "1.6.10"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/googlecode/javacv/cpp/opencv_core;

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    return-void
.end method
