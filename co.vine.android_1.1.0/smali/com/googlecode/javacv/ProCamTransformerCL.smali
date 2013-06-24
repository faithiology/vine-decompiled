.class public Lcom/googlecode/javacv/ProCamTransformerCL;
.super Lcom/googlecode/javacv/ProCamTransformer;
.source "ProCamTransformerCL.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformerCL;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final H13x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static final H23x3:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/googlecode/javacv/cpp/opencv_core$CvMat;",
            ">;"
        }
    .end annotation
.end field

.field private static final X4x4:Ljava/lang/ThreadLocal;
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
.field protected final H1Buffer:Lcom/jogamp/opencl/CLBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jogamp/opencl/CLBuffer",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final H2Buffer:Lcom/jogamp/opencl/CLBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jogamp/opencl/CLBuffer",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final XBuffer:Lcom/jogamp/opencl/CLBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jogamp/opencl/CLBuffer",
            "<",
            "Ljava/nio/FloatBuffer;",
            ">;"
        }
    .end annotation
.end field

.field protected final context:Lcom/googlecode/javacv/JavaCVCL;

.field private dotKernel:Lcom/jogamp/opencl/CLKernel;

.field protected final nullSize:I

.field private oneKernel:Lcom/jogamp/opencl/CLKernel;

.field protected projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

.field private reduceKernel:Lcom/jogamp/opencl/CLKernel;

.field private subKernel:Lcom/jogamp/opencl/CLKernel;

