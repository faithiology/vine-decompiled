.class public Lcom/googlecode/javacv/cpp/opencv_stitching$FeaturesFinder;
.super Lcom/googlecode/javacpp/Pointer;
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
    name = "FeaturesFinder"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 622
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method


# virtual methods
.method public native collectGarbage()V
.end method

.method public native find(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_stitching$ImageFeatures;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method

.method public native find(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_stitching$ImageFeatures;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Const;
        .end annotation

        .annotation runtime Lcom/googlecode/javacpp/annotation/StdVector;
            value = "CvRect,cv::Rect"
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator()"
        }
    .end annotation
.end method
