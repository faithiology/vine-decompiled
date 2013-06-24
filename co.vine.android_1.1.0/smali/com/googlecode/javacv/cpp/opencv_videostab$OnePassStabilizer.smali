.class public Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;
.super Lcom/googlecode/javacpp/Pointer;
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
    name = "OnePassStabilizer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 619
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public getIFrameSource()Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;
    .locals 1

    .prologue
    .line 631
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab;->castIFrameSource(Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;

    move-result-object v0

    return-object v0
.end method

.method public getStabilizerBase()Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;
    .locals 1

    .prologue
    .line 630
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab;->castStabilizerBase(Lcom/googlecode/javacv/cpp/opencv_videostab$OnePassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;

    move-result-object v0

    return-object v0
.end method

.method public native motionFilter()Lcom/googlecode/javacv/cpp/opencv_videostab$MotionFilterBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native nextFrame()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native reset()V
.end method

.method public native setMotionFilter(Lcom/googlecode/javacv/cpp/opencv_videostab$MotionFilterBase;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
