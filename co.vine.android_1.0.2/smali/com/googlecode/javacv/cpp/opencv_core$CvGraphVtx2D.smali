.class public Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
.source "opencv_core.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_core;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGraphVtx2D"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3036
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 3037
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 3038
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3035
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;
    .locals 1
    .parameter "position"

    .prologue
    .line 3043
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 3035
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;

    move-result-object v0

    return-object v0
.end method

.method public native ptr(Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx2D;
.end method

.method public native ptr()Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
.end method
