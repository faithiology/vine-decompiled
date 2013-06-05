.class public Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 743
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;)V
    .locals 0
    .parameter "other"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;->allocate(Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native K()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native R()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
    .end annotation
.end method

.method public native R(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.end method

.method public native aspect()D
.end method

.method public native aspect(D)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.end method

.method public native focal()D
.end method

.method public native focal(D)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.end method

.method public native ppx()D
.end method

.method public native ppx(D)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.end method

.method public native ppy()D
.end method

.method public native ppy(D)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.end method

.method public native put(Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator="
        }
    .end annotation
.end method

.method public native t()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputMat;
    .end annotation
.end method

.method public native t(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_stitching$CameraParams;
.end method
