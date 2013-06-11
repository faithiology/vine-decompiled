.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvStereoCamera"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 696
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 697
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 699
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native border(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native border(IILcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public native camera(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;
.end method

.method public native camera(ILcom/googlecode/javacv/cpp/opencv_legacy$CvCamera;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public native coeffs(III)D
.end method

.method public native coeffs(IIID)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public native epipole(I)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native epipole(ILcom/googlecode/javacv/cpp/opencv_core$CvPoint3D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public native fundMatr()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native lineCoeffs(Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public native lineCoeffs()Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native needSwapCameras()I
.end method

.method public native needSwapCameras(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
    .locals 1
    .parameter "position"

    .prologue
    .line 704
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;

    return-object v0
.end method

.method public native quad(II)Lcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native quad(IILcom/googlecode/javacv/cpp/opencv_core$CvPoint2D32f;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method

.method public native rotMatrix()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native transVector()Lcom/googlecode/javacpp/FloatPointer;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberGetter;
    .end annotation
.end method

.method public native warpSize()Lcom/googlecode/javacv/cpp/opencv_core$CvSize;
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation
.end method

.method public native warpSize(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoCamera;
.end method
