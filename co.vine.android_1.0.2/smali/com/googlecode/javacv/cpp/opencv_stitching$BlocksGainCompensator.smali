.class public Lcom/googlecode/javacv/cpp/opencv_stitching$BlocksGainCompensator;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlocksGainCompensator"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 985
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 986
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$BlocksGainCompensator;->allocate()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "bl_width"
    .parameter "bl_height"

    .prologue
    .line 987
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_stitching$BlocksGainCompensator;->allocate(II)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$ExposureCompensator;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(II)V
.end method
