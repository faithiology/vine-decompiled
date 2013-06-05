.class public Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG2;
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
    name = "BackgroundSubtractorMOG2"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 293
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG2;->allocate()V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0
    .parameter "history"
    .parameter "varThreshold"
    .parameter "bShadowDetection"

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>()V

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractorMOG2;->allocate(IFZ)V

    .line 297
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 298
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_video$BackgroundSubtractor;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocate(IFZ)V
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
