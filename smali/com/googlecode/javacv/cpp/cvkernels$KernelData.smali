.class public Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.super Lcom/googlecode/javacpp/Pointer;
.source "cvkernels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/cpp/cvkernels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KernelData"
.end annotation


# instance fields
.field private dstDstDotBuffers:[Ljava/nio/DoubleBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->load()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/DoubleBuffer;

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    .line 53
    invoke-direct {p0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->allocate()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/DoubleBuffer;

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    .line 54
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->allocateArray(I)V

    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/DoubleBuffer;

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    .line 55
    return-void
.end method

.method static synthetic access$100(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/cvkernels$KernelData;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->put(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v0

    return-object v0
.end method

.method private native allocate()V
.end method

.method private native allocateArray(I)V
.end method

.method private native put(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .parameter
        .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
        .end annotation
    .end parameter
    .annotation runtime Lcom/googlecode/javacpp/annotation/ByRef;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "operator="
        }
    .end annotation
.end method

.method private native setDstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .annotation runtime Lcom/googlecode/javacpp/annotation/MemberSetter;
    .end annotation

    .annotation runtime Lcom/googlecode/javacpp/annotation/Name;
        value = {
            "dstDstDot"
        }
    .end annotation
.end method


# virtual methods
.method public native H1(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native H1()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native H2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native H2()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native X(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native X()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
.end method

.method public native dstCount()I
.end method

.method public native dstCount(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native dstCountOutlier()I
.end method

.method public native dstCountOutlier(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native dstCountZero()I
.end method

.method public native dstCountZero(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public dstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .locals 2
    .parameter "dstDstDot"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    array-length v0, v0

    iget v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity:I

    if-ge v0, v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    iget v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/DoubleBuffer;

    iput-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    iget v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position:I

    aput-object p1, v0, v1

    .line 96
    invoke-direct {p0, p1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->setDstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v0

    return-object v0
.end method

.method public dstDstDot()Ljava/nio/DoubleBuffer;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDotBuffers:[Ljava/nio/DoubleBuffer;

    iget v1, p0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native dstImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native dstImg()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native mask(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native mask()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native outlierThreshold()D
.end method

.method public native outlierThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
    .locals 1
    .parameter "position"

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    return-object v0
.end method

.method public native srcDotImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native srcDotImg()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native srcDstDot()D
.end method

.method public native srcDstDot(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native srcImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native srcImg()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native srcImg2(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native srcImg2()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native subImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native subImg()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native transImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method

.method public native transImg()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.end method

.method public native zeroThreshold()D
.end method

.method public native zeroThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;
.end method
