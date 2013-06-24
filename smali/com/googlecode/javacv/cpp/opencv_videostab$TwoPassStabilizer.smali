.class public Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;
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
    name = "TwoPassStabilizer"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 638
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 639
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 640
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public getIFrameSource()Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;
    .locals 1

    .prologue
    .line 655
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab;->castIFrameSource(Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;

    move-result-object v0

    return-object v0
.end method

.method public getStabilizerBase()Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;
    .locals 1

    .prologue
    .line 654
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab;->castStabilizerBase(Lcom/googlecode/javacv/cpp/opencv_videostab$TwoPassStabilizer;)Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;

    move-result-object v0

    return-object v0
.end method

.method public native motionStabilizer()Lcom/googlecode/javacv/cpp/opencv_videostab$IMotionStabilizer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native motions()Lcom/googlecode/javacv/cpp/opencv_core$MatVector;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native mustEstimateTrimaRatio()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native nextFrame()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native reset()V
.end method

.method public native setEstimateTrimRatio(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setMotionStabilizer(Lcom/googlecode/javacv/cpp/opencv_videostab$IMotionStabilizer;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method
