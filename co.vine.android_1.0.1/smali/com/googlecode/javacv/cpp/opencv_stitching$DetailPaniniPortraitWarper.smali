.class public Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPaniniPortraitWarper;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "cv::detail::PaniniPortraitWarper"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailPaniniPortraitWarper"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 305
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 306
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPaniniPortraitWarper;->allocate(F)V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0
    .parameter "scale"
    .parameter "A"
    .parameter "B"

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_stitching$DetailPaniniPortraitWarper;->allocate(FFF)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$RotationWarper;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(F)V
.end method

.method private native allocate(FFF)V
.end method
