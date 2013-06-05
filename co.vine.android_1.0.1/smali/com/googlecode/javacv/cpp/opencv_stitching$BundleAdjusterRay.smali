.class public Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterRay;
.super Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;
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
    name = "BundleAdjusterRay"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 906
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterRay;->allocate()V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 908
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_stitching$BundleAdjusterBase;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method
