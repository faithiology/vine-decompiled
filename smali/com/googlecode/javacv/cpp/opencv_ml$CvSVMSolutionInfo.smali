.class public Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
.super Lcom/googlecode/javacpp/Pointer;
.source "opencv_ml.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/opencv_ml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CvSVMSolutionInfo"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 382
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 0
    .parameter "p"

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public native obj()D
.end method

.method public native obj(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;->position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;

    return-object v0
.end method

.method public native r()D
.end method

.method public native r(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
.end method

.method public native rho()D
.end method

.method public native rho(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
.end method

.method public native upper_bound_n()D
.end method

.method public native upper_bound_n(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
.end method

.method public native upper_bound_p()D
.end method

.method public native upper_bound_p(D)Lcom/googlecode/javacv/cpp/opencv_ml$CvSVMSolutionInfo;
.end method
