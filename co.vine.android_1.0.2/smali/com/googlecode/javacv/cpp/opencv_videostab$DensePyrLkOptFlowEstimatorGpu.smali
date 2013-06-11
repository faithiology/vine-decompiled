.class public Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_videostab.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::videostab"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    not = {
        "android"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_videostab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DensePyrLkOptFlowEstimatorGpu"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 161
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public getIDenseOptFlowEstimator()Lcom/googlecode/javacv/cpp/opencv_videostab$IDenseOptFlowEstimator;
    .locals 1

    .prologue
    .line 170
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab;->castIDenseOptFlowEstimator(Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;)Lcom/googlecode/javacv/cpp/opencv_videostab$IDenseOptFlowEstimator;

    move-result-object v0

    return-object v0
.end method

.method public getPyrLkOptFlowEstimatorBase()Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkOptFlowEstimatorBase;
    .locals 1

    .prologue
    .line 169
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab;->castPyrLkOptFlowEstimatorBase(Lcom/googlecode/javacv/cpp/opencv_videostab$DensePyrLkOptFlowEstimatorGpu;)Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkOptFlowEstimatorBase;

    move-result-object v0

    return-object v0
.end method

.method public native run(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$InputArray;
        .end annotation
    .end parameter
.end method
