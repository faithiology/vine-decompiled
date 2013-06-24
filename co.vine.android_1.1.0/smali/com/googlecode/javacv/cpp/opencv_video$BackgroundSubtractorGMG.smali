.class public Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.super Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;
.source "opencv_video.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundSubtractorGMG"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 333
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 334
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native backgroundPrior()D
.end method

.method public native backgroundPrior(D)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native decisionThreshold()D
.end method

.method public native decisionThreshold(D)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native initialize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;DD)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
.end method

.method public native learningRate()D
.end method

.method public native learningRate(D)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native maxFeatures()I
.end method

.method public native maxFeatures(I)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native numInitializationFrames()I
.end method

.method public native numInitializationFrames(I)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native quantizationLevels()I
.end method

.method public native quantizationLevels(I)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native release()V
.end method

.method public native smoothingRadius()I
.end method

.method public native smoothingRadius(I)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native updateBackgroundModel(Z)Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorGMG;
.end method

.method public native updateBackgroundModel()Z
.end method
