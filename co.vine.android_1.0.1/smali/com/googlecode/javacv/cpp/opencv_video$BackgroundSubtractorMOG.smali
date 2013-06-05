.class public Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG;
.super Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;
.source "opencv_video.java"


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Namespace;
    value = "cv"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/NoOffset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackgroundSubtractorMOG"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 264
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG;->allocate()V

    return-void
.end method

.method public constructor <init>(IIDD)V
    .locals 0
    .parameter "history"
    .parameter "nmixtures"
    .parameter "backgroundRatio"
    .parameter "noiseSigma"

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>()V

    .line 267
    invoke-direct/range {p0 .. p6}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG;->allocate(IIDD)V

    .line 268
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IIDD)V
.end method


# virtual methods
.method public native initialize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;I)V
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByVal;
        .end annotation
    .end parameter
    .parameter
    .end parameter
.end method
