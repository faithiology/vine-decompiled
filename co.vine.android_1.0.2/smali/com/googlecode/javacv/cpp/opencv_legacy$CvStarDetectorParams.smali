.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvStarDetectorParams"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 251
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 253
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 254
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native lineThresholdBinarized()I
.end method

.method public native lineThresholdBinarized(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
.end method

.method public native lineThresholdProjected()I
.end method

.method public native lineThresholdProjected(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
.end method

.method public native maxSize()I
.end method

.method public native maxSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
    .locals 1
    .parameter "position"

    .prologue
    .line 259
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;

    return-object v0
.end method

.method public native responseThreshold()I
.end method

.method public native responseThreshold(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
.end method

.method public native suppressNonmaxSize()I
.end method

.method public native suppressNonmaxSize(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStarDetectorParams;
.end method
