.class public Lcom/googlecode/javacv/ProjectiveColorTransformer;
.super Lcom/googlecode/javacv/ProjectiveTransformer;
.source "ProjectiveColorTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static X24x4:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field protected static temp3x1:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

.field protected numBiases:I

.field protected numGains:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 32
    const-class v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->$assertionsDisabled:Z

    .line 45
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X24x4:Ljava/lang/ThreadLocal;

    .line 46
    const/4 v0, 0x3

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->temp3x1:Ljava/lang/ThreadLocal;

    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[DLcom/googlecode/javacv/cpp/opencv_core$CvMat;II)V
    .locals 2
    .parameter "K1"
    .parameter "K2"
    .parameter "R"
    .parameter "t"
    .parameter "n"
    .parameter "referencePoints1"
    .parameter "referencePoints2"
    .parameter "X"
    .parameter "numGains"
    .parameter "numBiases"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct/range {p0 .. p7}, Lcom/googlecode/javacv/ProjectiveTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 48
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 49
    iput v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    iput v1, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    .line 51
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 38
    if-nez p8, :cond_0

    :goto_0
    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 40
    iput p9, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    .line 41
    iput p10, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    .line 42
    return-void

    .line 38
    :cond_0
    invoke-virtual {p8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->clone()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic createParameters()Lcom/googlecode/javacv/ImageTransformer$Parameters;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->createParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public createParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    .locals 1

    .prologue
    .line 177
    new-instance v0, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;-><init>(Lcom/googlecode/javacv/ProjectiveColorTransformer;)V

    return-object v0
.end method

.method public bridge synthetic createParameters()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->createParameters()Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getNumBiases()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    return v0
.end method

.method public getNumGains()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    return v0
.end method

.method public getX()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    return-object v0
.end method

.method protected prepareColorTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Z)V
    .locals 8
    .parameter "X2"
    .parameter "pyramidLevel"
    .parameter "p"
    .parameter "inverse"

    .prologue
    const/4 v3, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 92
    invoke-virtual {p3}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getA()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v0

    .local v0, A:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {p3}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getB()Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v1

    .line 94
    .local v1, b:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-static {p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 96
    invoke-virtual {p1, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {p1, v4}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 97
    iget-boolean v2, p3, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->fakeIdentity:Z

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    .line 98
    invoke-virtual {p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 107
    :cond_0
    :goto_0
    invoke-virtual {p1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {p1, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->cols(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 108
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v1, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v6, v4, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 110
    invoke-virtual {v1, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v5, v4, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 111
    invoke-virtual {v1, v7}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v2

    invoke-virtual {p1, v7, v4, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 114
    :cond_1
    if-eqz p4, :cond_2

    .line 116
    invoke-static {p1, p1, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvInvert(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)D

    .line 118
    :cond_2
    return-void

    .line 99
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_4

    .line 100
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2, v0, p1}, Lcom/googlecode/javacv/cpp/opencv_core;->cvMatMul(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_5

    .line 102
    invoke-virtual {p1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 103
    :cond_5
    if-nez v0, :cond_0

    .line 104
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {p1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0
.end method

.method public transform([Lcom/googlecode/javacv/ImageTransformer$Data;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V
    .locals 8
    .parameter "data"
    .parameter "roi"
    .parameter "parameters"
    .parameter "inverses"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 121
    sget-boolean v3, Lcom/googlecode/javacv/ProjectiveColorTransformer;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    array-length v3, p1

    array-length v4, p3

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 122
    :cond_0
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v3

    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 123
    :cond_1
    new-instance v3, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    array-length v4, p1

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;-><init>(I)V

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v3, v3

    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 126
    :cond_3
    array-length v3, p1

    new-array v3, v3, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 127
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    .line 128
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v5, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    aput-object v4, v3, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1           #i:I
    :cond_4
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v3, v3

    array-length v4, p1

    if-ge v3, v4, :cond_6

    .line 132
    :cond_5
    array-length v3, p1

    new-array v3, v3, [Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iput-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 133
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    array-length v3, v3

    if-ge v1, v3, :cond_6

    .line 134
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v6, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v4

    aput-object v4, v3, v1

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 138
    .end local v1           #i:I
    :cond_6
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    array-length v3, p1

    if-ge v1, v3, :cond_8

    .line 139
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 141
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 142
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3, v7}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcImg2(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 143
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->subImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->subImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 144
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDotImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDotImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 145
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->mask:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->mask(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 146
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-wide v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->zeroThreshold:D

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->zeroThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 147
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-wide v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->outlierThreshold:D

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->outlierThreshold(D)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 149
    if-nez p4, :cond_7

    const/4 v2, 0x0

    .line 150
    .local v2, inverse:Z
    :goto_3
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v3, v1

    aget-object v3, p1, v1

    iget v5, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    aget-object v3, p3, v1

    check-cast v3, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->prepareHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveTransformer$Parameters;Z)V

    .line 151
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v3, v1

    aget-object v3, p1, v1

    iget v5, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->pyramidLevel:I

    aget-object v3, p3, v1

    check-cast v3, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->prepareColorTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Z)V

    .line 153
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->H:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->H1(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 154
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3, v7}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->H2(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 155
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X2:[Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->X(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 157
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->transImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->transImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 158
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->dstImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstImg(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 159
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/googlecode/javacv/ImageTransformer$Data;->dstDstDot:Ljava/nio/DoubleBuffer;

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstDstDot(Ljava/nio/DoubleBuffer;)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 149
    .end local v2           #inverse:Z
    :cond_7
    aget-boolean v2, p4, v1

    goto :goto_3

    .line 162
    :cond_8
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity()I

    move-result v0

    .line 163
    .local v0, fullCapacity:I
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    array-length v4, p1

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    .line 164
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->getFillColor()Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    move-result-object v4

    invoke-static {v3, p2, v4}, Lcom/googlecode/javacv/cpp/cvkernels;->multiWarpColorTransform(Lcom/googlecode/javacv/cpp/cvkernels$KernelData;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 165
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    .line 167
    const/4 v1, 0x0

    :goto_4
    array-length v3, p1

    if-ge v1, v3, :cond_9

    .line 168
    iget-object v3, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v3, v1}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->position(I)Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    .line 169
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCount()I

    move-result v4

    iput v4, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCount:I

    .line 170
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountZero()I

    move-result v4

    iput v4, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountZero:I

    .line 171
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->dstCountOutlier()I

    move-result v4

    iput v4, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->dstCountOutlier:I

    .line 172
    aget-object v3, p1, v1

    iget-object v4, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->kernelData:Lcom/googlecode/javacv/cpp/cvkernels$KernelData;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/cvkernels$KernelData;->srcDstDot()D

    move-result-wide v4

    iput-wide v4, v3, Lcom/googlecode/javacv/ImageTransformer$Data;->srcDstDot:D

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 174
    :cond_9
    return-void
.end method

.method public transformColor(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;ILcom/googlecode/javacv/ImageTransformer$Parameters;Z)V
    .locals 8
    .parameter "srcImage"
    .parameter "dstImage"
    .parameter "roi"
    .parameter "pyramidLevel"
    .parameter "parameters"
    .parameter "inverse"

    .prologue
    .line 65
    move-object v1, p5

    check-cast v1, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;

    .line 67
    .local v1, p:Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;
    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getColorParameters()[D

    move-result-object v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->getIdentityColorParameters()[D

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;->fakeIdentity:Z

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    if-nez v2, :cond_3

    iget v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numGains:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/googlecode/javacv/ProjectiveColorTransformer;->numBiases:I

    if-nez v2, :cond_3

    .line 69
    :cond_1
    if-eq p1, p2, :cond_2

    .line 70
    invoke-static {p1, p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCopy(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 89
    :cond_2
    :goto_0
    return-void

    .line 75
    :cond_3
    sget-object v2, Lcom/googlecode/javacv/ProjectiveColorTransformer;->X24x4:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 76
    .local v0, X2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    invoke-virtual {p0, v0, p4, v1, p6}, Lcom/googlecode/javacv/ProjectiveColorTransformer;->prepareColorTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveColorTransformer$Parameters;Z)V

    .line 77
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 79
    if-nez p3, :cond_4

    .line 80
    invoke-static {p2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvResetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 84
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 85
    const/4 v2, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 86
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->highValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 87
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvTransform(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 88
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->rows(I)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 82
    :cond_4
    invoke-static {p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetImageROI(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Lcom/googlecode/javacv/cpp/opencv_core$CvRect;)V

    goto :goto_1
.end method
