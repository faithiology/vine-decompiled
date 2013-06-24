.class public Lcom/googlecode/javacv/cpp/opencv_videostab$MotionInpainter;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;
.source "opencv_videostab.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::videostab"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_videostab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionInpainter"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 448
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$MotionInpainter;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native borderMode()I
.end method

.method public native distThresh()F
.end method

.method public native flowErrorThreshold()F
.end method

.method public native optFlowEstimator()Lcom/googlecode/javacv/cpp/opencv_videostab$IDenseOptFlowEstimator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native setBorderMode(I)V
.end method

.method public native setDistThreshold(F)V
.end method

.method public native setFlowErrorThreshold(F)V
.end method

.method public native setOptFlowEstimator(Lcom/googlecode/javacv/cpp/opencv_videostab$IDenseOptFlowEstimator;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
