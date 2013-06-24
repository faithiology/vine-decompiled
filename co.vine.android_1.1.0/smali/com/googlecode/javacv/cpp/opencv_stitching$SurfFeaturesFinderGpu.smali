.class public Lcom/googlecode/javacv/cpp/opencv_stitching$SurfFeaturesFinderGpu;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::detail"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    not = {
        "android"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SurfFeaturesFinderGpu"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 660
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$SurfFeaturesFinderGpu;->allocate()V

    return-void
.end method

.method public constructor <init>(DIIII)V
    .locals 0
    .parameter "hess_thresh"
    .parameter "num_octaves"
    .parameter "num_layers"
    .parameter "num_octaves_descr"
    .parameter "num_layers_descr"

    .prologue
    .line 663
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;-><init>()V

    .line 664
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_stitching$SurfFeaturesFinderGpu;->allocate(DIIII)V

    .line 665
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 666
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(DIIII)V
.end method
