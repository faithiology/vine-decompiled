.class public Lcom/googlecode/javacv/cpp/opencv_videostab$StabilizerBase;
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
    name = "StabilizerBase"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 549
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 551
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native borderMode()I
.end method

.method public native deblurrer()Lcom/googlecode/javacv/cpp/opencv_videostab$DeblurerBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native doCorrectionForInclusion()Z
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "bool"
        }
    .end annotation
.end method

.method public native frameSource()Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native inpainter()Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native log()Lcom/googlecode/javacv/cpp/opencv_videostab$ILog;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native motionEstimator()Lcom/googlecode/javacv/cpp/opencv_videostab$IGlobalMotionEstimator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native radius()I
.end method

.method public native setBorderMode(I)V
.end method

.method public native setCorrectionForInclusion(Z)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "bool"
            }
        .end annotation
    .end parameter
.end method

.method public native setDeblurer(Lcom/googlecode/javacv/cpp/opencv_videostab$DeblurerBase;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setFrameSource(Lcom/googlecode/javacv/cpp/opencv_videostab$IFrameSource;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setInpainter(Lcom/googlecode/javacv/cpp/opencv_videostab$InpainterBase;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setLog(Lcom/googlecode/javacv/cpp/opencv_videostab$ILog;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setMotionEstimator(Lcom/googlecode/javacv/cpp/opencv_videostab$IGlobalMotionEstimator;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setRadius(I)V
.end method

.method public native setTrimRatio(F)V
.end method

.method public native trimRatio()F
.end method
