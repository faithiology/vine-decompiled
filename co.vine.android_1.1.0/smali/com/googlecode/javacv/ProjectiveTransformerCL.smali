.class public Lcom/googlecode/javacv/ProjectiveTransformerCL;
.super Lcom/googlecode/javacv/ProjectiveTransformer;
.source "ProjectiveTransformerCL.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageTransformerCL;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected final HBuffer:Lcom/jogamp/opencl/CLBuffer;
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

.field private oneKernel:Lcom/jogamp/opencl/CLKernel;

.field private reduceKernel:Lcom/jogamp/opencl/CLKernel;

.field private subKernel:Lcom/jogamp/opencl/CLKernel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/JavaCVCL;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 37
    const/4 v0, 0x0

    new-array v7, v0, [D

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/googlecode/javacv/ProjectiveTransformerCL;-><init>(Lcom/googlecode/javacv/JavaCVCL;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/JavaCVCL;Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/ProjectiveDevice;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V
    .locals 9
    .parameter "context"
    .parameter "d1"
    .parameter "d2"
    .parameter "n"
    .parameter "referencePoints1"
    .parameter "referencePoints2"

    .prologue
    .line 45
    iget-object v2, p2, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p3, Lcom/googlecode/javacv/ProjectiveDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v4, p3, Lcom/googlecode/javacv/ProjectiveDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v5, p3, Lcom/googlecode/javacv/ProjectiveDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/googlecode/javacv/ProjectiveTransformerCL;-><init>(Lcom/googlecode/javacv/JavaCVCL;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/JavaCVCL;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V
    .locals 10
    .parameter "context"
    .parameter "K1"
    .parameter "K2"
    .parameter "R"
    .parameter "t"
    .parameter "n"
    .parameter "referencePoints1"
    .parameter "referencePoints2"

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/javacv/ProjectiveTransformer;-><init>(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 50
    invoke-virtual {p0}, Lcom/googlecode/javacv/ProjectiveTransformerCL;->createParameters()Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;->size()I

    move-result v8

    .line 51
    .local v8, dotSize:I
    iput-object p1, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    .line 52
    invoke-virtual {p1}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v0

    mul-int/lit8 v1, v8, 0x9

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jogamp/opencl/CLMemory$Mem;

    const/4 v3, 0x0

    sget-object v4, Lcom/jogamp/opencl/CLMemory$Mem;->READ_ONLY:Lcom/jogamp/opencl/CLMemory$Mem;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/jogamp/opencl/CLContext;->createFloatBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->HBuffer:Lcom/jogamp/opencl/CLBuffer;

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/googlecode/javacv/ProjectiveTransformerCL;

    if-ne v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-cl-fast-relaxed-math -cl-mad-enable -DDOT_SIZE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageTransformer.cl:ProjectiveTransformer.cl"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "transformOne"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "transformSub"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "transformDot"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "reduceOutputData"

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v9

    .line 58
    .local v9, kernels:[Lcom/jogamp/opencl/CLKernel;
    const/4 v0, 0x0

    aget-object v0, v9, v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->oneKernel:Lcom/jogamp/opencl/CLKernel;

    .line 59
    const/4 v0, 0x1

    aget-object v0, v9, v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->subKernel:Lcom/jogamp/opencl/CLKernel;

    .line 60
    const/4 v0, 0x2

    aget-object v0, v9, v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->dotKernel:Lcom/jogamp/opencl/CLKernel;

    .line 61
    const/4 v0, 0x3

    aget-object v0, v9, v0

    iput-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->reduceKernel:Lcom/jogamp/opencl/CLKernel;

    .line 63
    .end local v9           #kernels:[Lcom/jogamp/opencl/CLKernel;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/JavaCVCL;[D)V
    .locals 9
    .parameter "context"
    .parameter "referencePoints"

    .prologue
    const/4 v2, 0x0

    .line 40
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, p2

    move-object v8, v2

    invoke-direct/range {v0 .. v8}, Lcom/googlecode/javacv/ProjectiveTransformerCL;-><init>(Lcom/googlecode/javacv/JavaCVCL;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;[D[D)V

    .line 41
    return-void
.end method


# virtual methods
.method public getContext()Lcom/googlecode/javacv/JavaCVCL;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    return-object v0
.end method

.method protected prepareHomographies(Lcom/jogamp/opencl/CLBuffer;I[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V
    .locals 6
    .parameter "HBuffer"
    .parameter "pyramidLevel"
    .parameter "parameters"
    .parameter "inverses"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/Buffer;->rewind()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/FloatBuffer;

    .line 76
    .local v1, floatH:Ljava/nio/FloatBuffer;
    sget-object v4, Lcom/googlecode/javacv/ProjectiveTransformerCL;->H3x3:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 77
    .local v0, H:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_2

    .line 78
    aget-object v4, p3, v2

    check-cast v4, Lcom/googlecode/javacv/ProjectiveTransformer$Parameters;

    if-nez p4, :cond_0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p0, v0, p2, v4, v5}, Lcom/googlecode/javacv/ProjectiveTransformerCL;->prepareHomography(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;ILcom/googlecode/javacv/ProjectiveTransformer$Parameters;Z)V

    .line 80
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    const/16 v4, 0x9

    if-ge v3, v4, :cond_1

    .line 81
    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v1, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 78
    .end local v3           #j:I
    :cond_0
    aget-boolean v5, p4, v2

    goto :goto_1

    .line 77
    .restart local v3       #j:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v3           #j:I
    :cond_2
    invoke-virtual {v1}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    .line 85
    return-void
.end method

.method public transform(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[ZLcom/googlecode/javacv/ImageTransformerCL$InputData;Lcom/googlecode/javacv/ImageTransformerCL$OutputData;)V
    .locals 30
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
    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->HBuffer:Lcom/jogamp/opencl/CLBuffer;

    move-object/from16 v0, p9

    iget v5, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->pyramidLevel:I

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/googlecode/javacv/ProjectiveTransformerCL;->prepareHomographies(Lcom/jogamp/opencl/CLBuffer;I[Lcom/googlecode/javacv/ImageTransformer$Parameters;[Z)V

    .line 93
    const/4 v3, 0x0

    aget-object v3, p7, v3

    invoke-interface {v3}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->size()I

    move-result v24

    .line 94
    .local v24, dotSize:I
    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    move-object/from16 v0, p7

    array-length v0, v0

    move/from16 v27, v0

    .line 95
    .local v27, localSize:I
    :goto_0
    move-object/from16 v0, p9

    iget v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    move/from16 v0, v27

    invoke-static {v3, v0}, Lcom/googlecode/javacv/JavaCVCL;->alignCeil(II)I

    move-result v25

    .line 96
    .local v25, globalSize:I
    div-int v29, v25, v27

    .line 99
    .local v29, reduceSize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->getBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v26

    .line 100
    .local v26, inputBuffer:Lcom/jogamp/opencl/CLBuffer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p10

    move/from16 v1, v24

    move/from16 v2, v29

    invoke-virtual {v0, v3, v1, v2}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->getBuffer(Lcom/googlecode/javacv/JavaCVCL;II)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v28

    .line 102
    .local v28, outputBuffer:Lcom/jogamp/opencl/CLBuffer;
    new-instance v23, Lcom/jogamp/opencl/CLEventList;

    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v3}, Lcom/jogamp/opencl/CLEventList;-><init>(I)V

    .line 105
    .local v23, list:Lcom/jogamp/opencl/CLEventList;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->HBuffer:Lcom/jogamp/opencl/CLBuffer;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/googlecode/javacv/JavaCVCL;->writeBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V

    .line 106
    move-object/from16 v0, p9

    iget-boolean v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->autoWrite:Z

    if-eqz v3, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p9

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->writeBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 109
    :cond_0
    const/4 v4, 0x0

    .line 110
    .local v4, kernel:Lcom/jogamp/opencl/CLKernel;
    if-nez p2, :cond_7

    .line 111
    sget-boolean v3, Lcom/googlecode/javacv/ProjectiveTransformerCL;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 94
    .end local v4           #kernel:Lcom/jogamp/opencl/CLKernel;
    .end local v23           #list:Lcom/jogamp/opencl/CLEventList;
    .end local v25           #globalSize:I
    .end local v26           #inputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .end local v27           #localSize:I
    .end local v28           #outputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .end local v29           #reduceSize:I
    :cond_1
    move-object/from16 v0, p9

    iget v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    const/16 v5, 0x20

    if-le v3, v5, :cond_2

    const/16 v27, 0x40

    goto :goto_0

    :cond_2
    const/16 v27, 0x20

    goto :goto_0

    .line 112
    .restart local v4       #kernel:Lcom/jogamp/opencl/CLKernel;
    .restart local v23       #list:Lcom/jogamp/opencl/CLEventList;
    .restart local v25       #globalSize:I
    .restart local v26       #inputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .restart local v27       #localSize:I
    .restart local v28       #outputBuffer:Lcom/jogamp/opencl/CLBuffer;
    .restart local v29       #reduceSize:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->oneKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    if-nez p5, :cond_6

    .end local p4
    :goto_1
    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->HBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v3, v5}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    move-result-object v4

    .line 123
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

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

    move/from16 v0, v27

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

    .line 126
    const/4 v3, 0x1

    move/from16 v0, v29

    if-le v0, v3, :cond_4

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->reduceKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    .line 128
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->reduceKernel:Lcom/jogamp/opencl/CLKernel;

    const-wide/16 v7, 0x0

    move/from16 v0, v29

    int-to-long v9, v0

    move/from16 v0, v29

    int-to-long v11, v0

    invoke-virtual/range {v5 .. v12}, Lcom/googlecode/javacv/JavaCVCL;->executeKernel(Lcom/jogamp/opencl/CLKernel;JJJ)V

    .line 130
    :cond_4
    move-object/from16 v0, p10

    iget-boolean v3, v0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->autoRead:Z

    if-eqz v3, :cond_5

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p10

    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->readBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 140
    :cond_5
    return-void

    .restart local p4
    :cond_6
    move-object/from16 p4, p5

    .line 112
    goto/16 :goto_1

    .line 114
    :cond_7
    if-nez p3, :cond_9

    .line 115
    sget-boolean v3, Lcom/googlecode/javacv/ProjectiveTransformerCL;->$assertionsDisabled:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p7

    array-length v3, v0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_8

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 116
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->subKernel:Lcom/jogamp/opencl/CLKernel;

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

    iget-object v5, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->HBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v3, v5}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    move-result-object v4

    goto/16 :goto_2

    .line 119
    :cond_9
    sget-boolean v3, Lcom/googlecode/javacv/ProjectiveTransformerCL;->$assertionsDisabled:Z

    if-nez v3, :cond_a

    move-object/from16 v0, p7

    array-length v3, v0

    move/from16 v0, v24

    if-eq v3, v0, :cond_a

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 120
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->dotKernel:Lcom/jogamp/opencl/CLKernel;

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

    iget-object v5, v0, Lcom/googlecode/javacv/ProjectiveTransformerCL;->HBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v3, v5}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    move-result-object v4

    goto/16 :goto_2
.end method
