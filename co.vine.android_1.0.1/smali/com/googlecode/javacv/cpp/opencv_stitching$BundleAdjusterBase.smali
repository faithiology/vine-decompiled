.class public Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;
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
    name = "BundleAdjusterBase"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 858
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 859
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$Estimator;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native confThresh()D
.end method

.method public native refinementMask()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .annotation runtime Lcom/googlecode/javacv/cpp/opencv_core$OutputMat;
    .end annotation
.end method

.method public native setConfThresh(D)V
.end method

.method public native setRefinementMask(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
.end method

.method public native setTermCriteria(Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
.end method

.method public native termCriteria()Lcom/googlecode/javacv/cpp/opencv_core$CvTermCriteria;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
    .end annotation
.end method
