.class public Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_calib3d.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_calib3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvStereoBMState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState$ReleaseDeallocator;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 285
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->allocate()V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->allocateArray(I)V

    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->zero()Lcom/googlecode/javacpp/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 288
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method public static create(II)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
    .locals 2
    .parameter "preset"
    .parameter "numberOfDisparities"

    .prologue
    .line 297
    invoke-static {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d;->cvCreateStereoBMState(II)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;

    move-result-object v0

    .line 298
    .local v0, p:Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
    if-eqz v0, :cond_0

    .line 299
    new-instance v1, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState$ReleaseDeallocator;

    invoke-direct {v1, v0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState$ReleaseDeallocator;-><init>(Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;)V

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;

    .line 301
    :cond_0
    return-object v0
.end method


# virtual methods
.method public native SADWindowSize()I
.end method

.method public native SADWindowSize(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native cost(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native cost()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native disp(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native disp()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native disp12MaxDiff()I
.end method

.method public native disp12MaxDiff(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native minDisparity()I
.end method

.method public native minDisparity(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native numberOfDisparities()I
.end method

.method public native numberOfDisparities(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->position(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
    .locals 1
    .parameter "position"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;

    return-object v0
.end method

.method public native preFilterCap()I
.end method

.method public native preFilterCap(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native preFilterSize()I
.end method

.method public native preFilterSize(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native preFilterType()I
.end method

.method public native preFilterType(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native preFilteredImg0(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native preFilteredImg0()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native preFilteredImg1(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native preFilteredImg1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;->deallocate()V

    .line 305
    return-void
.end method

.method public native roi1(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native roi1()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native roi2(Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native roi2()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native slidingSumBuf(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native slidingSumBuf()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native speckleRange()I
.end method

.method public native speckleRange(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native speckleWindowSize()I
.end method

.method public native speckleWindowSize(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native textureThreshold()I
.end method

.method public native textureThreshold(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native trySmallerWindows()I
.end method

.method public native trySmallerWindows(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method

.method public native uniquenessRatio()I
.end method

.method public native uniquenessRatio(I)Lcom/googlecode/javacv/cpp/opencv_calib3d$CvStereoBMState;
.end method
