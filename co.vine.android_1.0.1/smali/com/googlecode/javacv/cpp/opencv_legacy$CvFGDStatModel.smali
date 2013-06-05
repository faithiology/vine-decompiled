.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
.super Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvFGDStatModel"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2674
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2675
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2676
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2677
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native Fbd()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native Fbd(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
.end method

.method public native Ftd()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native Ftd(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
.end method

.method public native params(Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
.end method

.method public native params()Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModelParams;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native pixel_stat()Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGPixelStat;
.end method

.method public native pixel_stat(Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGPixelStat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2673
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2673
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
    .locals 1
    .parameter "position"

    .prologue
    .line 2682
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvBGStatModel;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;

    return-object v0
.end method

.method public native prev_frame()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native prev_frame(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvFGDStatModel;
.end method
