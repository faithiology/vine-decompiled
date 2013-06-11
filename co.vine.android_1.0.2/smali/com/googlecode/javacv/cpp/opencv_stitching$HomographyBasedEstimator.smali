.class public Lcom/googlecode/javacv/cpp/opencv_stitching$HomographyBasedEstimator;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;
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
    name = "HomographyBasedEstimator"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 847
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$HomographyBasedEstimator;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 852
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "is_focals_estimated"
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;-><init>()V

    .line 850
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$HomographyBasedEstimator;->allocate(Z)V

    .line 851
    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method