.field protected surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 38
    const-class v0, Lcom/googlecode/javacv/ProCamTransformerCL;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProCamTransformerCL;->$assertionsDisabled:Z

    .line 67
    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H13x3:Ljava/lang/ThreadLocal;

    .line 68
    invoke-static {v1, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H23x3:Ljava/lang/ThreadLocal;

    .line 69
    invoke-static {v2, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->createThreadLocal(II)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/ProCamTransformerCL;->X4x4:Ljava/lang/ThreadLocal;

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/JavaCVCL;[DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;)V
    .locals 6
    .parameter "context"
    .parameter "referencePoints"
    .parameter "camera"
    .parameter "projector"

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/ProCamTransformerCL;-><init>(Lcom/googlecode/javacv/JavaCVCL;[DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/JavaCVCL;[DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V
    .locals 10
    .parameter "context"
    .parameter "referencePoints"
    .parameter "camera"
    .parameter "projector"
    .parameter "n"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/googlecode/javacv/ProCamTransformer;-><init>([DLcom/googlecode/javacv/CameraDevice;Lcom/googlecode/javacv/ProjectorDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;)V

    .line 74
    iput-object v3, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    iput-object v3, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 46
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProCamTransformerCL;->createParameters()Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/ProCamTransformer$Parameters;->size()I

    move-result v0

    .line 47
    .local v0, dotSize:I
    iput-object p1, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    .line 48
    invoke-static {}, Lcom/jogamp/common/os/Platform;->is32Bit()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    :goto_0
    iput v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->nullSize:I

    .line 49
    iget-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v2, :cond_2

    move-object v2, v3

    :goto_1
    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->H1Buffer:Lcom/jogamp/opencl/CLBuffer;

    .line 51
    invoke-virtual {p1}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x9

    new-array v4, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    sget-object v5, Lcom/jogamp/opencl/CLMemory$Mem;->READ_ONLY:Lcom/jogamp/opencl/CLMemory$Mem;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/jogamp/opencl/CLContext;->createFloatBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->H2Buffer:Lcom/jogamp/opencl/CLBuffer;

    .line 52
    invoke-virtual {p1}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x10

    new-array v4, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    sget-object v5, Lcom/jogamp/opencl/CLMemory$Mem;->READ_ONLY:Lcom/jogamp/opencl/CLMemory$Mem;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/jogamp/opencl/CLContext;->createFloatBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->XBuffer:Lcom/jogamp/opencl/CLBuffer;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/ProCamTransformerCL;

    if-ne v2, v3, :cond_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-cl-fast-relaxed-math -cl-mad-enable -cl-nv-maxrregcount=32 -DDOT_SIZE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageTransformer.cl:ProCamTransformer.cl"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "transformOne"

    aput-object v5, v4, v6

    const-string v5, "transformSub"

    aput-object v5, v4, v7

    const-string v5, "transformDot"

    aput-object v5, v4, v8

    const-string v5, "reduceOutputData"

    aput-object v5, v4, v9

    invoke-virtual {p1, v2, v3, v4}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v1

    .line 59
    .local v1, kernels:[Lcom/jogamp/opencl/CLKernel;
    aget-object v2, v1, v6

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->oneKernel:Lcom/jogamp/opencl/CLKernel;

    .line 60
    aget-object v2, v1, v7

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->subKernel:Lcom/jogamp/opencl/CLKernel;

    .line 61
    aget-object v2, v1, v8

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->dotKernel:Lcom/jogamp/opencl/CLKernel;

    .line 62
    aget-object v2, v1, v9

    iput-object v2, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->reduceKernel:Lcom/jogamp/opencl/CLKernel;

    .line 64
    .end local v1           #kernels:[Lcom/jogamp/opencl/CLKernel;
    :cond_0
    return-void

    .line 48
    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x9

    new-array v4, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    sget-object v5, Lcom/jogamp/opencl/CLMemory$Mem;->READ_ONLY:Lcom/jogamp/opencl/CLMemory$Mem;

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/jogamp/opencl/CLContext;->createFloatBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public getContext()Lcom/googlecode/javacv/JavaCVCL;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    return-object v0
.end method

.method public getProjectorImageCL(I)Lcom/jogamp/opencl/CLImage2d;
    .locals 1
    .parameter "pyramidLevel"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getProjectorTransformerCL()Lcom/googlecode/javacv/ProjectiveColorTransformerCL;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    check-cast v0, Lcom/googlecode/javacv/ProjectiveColorTransformerCL;

    return-object v0
.end method

.method public getSurfaceImageCL(I)Lcom/jogamp/opencl/CLImage2d;
    .locals 1
    .parameter "pyramidLevel"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSurfaceTransformerCL()Lcom/googlecode/javacv/ProjectiveColorTransformerCL;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    check-cast v0, Lcom/googlecode/javacv/ProjectiveColorTransformerCL;

    return-object v0
.end method

.method protected prepareTransforms(Lcom/jogamp/opencl/CLBuffer;Lcom/jogamp/opencl/CLBuffer;Lcom/jogamp/opencl/CLBuffer;I[Lcom/googlecode/javacv/ImageTransformer$Parameters;)V
    .locals 13
    .parameter "H1Buffer"
    .parameter "H2Buffer"
    .parameter "XBuffer"
    .parameter "pyramidLevel"
    .parameter "parameters"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v1, :cond_1

    const/4 v8, 0x0

    .line 128
    .local v8, floatH1:Ljava/nio/FloatBuffer;
    :goto_0
    invoke-virtual {p2}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v9

    check-cast v9, Ljava/nio/FloatBuffer;

    .line 129
    .local v9, floatH2:Ljava/nio/FloatBuffer;
    invoke-virtual/range {p3 .. p3}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/FloatBuffer;

    .line 130
    .local v10, floatX:Ljava/nio/FloatBuffer;
    sget-object v1, Lcom/googlecode/javacv/ProCamTransformerCL;->H13x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 131
    .local v7, H1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v1, Lcom/googlecode/javacv/ProCamTransformerCL;->H23x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 132
    .local v3, H2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    sget-object v1, Lcom/googlecode/javacv/ProCamTransformerCL;->X4x4:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 133
    .local v4, X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p5

    array-length v1, v0

    if-ge v11, v1, :cond_5

    .line 134
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_2
    aget-object v6, p5, v11

    check-cast v6, Lcom/googlecode/javacv/ProCamTransformer$Parameters;

    move-object v1, p0

    move/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/googlecode/javacv/ProCamTransformerCL;->prepareTransforms(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProCamTransformer$Parameters;)V

    .line 136
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    const/16 v1, 0x9

    if-ge v12, v1, :cond_3

    .line 137
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v7, v12}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v8, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 140
    :cond_0
    invoke-virtual {v3, v12}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v9, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 136
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 127
    .end local v3           #H2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v4           #X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v7           #H1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .end local v8           #floatH1:Ljava/nio/FloatBuffer;
    .end local v9           #floatH2:Ljava/nio/FloatBuffer;
    .end local v10           #floatX:Ljava/nio/FloatBuffer;
    .end local v11           #i:I
    .end local v12           #j:I
    :cond_1
    invoke-virtual {p1}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    move-object v8, v1

    goto :goto_0

    .restart local v3       #H2:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .restart local v4       #X:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .restart local v7       #H1:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    .restart local v8       #floatH1:Ljava/nio/FloatBuffer;
    .restart local v9       #floatH2:Ljava/nio/FloatBuffer;
    .restart local v10       #floatX:Ljava/nio/FloatBuffer;
    .restart local v11       #i:I
    :cond_2
    move-object v2, v7

    .line 134
    goto :goto_2

    .line 142
    .restart local v12       #j:I
    :cond_3
    const/4 v12, 0x0

    :goto_4
    const/16 v1, 0x10

    if-ge v12, v1, :cond_4

    .line 143
    invoke-virtual {v4, v12}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v10, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 142
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 133
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 146
    .end local v12           #j:I
    :cond_5
    iget-object v1, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v1, :cond_6

    .line 147
    invoke-virtual {v8}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 149
    :cond_6
    invoke-virtual {v9}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 150
    invoke-virtual {v10}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 151
    return-void
.end method

.method public setProjectorImageCL(Lcom/jogamp/opencl/CLImage2d;II)V
    .locals 7
    .parameter "projectorImage0"
    .parameter "minPyramidLevel"
    .parameter "maxPyramidLevel"

    .prologue
    .line 92
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    array-length v4, v4

    add-int/lit8 v5, p3, 0x1

    if-eq v4, v5, :cond_1

    .line 93
    :cond_0
    add-int/lit8 v4, p3, 0x1

    new-array v4, v4, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 95
    :cond_1
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aput-object p1, v4, p2

    .line 96
    add-int/lit8 v2, p2, 0x1

    .local v2, i:I
    :goto_0
    if-gt v2, p3, :cond_3

    .line 97
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jogamp/opencl/CLImage2d;->width:I

    div-int/lit8 v3, v4, 0x2

    .line 99
    .local v3, w:I
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jogamp/opencl/CLImage2d;->height:I

    div-int/lit8 v1, v4, 0x2

    .line 100
    .local v1, h:I
    new-instance v0, Lcom/jogamp/opencl/CLImageFormat;

    sget-object v4, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->RGBA:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    sget-object v5, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->FLOAT:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    invoke-direct {v0, v4, v5}, Lcom/jogamp/opencl/CLImageFormat;-><init>(Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;Lcom/jogamp/opencl/CLImageFormat$ChannelType;)V

    .line 101
    .local v0, format:Lcom/jogamp/opencl/CLImageFormat;
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v5}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v5, v3, v1, v0, v6}, Lcom/jogamp/opencl/CLContext;->createImage2d(IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v5

    aput-object v5, v4, v2

    .line 103
    .end local v0           #format:Lcom/jogamp/opencl/CLImageFormat;
    .end local v1           #h:I
    .end local v3           #w:I
    :cond_2
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/javacv/JavaCVCL;->pyrDown(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_3
    return-void
.end method

.method public setSurfaceImageCL(Lcom/jogamp/opencl/CLImage2d;I)V
    .locals 8
    .parameter "surfaceImage0"
    .parameter "pyramidLevels"

    .prologue
    const/4 v7, 0x0

    .line 110
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    array-length v4, v4

    if-eq v4, p2, :cond_1

    .line 111
    :cond_0
    new-array v4, p2, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aput-object p1, v4, v7

    .line 114
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 115
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    .line 116
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jogamp/opencl/CLImage2d;->width:I

    div-int/lit8 v3, v4, 0x2

    .line 117
    .local v3, w:I
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    iget v4, v4, Lcom/jogamp/opencl/CLImage2d;->height:I

    div-int/lit8 v1, v4, 0x2

    .line 118
    .local v1, h:I
    new-instance v0, Lcom/jogamp/opencl/CLImageFormat;

    sget-object v4, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->RGBA:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    sget-object v5, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->FLOAT:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    invoke-direct {v0, v4, v5}, Lcom/jogamp/opencl/CLImageFormat;-><init>(Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;Lcom/jogamp/opencl/CLImageFormat$ChannelType;)V

    .line 119
    .local v0, format:Lcom/jogamp/opencl/CLImageFormat;
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v5}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v5

    new-array v6, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v5, v3, v1, v0, v6}, Lcom/jogamp/opencl/CLContext;->createImage2d(IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v5

    aput-object v5, v4, v2

    .line 121
    .end local v0           #format:Lcom/jogamp/opencl/CLImageFormat;
    .end local v1           #h:I
    .end local v3           #w:I
    :cond_2
    iget-object v4, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v5, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceImageCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v6, v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/javacv/JavaCVCL;->pyrDown(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    return-void
.end method

.method public transform(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[ZLcom/googlecode/javacv/ImageTransformerCL$InputData;Lcom/googlecode/javacv/ImageTransformerCL$OutputData;)V
    .locals 32
    .parameter "srcImg"
    .parameter "subImg"
    .parameter "srcDotImg"
    .parameter "transImg"
    .parameter "dstImg"
    .parameter "maskImg"
    .parameter "parameters"
    .parameter "inverses"
    .parameter "inputData"
    .parameter "outputData"

    .prologue
    .line 157
    if-eqz p8, :cond_1

    .line 158
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move-object/from16 v0, p8

    array-length v3, v0

    move/from16 v0, v26

    if-ge v0, v3, :cond_1

    .line 159
    aget-boolean v3, p8, v26

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Inverse transform not supported."

    invoke-direct {v3, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :cond_0
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 165
    .end local v26           #i:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H1Buffer:Lcom/jogamp/opencl/CLBuffer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H2Buffer:Lcom/jogamp/opencl/CLBuffer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->XBuffer:Lcom/jogamp/opencl/CLBuffer;

    move-object/from16 v0, p9

    iget v7, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->pyramidLevel:I

    move-object/from16 v3, p0

    move-object/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lcom/googlecode/javacv/ProCamTransformerCL;->prepareTransforms(Lcom/jogamp/opencl/CLBuffer;Lcom/jogamp/opencl/CLBuffer;Lcom/jogamp/opencl/CLBuffer;I[Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 167
    const/4 v3, 0x0

    aget-object v3, p7, v3

    invoke-interface {v3}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->size()I

    move-result v24

    .line 168
    .local v24, dotSize:I
    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v28, v0

    .line 169
    .local v28, localSize:I
    :goto_1
    move-object/from16 v0, p9

    iget v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    move/from16 v0, v28

    invoke-static {v3, v0}, Lcom/googlecode/javacv/JavaCVCL;->alignCeil(II)I

    move-result v25

    .line 170
    .local v25, globalSize:I
    div-int v30, v25, v28

    .line 173
    .local v30, reduceSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->getBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v27

    .line 174
    .local v27, inputBuffer:Lcom/jogamp/opencl/CLBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p10

    move/from16 v1, v24

    move/from16 v2, v30

    invoke-virtual {v0, v3, v1, v2}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->getBuffer(Lcom/googlecode/javacv/JavaCVCL;II)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v29

    .line 176
    .local v29, outputBuffer:Lcom/jogamp/opencl/CLBuffer;
    new-instance v23, Lcom/jogamp/opencl/CLEventList;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/jogamp/opencl/CLEventList;-><init>(I)V

    .line 179
    .local v23, list:Lcom/jogamp/opencl/CLEventList;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->surfaceTransformer:Lcom/googlecode/javacv/ProjectiveColorTransformer;

    if-eqz v3, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H1Buffer:Lcom/jogamp/opencl/CLBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/googlecode/javacv/JavaCVCL;->writeBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V

    .line 182
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H2Buffer:Lcom/jogamp/opencl/CLBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/googlecode/javacv/JavaCVCL;->writeBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->XBuffer:Lcom/jogamp/opencl/CLBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/googlecode/javacv/JavaCVCL;->writeBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V

    .line 184
    move-object/from16 v0, p9

    iget-boolean v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->autoWrite:Z

    if-eqz v3, :cond_3

    .line 185
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->writeBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 187
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->projectorImageCL:[Lcom/jogamp/opencl/CLImage2d;

    move-object/from16 v0, p9

    iget v5, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->pyramidLevel:I

    aget-object v31, v3, v5

    .line 188
    .local v31, srcImg2:Lcom/jogamp/opencl/CLImage2d;
    const/4 v4, 0x0

    .line 189
    .local v4, kernel:Lcom/jogamp/opencl/CLKernel;
    if-nez p2, :cond_a

    .line 190
    sget-boolean v3, Lcom/googlecode/javacv/ProCamTransformerCL;->$assertionsDisabled:Z

    if-nez v3, :cond_6

    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_6

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 168
    .end local v4           #kernel:Lcom/jogamp/opencl/CLKernel;
    .end local v23           #list:Lcom/jogamp/opencl/CLEventList;
    .end local v25           #globalSize:I
    .end local v27           #inputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .end local v28           #localSize:I
    .end local v29           #outputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .end local v30           #reduceSize:I
    .end local v31           #srcImg2:Lcom/jogamp/opencl/CLImage2d;
    :cond_4
    move-object/from16 v0, p9

    iget v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    const/16 v5, 0x20

    if-le v3, v5, :cond_5

    const/16 v28, 0x40

    goto/16 :goto_1

    :cond_5
    const/16 v28, 0x20

    goto/16 :goto_1

    .line 191
    .restart local v4       #kernel:Lcom/jogamp/opencl/CLKernel;
    .restart local v23       #list:Lcom/jogamp/opencl/CLEventList;
    .restart local v25       #globalSize:I
    .restart local v27       #inputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .restart local v28       #localSize:I
    .restart local v29       #outputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .restart local v30       #reduceSize:I
    .restart local v31       #srcImg2:Lcom/jogamp/opencl/CLImage2d;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->oneKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    if-nez p5, :cond_9

    .end local p4
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H2Buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v3, v5}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v4

    .line 200
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H1Buffer:Lcom/jogamp/opencl/CLBuffer;

    if-eqz v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H1Buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v4, v3}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    .line 201
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->XBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v4, v3}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p9

    iget v5, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiX:I

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move/from16 v0, v25

    int-to-long v11, v0

    const-wide/16 v13, 0x1

    move-object/from16 v0, p7

    array-length v15, v0

    int-to-long v15, v15

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x1

    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-virtual/range {v3 .. v23}, Lcom/googlecode/javacv/JavaCVCL;->executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJLcom/jogamp/opencl/CLEventList;)V

    .line 205
    const/4 v3, 0x1

    move/from16 v0, v30

    if-le v0, v3, :cond_7

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->reduceKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    .line 207
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->reduceKernel:Lcom/jogamp/opencl/CLKernel;

    const-wide/16 v7, 0x0

    move/from16 v0, v30

    int-to-long v9, v0

    move/from16 v0, v30

    int-to-long v11, v0

    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/javacv/JavaCVCL;->executeKernel(Lcom/jogamp/opencl/CLKernel;JJJ)V

    .line 209
    :cond_7
    move-object/from16 v0, p10

    iget-boolean v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->autoRead:Z

    if-eqz v3, :cond_8

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->readBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 219
    :cond_8
    return-void

    .restart local p4
    :cond_9
    move-object/from16 p4, p5

    .line 191
    goto/16 :goto_2

    .line 192
    :cond_a
    if-nez p3, :cond_c

    .line 193
    sget-boolean v3, Lcom/googlecode/javacv/ProCamTransformerCL;->$assertionsDisabled:Z

    if-nez v3, :cond_b

    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_b

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 194
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->subKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H2Buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v3, v5}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v4

    goto/16 :goto_3

    .line 196
    :cond_c
    sget-boolean v3, Lcom/googlecode/javacv/ProCamTransformerCL;->$assertionsDisabled:Z

    if-nez v3, :cond_d

    move-object/from16 v0, p7

    array-length v3, v0

    move/from16 v0, v24

    if-eq v3, v0, :cond_d

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 197
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->dotKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->H2Buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v3, v5}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v4

    goto/16 :goto_3

    .line 200
    .end local p4
    :cond_e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/ProCamTransformerCL;->nullSize:I

    invoke-virtual {v4, v3}, Lcom/jogamp/opencl/CLKernel;->putNullArg(I)Lcom/jogamp/opencl/CLKernel;

    goto/16 :goto_4
.end method
