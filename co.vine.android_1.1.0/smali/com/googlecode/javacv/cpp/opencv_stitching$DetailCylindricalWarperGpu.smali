.class public Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarperGpu;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarper;
.source "opencv_stitching.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Name;
    value = {
        "cv::detail::CylindricalWarperGpu"
    }
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/Platform;
    not = {
        "android"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_stitching;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailCylindricalWarperGpu"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 385
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarper;-><init>(F)V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarperGpu;->allocate(F)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$DetailCylindricalWarper;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(F)V
.end method
