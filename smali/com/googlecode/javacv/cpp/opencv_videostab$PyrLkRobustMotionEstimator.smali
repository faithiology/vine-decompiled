.class public Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkRobustMotionEstimator;
.super Lcom/googlecode/javacv/cpp/opencv_videostab$IGlobalMotionEstimator;
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
    name = "PyrLkRobustMotionEstimator"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 221
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$IGlobalMotionEstimator;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_videostab$PyrLkRobustMotionEstimator;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_videostab$IGlobalMotionEstimator;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method


# virtual methods
.method public native detector()Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native maxRmse()F
.end method

.method public native minInlierRatio()F
.end method

.method public native motionModel()I
    .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
        value = {
            "cv::videostab::MotionModel"
        }
    .end annotation
.end method

.method public native optFlowEstimator()Lcom/googlecode/javacv/cpp/opencv_videostab$ISparseOptFlowEstimator;
    .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
    .end annotation

    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
    .end annotation
.end method

.method public native ransacParams()Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method

.method public native setDetector(Lcom/googlecode/javacv/cpp/opencv_features2d$FeatureDetector;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setMaxRmse(F)V
.end method

.method public native setMinInlierRatio(F)V
.end method

.method public native setMotionModel(I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cv::videostab::MotionModel"
            }
        .end annotation
    .end parameter
.end method

.method public native setOptFlowEstimator(Lcom/googlecode/javacv/cpp/opencv_videostab$ISparseOptFlowEstimator;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$Ptr;
        .end annotation
    .end parameter
.end method

.method public native setRansacParams(Lcom/googlecode/javacv/cpp/opencv_videostab$RansacParams;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method
