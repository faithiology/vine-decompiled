.class public Lcom/googlecode/javacv/cpp/opencv_stitching$OrbFeaturesFinder;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;
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
    name = "OrbFeaturesFinder"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 647
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$OrbFeaturesFinder;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 653
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IFI)V
    .locals 0
    .parameter "_grid_size"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter "nfeatures"
    .end parameter
    .parameter "scaleFactor"
    .end parameter
    .parameter "nlevels"
    .end parameter

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;-><init>()V

    .line 651
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_stitching$OrbFeaturesFinder;->allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IFI)V

    .line 652
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;IFI)V
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
.end method
