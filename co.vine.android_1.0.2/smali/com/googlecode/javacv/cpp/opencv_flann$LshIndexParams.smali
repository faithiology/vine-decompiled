.class public Lcom/googlecode/javacv/cpp/opencv_flann$LshIndexParams;
.super Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;
.source "opencv_flann.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv::flann"
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_flann;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LshIndexParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 212
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "table_number"
    .parameter "key_size"
    .parameter "multi_probe_level"

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_flann$LshIndexParams;->allocate(III)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate(III)V
.end method
