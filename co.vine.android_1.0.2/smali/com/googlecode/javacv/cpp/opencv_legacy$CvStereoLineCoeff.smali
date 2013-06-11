.class public Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_legacy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_legacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvStereoLineCoeff"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 649
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 652
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native Xcoef()D
.end method

.method public native Xcoef(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native XcoefA()D
.end method

.method public native XcoefA(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native XcoefAB()D
.end method

.method public native XcoefAB(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native XcoefB()D
.end method

.method public native XcoefB(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native Ycoef()D
.end method

.method public native Ycoef(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native YcoefA()D
.end method

.method public native YcoefA(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native YcoefAB()D
.end method

.method public native YcoefAB(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native YcoefB()D
.end method

.method public native YcoefB(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native Zcoef()D
.end method

.method public native Zcoef(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native ZcoefA()D
.end method

.method public native ZcoefA(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native ZcoefAB()D
.end method

.method public native ZcoefAB(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public native ZcoefB()D
.end method

.method public native ZcoefB(D)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 648
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;->position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;
    .locals 1
    .parameter "position"

    .prologue
    .line 657
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_legacy$CvStereoLineCoeff;

    return-object v0
.end method
