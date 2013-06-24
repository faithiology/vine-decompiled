.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;
.super Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvGraphWeightedVtx"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 539
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 540
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 541
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 542
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
    .line 538
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;
    .locals 1
    .parameter "x0"

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;
    .locals 1
    .parameter "position"

    .prologue
    .line 547
    invoke-super {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;->position(I)Lcom/googlecode/javacv/cpp/opencv_core$CvGraphVtx;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;

    return-object v0
.end method

.method public native weight()F
.end method

.method public native weight(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvGraphWeightedVtx;
.end method
