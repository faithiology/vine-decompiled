.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvStereoGCState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 2441
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2442
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 2443
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 2444
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
    .locals 2
    .parameter "numberOfDisparities"
    .parameter "maxIters"

    .prologue
    .line 2453
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy;->cvCreateStereoGCState(II)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;

    move-result-object v0

    .line 2454
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
    if-eqz v0, :cond_0

    .line 2455
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 2457
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native Ithreshold()I
.end method

.method public native Ithreshold(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native K()F
.end method

.method public native K(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native dispLeft()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native dispLeft(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native dispRight()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native dispRight(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native edgeBuf()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native edgeBuf(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native interactionRadius()I
.end method

.method public native interactionRadius(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native lambda()F
.end method

.method public native lambda(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native lambda1()F
.end method

.method public native lambda1(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native lambda2()F
.end method

.method public native lambda2(F)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native left()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native left(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native maxIters()I
.end method

.method public native maxIters(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native minDisparity()I
.end method

.method public native minDisparity(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native numberOfDisparities()I
.end method

.method public native numberOfDisparities(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native occlusionCost()I
.end method

.method public native occlusionCost(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2440
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
    .locals 1
    .parameter "position"

    .prologue
    .line 2449
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;

    return-object v0
.end method

.method public native ptrLeft()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native ptrLeft(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native ptrRight()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native ptrRight(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 2460
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;->deallocate()V

    .line 2461
    return-void
.end method

.method public native right()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native right(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method

.method public native vtxBuf()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native vtxBuf(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoGCState;
.end method
