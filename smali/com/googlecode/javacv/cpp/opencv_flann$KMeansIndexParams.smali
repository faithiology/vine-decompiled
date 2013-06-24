.class public Lcom/googlecode/javacv/cpp/opencv_flann$KMeansIndexParams;
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
    name = "KMeansIndexParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 199
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$KMeansIndexParams;->allocate()V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0
    .parameter "branching"
    .parameter "iterations"
    .parameter "centers_init"
    .parameter "cb_index"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>()V

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/googlecode/javacv/cpp/opencv_flann$KMeansIndexParams;->allocate(IIIF)V

    .line 204
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_flann$IndexParams;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIIF)V
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
            value = {
                "cvflann::flann_centers_init_t"
            }
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
