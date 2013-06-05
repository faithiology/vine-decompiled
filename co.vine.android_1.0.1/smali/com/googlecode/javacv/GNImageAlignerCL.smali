.class public Lcom/googlecode/javacv/GNImageAlignerCL;
.super Lcom/googlecode/javacv/GNImageAligner;
.source "GNImageAlignerCL.java"

# interfaces
.implements Lcom/googlecode/javacv/ImageAlignerCL;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Lcom/googlecode/javacv/JavaCVCL;

.field private imagesCL:[Lcom/jogamp/opencl/CLImage2d;

.field private inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

.field private maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

.field private maskfb:[I

.field private maskrb:[I

.field private outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

.field private residualCL:[Lcom/jogamp/opencl/CLImage2d;

.field private targetCL:[Lcom/jogamp/opencl/CLImage2d;

.field private templateCL:[Lcom/jogamp/opencl/CLImage2d;

.field private templateChanged:[Z

.field private transformedCL:[Lcom/jogamp/opencl/CLImage2d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/googlecode/javacv/GNImageAlignerCL;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/GNImageAlignerCL;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ImageTransformerCL;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/jogamp/opencl/CLImage2d;[DLcom/jogamp/opencl/CLImage2d;)V
    .locals 7
    .parameter "transformer"
    .parameter "initialParameters"
    .parameter "template0"
    .parameter "roiPts"
    .parameter "target0"

    .prologue
    .line 42
    new-instance v6, Lcom/googlecode/javacv/GNImageAligner$Settings;

    invoke-direct {v6}, Lcom/googlecode/javacv/GNImageAligner$Settings;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/javacv/GNImageAlignerCL;-><init>(Lcom/googlecode/javacv/ImageTransformerCL;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/jogamp/opencl/CLImage2d;[DLcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/GNImageAligner$Settings;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Lcom/googlecode/javacv/ImageTransformerCL;Lcom/googlecode/javacv/ImageTransformer$Parameters;Lcom/jogamp/opencl/CLImage2d;[DLcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/GNImageAligner$Settings;)V
    .locals 14
    .parameter "transformer"
    .parameter "initialParameters"
    .parameter "template0"
    .parameter "roiPts"
    .parameter "target0"
    .parameter "settings"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p2}, Lcom/googlecode/javacv/GNImageAligner;-><init>(Lcom/googlecode/javacv/ImageTransformer;Lcom/googlecode/javacv/ImageTransformer$Parameters;)V

    .line 138
    const/4 v10, 0x5

    new-array v10, v10, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 47
    move-object/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->setSettings(Lcom/googlecode/javacv/ImageAligner$Settings;)V

    .line 48
    invoke-interface {p1}, Lcom/googlecode/javacv/ImageTransformerCL;->getContext()Lcom/googlecode/javacv/JavaCVCL;

    move-result-object v10

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    .line 50
    move-object/from16 v0, p6

    iget v8, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    .line 51
    .local v8, minLevel:I
    move-object/from16 v0, p6

    iget v7, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    .line 53
    .local v7, maxLevel:I
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 54
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 55
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 56
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 57
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 59
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 60
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 61
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 62
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/jogamp/opencl/CLImage2d;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 63
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Lcom/jogamp/opencl/gl/CLGLImage2d;

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    .line 64
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    .line 65
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    .line 66
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    iget v9, v0, Lcom/jogamp/opencl/CLImage2d;->width:I

    .line 67
    .local v9, w:I
    :goto_0
    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    iget v5, v0, Lcom/jogamp/opencl/CLImage2d;->height:I

    .line 68
    .local v5, h:I
    :goto_1
    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v10}, Lcom/googlecode/javacv/JavaCVCL;->getCLGLContext()Lcom/jogamp/opencl/gl/CLGLContext;

    move-result-object v2

    .line 71
    .local v2, c:Lcom/jogamp/opencl/gl/CLGLContext;
    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v10}, Lcom/googlecode/javacv/JavaCVCL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v4

    .line 72
    .local v4, gl:Ljavax/media/opengl/GL2;
    add-int/lit8 v10, v7, 0x1

    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    const/4 v12, 0x0

    invoke-interface {v4, v10, v11, v12}, Ljavax/media/opengl/GL2;->glGenRenderbuffers(I[II)V

    .line 73
    add-int/lit8 v10, v7, 0x1

    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    const/4 v12, 0x0

    invoke-interface {v4, v10, v11, v12}, Ljavax/media/opengl/GL2;->glGenFramebuffers(I[II)V

    .line 74
    new-instance v3, Lcom/jogamp/opencl/CLImageFormat;

    sget-object v10, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->RGBA:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    sget-object v11, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->FLOAT:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    invoke-direct {v3, v10, v11}, Lcom/jogamp/opencl/CLImageFormat;-><init>(Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;Lcom/jogamp/opencl/CLImageFormat$ChannelType;)V

    .line 75
    .local v3, f:Lcom/jogamp/opencl/CLImageFormat;
    move v6, v8

    .local v6, i:I
    :goto_2
    if-gt v6, v7, :cond_5

    .line 76
    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    if-ne v6, v8, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v10, p3

    :goto_3
    aput-object v10, v11, v6

    .line 77
    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    if-ne v6, v8, :cond_3

    if-eqz p5, :cond_3

    move-object/from16 v10, p5

    :goto_4
    aput-object v10, v11, v6

    .line 78
    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v2, v9, v5, v3, v11}, Lcom/jogamp/opencl/gl/CLGLContext;->createImage2d(IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v11

    aput-object v11, v10, v6

    .line 79
    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v11, 0x0

    new-array v11, v11, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v2, v9, v5, v3, v11}, Lcom/jogamp/opencl/gl/CLGLContext;->createImage2d(IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v11

    aput-object v11, v10, v6

    .line 80
    const v10, 0x8d41

    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    aget v11, v11, v6

    invoke-interface {v4, v10, v11}, Ljavax/media/opengl/GL2;->glBindRenderbuffer(II)V

    .line 81
    const v10, 0x8d40

    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    aget v11, v11, v6

    invoke-interface {v4, v10, v11}, Ljavax/media/opengl/GL2;->glBindFramebuffer(II)V

    .line 82
    const v10, 0x8d41

    const v11, 0x8040

    invoke-interface {v4, v10, v11, v9, v5}, Ljavax/media/opengl/GL2;->glRenderbufferStorage(IIII)V

    .line 83
    const v10, 0x8d40

    const v11, 0x8ce0

    const v12, 0x8d41

    iget-object v13, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    aget v13, v13, v6

    invoke-interface {v4, v10, v11, v12, v13}, Ljavax/media/opengl/GL2;->glFramebufferRenderbuffer(IIII)V

    .line 84
    sget-boolean v10, Lcom/googlecode/javacv/GNImageAlignerCL;->$assertionsDisabled:Z

    if-nez v10, :cond_4

    const v10, 0x8d40

    invoke-interface {v4, v10}, Ljavax/media/opengl/GL2;->glCheckFramebufferStatus(I)I

    move-result v10

    const v11, 0x8cd5

    if-eq v10, v11, :cond_4

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    .line 66
    .end local v2           #c:Lcom/jogamp/opencl/gl/CLGLContext;
    .end local v3           #f:Lcom/jogamp/opencl/CLImageFormat;
    .end local v4           #gl:Ljavax/media/opengl/GL2;
    .end local v5           #h:I
    .end local v6           #i:I
    .end local v9           #w:I
    :cond_0
    move-object/from16 v0, p5

    iget v9, v0, Lcom/jogamp/opencl/CLImage2d;->width:I

    goto/16 :goto_0

    .line 67
    .restart local v9       #w:I
    :cond_1
    move-object/from16 v0, p5

    iget v5, v0, Lcom/jogamp/opencl/CLImage2d;->height:I

    goto/16 :goto_1

    .line 76
    .restart local v2       #c:Lcom/jogamp/opencl/gl/CLGLContext;
    .restart local v3       #f:Lcom/jogamp/opencl/CLImageFormat;
    .restart local v4       #gl:Ljavax/media/opengl/GL2;
    .restart local v5       #h:I
    .restart local v6       #i:I
    :cond_2
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v2, v9, v5, v3, v10}, Lcom/jogamp/opencl/gl/CLGLContext;->createImage2d(IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v10

    goto :goto_3

    .line 77
    :cond_3
    const/4 v10, 0x0

    new-array v10, v10, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v2, v9, v5, v3, v10}, Lcom/jogamp/opencl/gl/CLGLContext;->createImage2d(IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v10

    goto :goto_4

    .line 85
    :cond_4
    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget-object v11, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    aget v11, v11, v6

    const/4 v12, 0x0

    new-array v12, v12, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v2, v11, v12}, Lcom/jogamp/opencl/gl/CLGLContext;->createFromGLRenderbuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/gl/CLGLImage2d;

    move-result-object v11

    aput-object v11, v10, v6

    .line 86
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    aget-object v12, v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/jogamp/opencl/gl/CLGLImage2d;->getElementSize()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    aget-object v12, v12, v6

    invoke-virtual {v12}, Lcom/jogamp/opencl/gl/CLGLImage2d;->getFormat()Lcom/jogamp/opencl/CLImageFormat;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    div-int/lit8 v9, v9, 0x2

    .line 88
    div-int/lit8 v5, v5, 0x2

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 92
    :cond_5
    new-instance v10, Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    invoke-direct {v10}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;-><init>()V

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    .line 93
    new-instance v10, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;-><init>(Z)V

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    .line 94
    add-int/lit8 v10, v7, 0x1

    new-array v10, v10, [Z

    iput-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateChanged:[Z

    .line 95
    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateChanged:[Z

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([ZZ)V

    .line 97
    move-object/from16 v0, p6

    iget-boolean v10, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->constrained:Z

    invoke-virtual {p0, v10}, Lcom/googlecode/javacv/GNImageAlignerCL;->setConstrained(Z)V

    .line 98
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacv/GNImageAlignerCL;->setTemplateImageCL(Lcom/jogamp/opencl/CLImage2d;[D)V

    .line 99
    move-object/from16 v0, p5

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->setTargetImageCL(Lcom/jogamp/opencl/CLImage2d;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected doHessianGradient([D)V
    .locals 22
    .parameter "scale"

    .prologue
    .line 321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v2}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getConstraintError()D

    move-result-wide v7

    .line 322
    .local v7, constraintError:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-wide v4, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->stepSize:D

    .line 324
    .local v4, stepSize:D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 327
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->n:I

    new-instance v2, Lcom/googlecode/javacv/GNImageAlignerCL$1;

    move-object/from16 v3, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v8}, Lcom/googlecode/javacv/GNImageAlignerCL$1;-><init>(Lcom/googlecode/javacv/GNImageAlignerCL;D[DD)V

    invoke-static {v9, v10, v2}, Lcom/googlecode/javacv/Parallel;->loop(IILcom/googlecode/javacv/Parallel$Looper;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v6, v6, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget-wide v9, v3, v6

    iput-wide v9, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v3, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v6, v6, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    aget-wide v9, v3, v6

    iput-wide v9, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsMulRMSE:Z

    if-eqz v2, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-wide v9, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->RMSE:D

    mul-double/2addr v9, v11

    iput-wide v9, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-wide v9, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->RMSE:D

    mul-double/2addr v9, v11

    iput-wide v9, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    .line 343
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iput v3, v2, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->pyramidLevel:I

    .line 344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/JavaCVCL;->acquireGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    check-cast v9, Lcom/googlecode/javacv/ImageTransformerCL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v12, v2, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v15, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->tempParameters:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    move-object/from16 v19, v0

    invoke-interface/range {v9 .. v19}, Lcom/googlecode/javacv/ImageTransformerCL;->transform(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[ZLcom/googlecode/javacv/ImageTransformerCL$InputData;Lcom/googlecode/javacv/ImageTransformerCL$OutputData;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/JavaCVCL;->releaseGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 350
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->updateScale:[D

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/GNImageAlignerCL;->doRegularization([D)V

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->readBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 353
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->n:I

    move/from16 v0, v20

    if-ge v0, v2, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->gradient:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(I)D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->srcDstDot:Ljava/nio/FloatBuffer;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    float-to-double v11, v3

    sub-double/2addr v9, v11

    move/from16 v0, v20

    invoke-virtual {v2, v0, v9, v10}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(ID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 355
    const/16 v21, 0x0

    .local v21, j:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->n:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_1

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->hessian:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get(II)D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget-object v3, v3, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstDstDot:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/googlecode/javacv/GNImageAlignerCL;->n:I

    mul-int v6, v6, v20

    add-int v6, v6, v21

    invoke-virtual {v3, v6}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v3

    float-to-double v11, v3

    add-double/2addr v9, v11

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v9, v10}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put(IID)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 355
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 353
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 359
    .end local v21           #j:I
    :cond_2
    return-void
.end method

.method protected doResidual()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    const/4 v14, 0x0

    .line 406
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v0}, Lcom/googlecode/javacv/ImageTransformer$Parameters;->getConstraintError()D

    .line 410
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsZero:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    .line 411
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-object v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsOutlier:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iget v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget-wide v1, v1, v2

    iput-wide v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    .line 412
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget-boolean v0, v0, Lcom/googlecode/javacv/GNImageAligner$Settings;->thresholdsMulRMSE:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-wide v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    iget-wide v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->RMSE:D

    mul-double/2addr v1, v4

    iput-wide v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    .line 414
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-wide v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    iget-wide v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->RMSE:D

    mul-double/2addr v1, v4

    iput-wide v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iput v1, v0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->pyramidLevel:I

    .line 417
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/JavaCVCL;->acquireGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 418
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    check-cast v0, Lcom/googlecode/javacv/ImageTransformerCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v7, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->parametersArray:[Lcom/googlecode/javacv/ImageTransformer$Parameters;

    iget-object v9, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v10, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    move-object v8, v3

    invoke-interface/range {v0 .. v10}, Lcom/googlecode/javacv/ImageTransformerCL;->transform(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;[Lcom/googlecode/javacv/ImageTransformer$Parameters;[ZLcom/googlecode/javacv/ImageTransformerCL$InputData;Lcom/googlecode/javacv/ImageTransformerCL$OutputData;)V

    .line 421
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/JavaCVCL;->releaseGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 423
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->readBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 424
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget-object v0, v0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstDstDot:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v14}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    float-to-double v12, v0

    .line 425
    .local v12, dstDstDot:D
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget v11, v0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCount:I

    .line 426
    .local v11, dstCount:I
    iget v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->n:I

    if-ge v11, v0, :cond_1

    const-wide/high16 v0, 0x7ff8

    :goto_0
    iput-wide v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->RMSE:D

    .line 430
    iput-boolean v14, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualUpdateNeeded:Z

    .line 431
    return-void

    .line 426
    :cond_1
    int-to-double v0, v11

    div-double v0, v12, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method protected doRoi()V
    .locals 13

    .prologue
    const/4 v5, 0x1

    const/high16 v12, 0x3f80

    const-wide/high16 v10, 0x3ff0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 362
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformer:Lcom/googlecode/javacv/ImageTransformer;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->parameters:Lcom/googlecode/javacv/ImageTransformer$Parameters;

    invoke-interface {v1, v2, v3, v4, v9}, Lcom/googlecode/javacv/ImageTransformer;->transform(Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/cpp/opencv_core$CvMat;Lcom/googlecode/javacv/ImageTransformer$Parameters;Z)V

    .line 363
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->dstRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->get()[D

    move-result-object v0

    .line 364
    .local v0, pts:[D
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v1, v0

    if-ge v7, v1, :cond_0

    .line 365
    aget-wide v1, v0, v7

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    shl-int v3, v5, v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    aput-wide v1, v0, v7

    .line 364
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v1, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jogamp/opencl/gl/CLGLImage2d;->width:I

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jogamp/opencl/gl/CLGLImage2d;->height:I

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 371
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    const/4 v2, 0x3

    const/4 v3, 0x3

    const/16 v4, 0x10

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/JavaCV;->boundingRect([DLcom/googlecode/javacv/cpp/opencv_core$CvRect;IIII)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    .line 373
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x()I

    move-result v2

    iput v2, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiX:I

    .line 374
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y()I

    move-result v2

    iput v2, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiY:I

    .line 375
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width()I

    move-result v2

    iput v2, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    .line 376
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height()I

    move-result v2

    iput v2, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiHeight:I

    .line 380
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v1}, Lcom/googlecode/javacv/JavaCVCL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v6

    .line 381
    .local v6, gl:Ljavax/media/opengl/GL2;
    const v1, 0x8d40

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget v2, v2, v3

    invoke-interface {v6, v1, v2}, Ljavax/media/opengl/GL2;->glBindFramebuffer(II)V

    .line 383
    const/16 v1, 0x1701

    invoke-interface {v6, v1}, Ljavax/media/opengl/GL2;->glMatrixMode(I)V

    .line 384
    invoke-interface {v6}, Ljavax/media/opengl/GL2;->glLoadIdentity()V

    .line 385
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v1}, Lcom/googlecode/javacv/JavaCVCL;->getGLU()Ljavax/media/opengl/glu/GLU;

    move-result-object v1

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jogamp/opencl/gl/CLGLImage2d;->width:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v3, v3, v4

    iget v3, v3, Lcom/jogamp/opencl/gl/CLGLImage2d;->height:I

    int-to-float v3, v3

    invoke-virtual {v1, v8, v2, v8, v3}, Ljavax/media/opengl/glu/GLU;->gluOrtho2D(FFFF)V

    .line 387
    const/16 v1, 0x1700

    invoke-interface {v6, v1}, Ljavax/media/opengl/GL2;->glMatrixMode(I)V

    .line 388
    invoke-interface {v6}, Ljavax/media/opengl/GL2;->glLoadIdentity()V

    .line 389
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v1, v1, v2

    iget v1, v1, Lcom/jogamp/opencl/gl/CLGLImage2d;->width:I

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    iget v2, v2, Lcom/jogamp/opencl/gl/CLGLImage2d;->height:I

    invoke-interface {v6, v9, v9, v1, v2}, Ljavax/media/opengl/GL2;->glViewport(IIII)V

    .line 391
    invoke-interface {v6, v8, v8, v8, v8}, Ljavax/media/opengl/GL2;->glClearColor(FFFF)V

    .line 392
    const/16 v1, 0x4000

    invoke-interface {v6, v1}, Ljavax/media/opengl/GL2;->glClear(I)V

    .line 393
    invoke-interface {v6, v12, v12, v12, v12}, Ljavax/media/opengl/GL2;->glColor4f(FFFF)V

    .line 394
    const/16 v1, 0x9

    invoke-interface {v6, v1}, Ljavax/media/opengl/GL2;->glBegin(I)V

    .line 396
    aget-wide v1, v0, v9

    aget-wide v3, v0, v5

    invoke-interface {v6, v1, v2, v3, v4}, Ljavax/media/opengl/GL2;->glVertex2d(DD)V

    .line 397
    const/4 v1, 0x2

    aget-wide v1, v0, v1

    add-double/2addr v1, v10

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    invoke-interface {v6, v1, v2, v3, v4}, Ljavax/media/opengl/GL2;->glVertex2d(DD)V

    .line 398
    const/4 v1, 0x4

    aget-wide v1, v0, v1

    add-double/2addr v1, v10

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    add-double/2addr v3, v10

    invoke-interface {v6, v1, v2, v3, v4}, Ljavax/media/opengl/GL2;->glVertex2d(DD)V

    .line 399
    const/4 v1, 0x6

    aget-wide v1, v0, v1

    const/4 v3, 0x7

    aget-wide v3, v0, v3

    add-double/2addr v3, v10

    invoke-interface {v6, v1, v2, v3, v4}, Ljavax/media/opengl/GL2;->glVertex2d(DD)V

    .line 400
    invoke-interface {v6}, Ljavax/media/opengl/GL2;->glEnd()V

    .line 403
    return-void
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->release()V

    .line 132
    return-void
.end method

.method public getImages()[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getImages(Z)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getImages(Z)[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 4
    .parameter "blocking"

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTemplateImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    aput-object v1, v0, v3

    .line 227
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x1

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTargetImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x2

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTransformedImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 229
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x3

    invoke-virtual {p0, v3}, Lcom/googlecode/javacv/GNImageAlignerCL;->getResidualImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 230
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/GNImageAlignerCL;->getMaskImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 231
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->images:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v0
.end method

.method public getImagesCL()[Lcom/jogamp/opencl/CLImage2d;
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 313
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 314
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 315
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 316
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v2, v2, v3

    aput-object v2, v0, v1

    .line 317
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->imagesCL:[Lcom/jogamp/opencl/CLImage2d;

    return-object v0
.end method

.method public getMaskImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getMaskImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getMaskImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "blocking"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/JavaCVCL;->acquireGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 189
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getMaskImageCL()Lcom/jogamp/opencl/CLImage2d;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, p1}, Lcom/googlecode/javacv/JavaCVCL;->readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    .line 190
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/JavaCVCL;->releaseGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 191
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->mask:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMaskImageCL()Lcom/jogamp/opencl/CLImage2d;
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOutlierCount()I
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget v0, v0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCountOutlier:I

    return v0
.end method

.method public getPixelCount()I
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doRoi()V

    .line 205
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doResidual()V

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->outputData:Lcom/googlecode/javacv/ImageTransformerCL$OutputData;

    iget v0, v0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCount:I

    return v0
.end method

.method public getRMSE()D
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doRoi()V

    .line 197
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doResidual()V

    .line 199
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->RMSE:D

    return-wide v0
.end method

.method public getResidualImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getResidualImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getResidualImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "blocking"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getResidualImageCL()Lcom/jogamp/opencl/CLImage2d;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residual:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, p1}, Lcom/googlecode/javacv/JavaCVCL;->readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v2
.end method

.method public getResidualImageCL()Lcom/jogamp/opencl/CLImage2d;
    .locals 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doRoi()V

    .line 303
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doResidual()V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRoi()Lcom/googlecode/javacv/cpp/opencv_core$CvRect;
    .locals 2

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doRoi()V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->roi:Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget v1, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiX:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->x(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget v1, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiY:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->y(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget v1, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->width(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->inputData:Lcom/googlecode/javacv/ImageTransformerCL$InputData;

    iget v1, v1, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiHeight:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$CvRect;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$CvRect;

    move-result-object v0

    return-object v0
.end method

.method public getTargetImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTargetImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getTargetImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "blocking"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTargetImageCL()Lcom/jogamp/opencl/CLImage2d;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->target:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, p1}, Lcom/googlecode/javacv/JavaCVCL;->readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v2
.end method

.method public getTargetImageCL()Lcom/jogamp/opencl/CLImage2d;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTemplateImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTemplateImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "blocking"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateChanged:[Z

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateChanged:[Z

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 149
    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTemplateImageCL()Lcom/jogamp/opencl/CLImage2d;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4, p1}, Lcom/googlecode/javacv/JavaCVCL;->readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    aput-object v0, v1, v2

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->template:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getTemplateImageCL()Lcom/jogamp/opencl/CLImage2d;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTransformedImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTransformedImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getTransformedImage(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "blocking"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->getTransformedImageCL()Lcom/jogamp/opencl/CLImage2d;

    move-result-object v3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformed:[Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v3, v4, p1}, Lcom/googlecode/javacv/JavaCVCL;->readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v2
.end method

.method public getTransformedImageCL()Lcom/jogamp/opencl/CLImage2d;
    .locals 2

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualUpdateNeeded:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doRoi()V

    .line 296
    invoke-virtual {p0}, Lcom/googlecode/javacv/GNImageAlignerCL;->doResidual()V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    iget v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->pyramidLevel:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public release()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 102
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v3, v4, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    .line 103
    .local v3, minLevel:I
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v2, v4, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    .line 105
    .local v2, maxLevel:I
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    if-eqz v4, :cond_3

    .line 107
    move v1, v3

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_2

    .line 108
    if-le v1, v3, :cond_0

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/jogamp/opencl/CLImage2d;->release()V

    .line 109
    :cond_0
    if-le v1, v3, :cond_1

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/jogamp/opencl/CLImage2d;->release()V

    .line 110
    :cond_1
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/jogamp/opencl/CLImage2d;->release()V

    .line 111
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/jogamp/opencl/CLImage2d;->release()V

    .line 112
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/jogamp/opencl/gl/CLGLImage2d;->release()V

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_2
    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskCL:[Lcom/jogamp/opencl/gl/CLGLImage2d;

    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->residualCL:[Lcom/jogamp/opencl/CLImage2d;

    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->transformedCL:[Lcom/jogamp/opencl/CLImage2d;

    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    .line 118
    .end local v1           #i:I
    :cond_3
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v4}, Lcom/googlecode/javacv/JavaCVCL;->getGLContext()Ljavax/media/opengl/GLContext;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/media/opengl/GLContext;->makeCurrent()I

    .line 119
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v4}, Lcom/googlecode/javacv/JavaCVCL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v0

    .line 120
    .local v0, gl:Ljavax/media/opengl/GL2;
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    if-eqz v4, :cond_4

    .line 121
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    invoke-interface {v0, v4, v5, v7}, Ljavax/media/opengl/GL2;->glDeleteFramebuffers(I[II)V

    .line 122
    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskfb:[I

    .line 124
    :cond_4
    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    if-eqz v4, :cond_5

    .line 125
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    invoke-interface {v0, v4, v5, v7}, Ljavax/media/opengl/GL2;->glDeleteRenderbuffers(I[II)V

    .line 126
    iput-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->maskrb:[I

    .line 128
    :cond_5
    return-void
.end method

.method public setTargetImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 3
    .parameter "target0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/googlecode/javacv/JavaCVCL;->writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;

    .line 167
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/GNImageAlignerCL;->setTargetImageCL(Lcom/jogamp/opencl/CLImage2d;)V

    .line 168
    return-void
.end method

.method public setTargetImageCL(Lcom/jogamp/opencl/CLImage2d;)V
    .locals 6
    .parameter "target0"

    .prologue
    .line 274
    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v2, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    .line 275
    .local v2, minLevel:I
    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v1, v3, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    .line 280
    .local v1, maxLevel:I
    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    aput-object p1, v3, v2

    .line 281
    add-int/lit8 v0, v2, 0x1

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_0

    .line 288
    iget-object v3, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v4, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->targetCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lcom/googlecode/javacv/JavaCVCL;->pyrDown(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0, v1}, Lcom/googlecode/javacv/GNImageAlignerCL;->setPyramidLevel(I)V

    .line 291
    return-void
.end method

.method public setTemplateImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[D)V
    .locals 3
    .parameter "template0"
    .parameter "roiPts"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    iget-object v2, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v2, v2, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/googlecode/javacv/JavaCVCL;->writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;

    .line 156
    iget-object v0, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    iget-object v1, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v1, v1, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0, p2}, Lcom/googlecode/javacv/GNImageAlignerCL;->setTemplateImageCL(Lcom/jogamp/opencl/CLImage2d;[D)V

    .line 157
    return-void
.end method

.method public setTemplateImageCL(Lcom/jogamp/opencl/CLImage2d;[D)V
    .locals 13
    .parameter "template0"
    .parameter "roiPts"

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    .line 238
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v3, v5, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMin:I

    .line 239
    .local v3, minLevel:I
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->settings:Lcom/googlecode/javacv/GNImageAligner$Settings;

    iget v2, v5, Lcom/googlecode/javacv/GNImageAligner$Settings;->pyramidLevelMax:I

    .line 241
    .local v2, maxLevel:I
    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    .line 242
    iget v5, p1, Lcom/jogamp/opencl/CLImage2d;->width:I

    shl-int v4, v5, v3

    .line 243
    .local v4, w:I
    iget v5, p1, Lcom/jogamp/opencl/CLImage2d;->height:I

    shl-int v0, v5, v3

    .line 244
    .local v0, h:I
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v6, 0x8

    new-array v6, v6, [D

    const/4 v7, 0x0

    aput-wide v10, v6, v7

    aput-wide v10, v6, v12

    const/4 v7, 0x2

    int-to-double v8, v4

    aput-wide v8, v6, v7

    const/4 v7, 0x3

    aput-wide v10, v6, v7

    const/4 v7, 0x4

    int-to-double v8, v4

    aput-wide v8, v6, v7

    const/4 v7, 0x5

    int-to-double v8, v0

    aput-wide v8, v6, v7

    const/4 v7, 0x6

    aput-wide v10, v6, v7

    const/4 v7, 0x7

    int-to-double v8, v0

    aput-wide v8, v6, v7

    invoke-virtual {v5, v6}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 249
    .end local v0           #h:I
    .end local v4           #w:I
    :goto_0
    if-nez p1, :cond_1

    .line 268
    :goto_1
    return-void

    .line 246
    :cond_0
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->srcRoiPts:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-virtual {v5, p2}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    goto :goto_0

    .line 256
    :cond_1
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    aput-object p1, v5, v3

    .line 257
    add-int/lit8 v1, v3, 0x1

    .local v1, i:I
    :goto_2
    if-gt v1, v2, :cond_2

    .line 264
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->context:Lcom/googlecode/javacv/JavaCVCL;

    iget-object v6, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    add-int/lit8 v7, v1, -0x1

    aget-object v6, v6, v7

    iget-object v7, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateCL:[Lcom/jogamp/opencl/CLImage2d;

    aget-object v7, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/googlecode/javacv/JavaCVCL;->pyrDown(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 266
    :cond_2
    invoke-virtual {p0, v2}, Lcom/googlecode/javacv/GNImageAlignerCL;->setPyramidLevel(I)V

    .line 267
    iget-object v5, p0, Lcom/googlecode/javacv/GNImageAlignerCL;->templateChanged:[Z

    invoke-static {v5, v12}, Ljava/util/Arrays;->fill([ZZ)V

    goto :goto_1
.end method
