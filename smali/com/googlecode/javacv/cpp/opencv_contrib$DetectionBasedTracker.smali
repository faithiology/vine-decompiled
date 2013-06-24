.class public Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_contrib.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    value = {
        "linux",
        "macosx",
        "android"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_contrib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectionBasedTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1013
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;)V
    .locals 0
    .parameter "cascadeFilename"
    .end parameter
    .parameter "params"
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 1015
    invoke-direct {p0, p1, p2}, Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker;->allocate(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;)V

    .line 1016
    return-void
.end method

.method private native allocate(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method


# virtual methods
.method public native getObjects(Lcom/googlecode/javacv/cpp/opencv_contrib$RectIntPairVector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native getObjects(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
.end method

.method public native getParameters()Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation
.end method

.method public native process(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
.end method

.method public native resetTracking()V
.end method

.method public native run()Z
.end method

.method public native setParameters(Lcom/googlecode/javacv/cpp/opencv_contrib$DetectionBasedTracker$Parameters;)Z
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native stop()V
.end method
