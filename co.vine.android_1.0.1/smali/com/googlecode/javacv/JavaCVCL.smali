.class public Lcom/googlecode/javacv/JavaCVCL;
.super Ljava/lang/Object;
.source "JavaCVCL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/JavaCVCL$1;,
        Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final fastCompilerOptions:Ljava/lang/String; = "-cl-fast-relaxed-math -cl-mad-enable"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

.field private final context:Lcom/jogamp/opencl/CLContext;

.field private final glu:Ljavax/media/opengl/glu/GLU;

.field private final pbuffer:Ljavax/media/opengl/GLPbuffer;

.field private final pyrDownKernel:Lcom/jogamp/opencl/CLKernel;

.field private final remapBayerKernel:Lcom/jogamp/opencl/CLKernel;

.field private final remapKernel:Lcom/jogamp/opencl/CLKernel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-class v0, Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    .line 184
    const-class v0, Lcom/googlecode/javacv/JavaCVCL;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/googlecode/javacv/JavaCVCL;->logger:Ljava/util/logging/Logger;

    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/JavaCVCL;-><init>(Z)V

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/jogamp/opencl/CLContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/jogamp/opencl/CLContext;->getDevices()[Lcom/jogamp/opencl/CLDevice;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/googlecode/javacv/JavaCVCL;-><init>(Lcom/jogamp/opencl/CLContext;Lcom/jogamp/opencl/CLDevice;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/jogamp/opencl/CLContext;Lcom/jogamp/opencl/CLDevice;)V
    .locals 8
    .parameter "context"
    .parameter "device"

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v1, p0, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    .line 79
    iput-object p1, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    .line 80
    instance-of v2, p1, Lcom/jogamp/opencl/gl/CLGLContext;

    if-eqz v2, :cond_0

    new-instance v1, Ljavax/media/opengl/glu/GLU;

    invoke-direct {v1}, Ljavax/media/opengl/glu/GLU;-><init>()V

    :cond_0
    iput-object v1, p0, Lcom/googlecode/javacv/JavaCVCL;->glu:Ljavax/media/opengl/glu/GLU;

    .line 81
    invoke-virtual {p2}, Lcom/jogamp/opencl/CLDevice;->createCommandQueue()Lcom/jogamp/opencl/CLCommandQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    .line 82
    const-string v1, "-cl-fast-relaxed-math -cl-mad-enable"

    const-string v2, "JavaCV.cl"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "pyrDown"

    aput-object v4, v3, v5

    const-string v4, "remap"

    aput-object v4, v3, v6

    const-string v4, "remapBayer"

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v2, v3}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v0

    .line 83
    .local v0, kernels:[Lcom/jogamp/opencl/CLKernel;
    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/googlecode/javacv/JavaCVCL;->pyrDownKernel:Lcom/jogamp/opencl/CLKernel;

    .line 84
    aget-object v1, v0, v6

    iput-object v1, p0, Lcom/googlecode/javacv/JavaCVCL;->remapKernel:Lcom/jogamp/opencl/CLKernel;

    .line 85
    aget-object v1, v0, v7

    iput-object v1, p0, Lcom/googlecode/javacv/JavaCVCL;->remapBayerKernel:Lcom/jogamp/opencl/CLKernel;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;Lcom/jogamp/opencl/CLDevice;)V
    .locals 18
    .parameter "caps"
    .parameter "shareWith"
    .parameter "device"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/16 v17, 0x0

    .line 107
    .local v17, pbuffer:Ljavax/media/opengl/GLPbuffer;
    if-eqz p1, :cond_0

    .line 108
    invoke-interface/range {p1 .. p1}, Ljavax/media/opengl/GLCapabilitiesImmutable;->getGLProfile()Ljavax/media/opengl/GLProfile;

    move-result-object v3

    invoke-static {v3}, Ljavax/media/opengl/GLDrawableFactory;->getFactory(Ljavax/media/opengl/GLProfile;)Ljavax/media/opengl/GLDrawableFactory;

    move-result-object v2

    .line 109
    .local v2, factory:Ljavax/media/opengl/GLDrawableFactory;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/media/opengl/GLDrawableFactory;->canCreateGLPbuffer(Ljavax/media/nativewindow/AbstractGraphicsDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/16 v7, 0x20

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    :try_start_0
    invoke-virtual/range {v2 .. v8}, Ljavax/media/opengl/GLDrawableFactory;->createGLPbuffer(Ljavax/media/nativewindow/AbstractGraphicsDevice;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLCapabilitiesChooser;IILjavax/media/opengl/GLContext;)Ljavax/media/opengl/GLPbuffer;

    move-result-object v17

    .line 114
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljavax/media/opengl/GLPbuffer;->createContext(Ljavax/media/opengl/GLContext;)Ljavax/media/opengl/GLContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/media/opengl/GLContext;->makeCurrent()I
    :try_end_0
    .catch Ljavax/media/opengl/GLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2           #factory:Ljavax/media/opengl/GLDrawableFactory;
    :cond_0
    :goto_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    .line 124
    invoke-static {}, Ljavax/media/opengl/GLContext;->getCurrent()Ljavax/media/opengl/GLContext;

    move-result-object v13

    .line 125
    .local v13, glContext:Ljavax/media/opengl/GLContext;
    if-nez p3, :cond_1

    if-eqz v13, :cond_1

    .line 129
    invoke-static {}, Lcom/jogamp/opencl/CLPlatform;->getDefault()Lcom/jogamp/opencl/CLPlatform;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLPlatform;->listCLDevices()[Lcom/jogamp/opencl/CLDevice;

    move-result-object v11

    .line 130
    .local v11, devices:[Lcom/jogamp/opencl/CLDevice;
    move-object v9, v11

    .local v9, arr$:[Lcom/jogamp/opencl/CLDevice;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_1

    aget-object v10, v9, v14

    .line 131
    .local v10, d:Lcom/jogamp/opencl/CLDevice;
    invoke-virtual {v10}, Lcom/jogamp/opencl/CLDevice;->isGLMemorySharingSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 132
    move-object/from16 p3, v10

    .line 140
    .end local v9           #arr$:[Lcom/jogamp/opencl/CLDevice;
    .end local v10           #d:Lcom/jogamp/opencl/CLDevice;
    .end local v11           #devices:[Lcom/jogamp/opencl/CLDevice;
    .end local v14           #i$:I
    .end local v16           #len$:I
    :cond_1
    if-eqz v13, :cond_4

    if-eqz p3, :cond_4

    .line 143
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/jogamp/opencl/CLDevice;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v13, v3}, Lcom/jogamp/opencl/gl/CLGLContext;->create(Ljavax/media/opengl/GLContext;[Lcom/jogamp/opencl/CLDevice;)Lcom/jogamp/opencl/gl/CLGLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    .line 144
    invoke-static {}, Ljavax/media/opengl/glu/GLU;->createGLU()Ljavax/media/opengl/glu/GLU;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->glu:Ljavax/media/opengl/glu/GLU;

    .line 157
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/jogamp/opencl/CLDevice;->createCommandQueue()Lcom/jogamp/opencl/CLCommandQueue;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    .line 159
    const-string v3, "-cl-fast-relaxed-math -cl-mad-enable"

    const-string v4, "JavaCV.cl"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "pyrDown"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "remap"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string v7, "remapBayer"

    aput-object v7, v5, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v15

    .line 160
    .local v15, kernels:[Lcom/jogamp/opencl/CLKernel;
    const/4 v3, 0x0

    aget-object v3, v15, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->pyrDownKernel:Lcom/jogamp/opencl/CLKernel;

    .line 161
    const/4 v3, 0x1

    aget-object v3, v15, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->remapKernel:Lcom/jogamp/opencl/CLKernel;

    .line 162
    const/4 v3, 0x2

    aget-object v3, v15, v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->remapBayerKernel:Lcom/jogamp/opencl/CLKernel;

    .line 163
    return-void

    .line 115
    .end local v13           #glContext:Ljavax/media/opengl/GLContext;
    .end local v15           #kernels:[Lcom/jogamp/opencl/CLKernel;
    .restart local v2       #factory:Ljavax/media/opengl/GLDrawableFactory;
    :catch_0
    move-exception v12

    .line 116
    .local v12, e:Ljavax/media/opengl/GLException;
    sget-object v3, Lcom/googlecode/javacv/JavaCVCL;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not create PBuffer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    .end local v12           #e:Ljavax/media/opengl/GLException;
    :cond_2
    sget-object v3, Lcom/googlecode/javacv/JavaCVCL;->logger:Ljava/util/logging/Logger;

    const-string v4, "OpenGL implementation does not support PBuffers."

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    .end local v2           #factory:Ljavax/media/opengl/GLDrawableFactory;
    .restart local v9       #arr$:[Lcom/jogamp/opencl/CLDevice;
    .restart local v10       #d:Lcom/jogamp/opencl/CLDevice;
    .restart local v11       #devices:[Lcom/jogamp/opencl/CLDevice;
    .restart local v13       #glContext:Ljavax/media/opengl/GLContext;
    .restart local v14       #i$:I
    .restart local v16       #len$:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 145
    .end local v9           #arr$:[Lcom/jogamp/opencl/CLDevice;
    .end local v10           #d:Lcom/jogamp/opencl/CLDevice;
    .end local v11           #devices:[Lcom/jogamp/opencl/CLDevice;
    .end local v14           #i$:I
    .end local v16           #len$:I
    :cond_4
    if-eqz p3, :cond_5

    .line 146
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/jogamp/opencl/CLDevice;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v3}, Lcom/jogamp/opencl/CLContext;->create([Lcom/jogamp/opencl/CLDevice;)Lcom/jogamp/opencl/CLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    .line 147
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->glu:Ljavax/media/opengl/glu/GLU;

    goto :goto_2

    .line 151
    :cond_5
    invoke-static {}, Lcom/jogamp/opencl/CLContext;->create()Lcom/jogamp/opencl/CLContext;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    invoke-virtual {v3}, Lcom/jogamp/opencl/CLContext;->getDevices()[Lcom/jogamp/opencl/CLDevice;

    move-result-object v3

    const/4 v4, 0x0

    aget-object p3, v3, v4

    .line 153
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/googlecode/javacv/JavaCVCL;->glu:Ljavax/media/opengl/glu/GLU;

    goto/16 :goto_2
.end method

.method public constructor <init>(Ljavax/media/opengl/GLContext;)V
    .locals 2
    .parameter "shareWith"

    .prologue
    const/4 v1, 0x0

    .line 102
    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/googlecode/javacv/JavaCVCL;->getDefaultGLCapabilities(Ljavax/media/opengl/GLProfile;)Ljavax/media/opengl/GLCapabilities;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/googlecode/javacv/JavaCVCL;-><init>(Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;Lcom/jogamp/opencl/CLDevice;)V

    .line 104
    return-void

    .line 102
    :cond_0
    invoke-virtual {p1}, Ljavax/media/opengl/GLContext;->getGLDrawable()Ljavax/media/opengl/GLDrawable;

    move-result-object v0

    invoke-interface {v0}, Ljavax/media/opengl/GLDrawable;->getGLProfile()Ljavax/media/opengl/GLProfile;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "createPbuffer"

    .prologue
    const/4 v1, 0x0

    .line 99
    if-eqz p1, :cond_0

    invoke-static {v1}, Lcom/googlecode/javacv/JavaCVCL;->getDefaultGLCapabilities(Ljavax/media/opengl/GLProfile;)Ljavax/media/opengl/GLCapabilities;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, v1, v1}, Lcom/googlecode/javacv/JavaCVCL;-><init>(Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;Lcom/jogamp/opencl/CLDevice;)V

    .line 100
    return-void

    :cond_0
    move-object v0, v1

    .line 99
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLCommandQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    return-object v0
.end method

.method public static alignCeil(II)I
    .locals 1
    .parameter "x"
    .parameter "n"

    .prologue
    .line 609
    add-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method public static alignFloor(II)I
    .locals 1
    .parameter "x"
    .parameter "n"

    .prologue
    .line 612
    div-int v0, p0, p1

    mul-int/2addr v0, p1

    return v0
.end method

.method public static getDefaultGLCapabilities(Ljavax/media/opengl/GLProfile;)Ljavax/media/opengl/GLCapabilities;
    .locals 2
    .parameter "profile"

    .prologue
    .line 89
    new-instance v0, Ljavax/media/opengl/GLCapabilities;

    if-eqz p0, :cond_0

    .end local p0
    :goto_0
    invoke-direct {v0, p0}, Ljavax/media/opengl/GLCapabilities;-><init>(Ljavax/media/opengl/GLProfile;)V

    .line 91
    .local v0, caps:Ljavax/media/opengl/GLCapabilities;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/media/opengl/GLCapabilities;->setDoubleBuffered(Z)V

    .line 92
    return-object v0

    .line 89
    .end local v0           #caps:Ljavax/media/opengl/GLCapabilities;
    .restart local p0
    :cond_0
    invoke-static {}, Ljavax/media/opengl/GLProfile;->getDefault()Ljavax/media/opengl/GLProfile;

    move-result-object p0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 27
    .parameter "args"

    .prologue
    .line 648
    new-instance v11, Lcom/googlecode/javacv/JavaCVCL;

    invoke-direct {v11}, Lcom/googlecode/javacv/JavaCVCL;-><init>()V

    .line 650
    .local v11, context:Lcom/googlecode/javacv/JavaCVCL;
    invoke-virtual {v11}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v7, v8}, Lcom/jogamp/opencl/CLContext;->getSupportedImage2dFormats([Lcom/jogamp/opencl/CLMemory$Mem;)[Lcom/jogamp/opencl/CLImageFormat;

    move-result-object v15

    .line 651
    .local v15, formats:[Lcom/jogamp/opencl/CLImageFormat;
    move-object v9, v15

    .local v9, arr$:[Lcom/jogamp/opencl/CLImageFormat;
    array-length v0, v9

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v13, v9, v16

    .line 652
    .local v13, f:Lcom/jogamp/opencl/CLImageFormat;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v13}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 651
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 655
    .end local v13           #f:Lcom/jogamp/opencl/CLImageFormat;
    :cond_0
    new-instance v10, Lcom/googlecode/javacv/CameraDevice;

    const-string v7, "Camera"

    invoke-direct {v10, v7}, Lcom/googlecode/javacv/CameraDevice;-><init>(Ljava/lang/String;)V

    .line 656
    .local v10, camera:Lcom/googlecode/javacv/CameraDevice;
    const/16 v7, 0x500

    iput v7, v10, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    .line 657
    const/16 v7, 0x3c0

    iput v7, v10, Lcom/googlecode/javacv/CameraDevice;->imageHeight:I

    .line 658
    const/4 v7, 0x3

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    iput-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 659
    iget v7, v10, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    int-to-double v7, v7

    const-wide/high16 v23, 0x4004

    mul-double v13, v7, v23

    .line 660
    .local v13, f:D
    iget-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->cameraMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/16 v8, 0x9

    new-array v8, v8, [D

    const/16 v23, 0x0

    aput-wide v13, v8, v23

    const/16 v23, 0x1

    const-wide/16 v24, 0x0

    aput-wide v24, v8, v23

    const/16 v23, 0x2

    iget v0, v10, Lcom/googlecode/javacv/CameraDevice;->imageWidth:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v8, v23

    const/16 v23, 0x3

    const-wide/16 v24, 0x0

    aput-wide v24, v8, v23

    const/16 v23, 0x4

    aput-wide v13, v8, v23

    const/16 v23, 0x5

    iget v0, v10, Lcom/googlecode/javacv/CameraDevice;->imageHeight:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    aput-wide v24, v8, v23

    const/16 v23, 0x6

    const-wide/16 v24, 0x0

    aput-wide v24, v8, v23

    const/16 v23, 0x7

    const-wide/16 v24, 0x0

    aput-wide v24, v8, v23

    const/16 v23, 0x8

    const-wide/high16 v24, 0x3ff0

    aput-wide v24, v8, v23

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 663
    const/4 v7, 0x3

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    iput-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 664
    iget-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->R:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 665
    const/4 v7, 0x3

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    iput-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 666
    iget-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->T:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 667
    const/4 v7, 0x1

    const/4 v8, 0x4

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    iput-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 668
    iget-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetZero(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 669
    iget-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->distortionCoeffs:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    const/4 v8, 0x1

    new-array v8, v8, [D

    const/16 v23, 0x0

    const-wide v24, 0x3fc999999999999aL

    aput-wide v24, v8, v23

    invoke-virtual {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->put([D)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 670
    const/4 v7, 0x3

    const/4 v8, 0x3

    invoke-static {v7, v8}, Lcom/googlecode/javacv/cpp/opencv_core$CvMat;->create(II)Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    move-result-object v7

    iput-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    .line 671
    iget-object v7, v10, Lcom/googlecode/javacv/CameraDevice;->colorMixingMatrix:Lcom/googlecode/javacv/cpp/opencv_core$CvMat;

    invoke-static {v7}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetIdentity(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)V

    .line 673
    const/4 v7, 0x0

    aget-object v7, p0, v7

    invoke-static {v7}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImageRGBA(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    .line 675
    .local v3, srcImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    const/16 v23, 0x8

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v7, v8, v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v4

    .line 676
    .local v4, downDst:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    const/4 v7, 0x0

    invoke-virtual {v10, v7}, Lcom/googlecode/javacv/CameraDevice;->setFixedPointMaps(Z)V

    .line 677
    const/4 v7, 0x1

    invoke-virtual {v10, v7}, Lcom/googlecode/javacv/CameraDevice;->setMapsPyramidLevel(I)V

    .line 678
    invoke-virtual {v10}, Lcom/googlecode/javacv/CameraDevice;->getUndistortMap1()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    .line 679
    .local v5, mapxImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-virtual {v10}, Lcom/googlecode/javacv/CameraDevice;->getUndistortMap2()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    .line 680
    .local v6, mapyImg:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v21

    .line 681
    .local v21, start:J
    const/16 v7, 0x9

    sget-object v8, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->ZERO:Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;

    invoke-static/range {v3 .. v8}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvRemap(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;ILcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V

    .line 682
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "cvRemap: "

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v23

    sub-long v23, v23, v21

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x412e848000000000L

    div-double v23, v23, v25

    move-wide/from16 v0, v23

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 683
    const-string v7, "/tmp/opencv.png"

    invoke-static {v7, v4}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSaveImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)I

    .line 685
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v11, v3, v7}, Lcom/googlecode/javacv/JavaCVCL;->createCLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v20

    .line 687
    .local v20, src:Lcom/jogamp/opencl/CLImage2d;
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v11, v4, v7}, Lcom/googlecode/javacv/JavaCVCL;->createCLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v12

    .line 689
    .local v12, dst:Lcom/jogamp/opencl/CLImage2d;
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v11, v5, v7}, Lcom/googlecode/javacv/JavaCVCL;->createCLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v18

    .line 690
    .local v18, mapx:Lcom/jogamp/opencl/CLImage2d;
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v11, v6, v7}, Lcom/googlecode/javacv/JavaCVCL;->createCLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v19

    .line 691
    .local v19, mapy:Lcom/jogamp/opencl/CLImage2d;
    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0, v3, v7}, Lcom/googlecode/javacv/JavaCVCL;->writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;

    .line 692
    const/4 v7, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0, v5, v7}, Lcom/googlecode/javacv/JavaCVCL;->writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;

    .line 693
    const/4 v7, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v11, v0, v6, v7}, Lcom/googlecode/javacv/JavaCVCL;->writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;

    .line 696
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v11, v0, v12, v1, v2}, Lcom/googlecode/javacv/JavaCVCL;->remap(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V

    .line 697
    const/4 v7, 0x1

    invoke-virtual {v11, v12, v4, v7}, Lcom/googlecode/javacv/JavaCVCL;->readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 699
    const-string v7, "/tmp/javacvcl.png"

    invoke-static {v7, v4}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSaveImage(Ljava/lang/String;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;)I

    .line 701
    invoke-virtual {v11}, Lcom/googlecode/javacv/JavaCVCL;->release()V

    .line 702
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 703
    return-void
.end method


# virtual methods
.method public acquireGLObject(Lcom/jogamp/opencl/CLObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 509
    instance-of v0, p1, Lcom/jogamp/opencl/gl/CLGLObject;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    check-cast p1, Lcom/jogamp/opencl/gl/CLGLObject;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/jogamp/opencl/CLCommandQueue;->putAcquireGLObject(Lcom/jogamp/opencl/gl/CLGLObject;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 512
    :cond_0
    return-void
.end method

.method public buildKernel(Ljava/lang/String;Ljava/lang/String;)Lcom/jogamp/opencl/CLKernel;
    .locals 4
    .parameter "resourceNames"
    .parameter "kernelName"

    .prologue
    const/4 v3, 0x0

    .line 223
    const-string v0, "-cl-fast-relaxed-math -cl-mad-enable"

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v0

    aget-object v0, v0, v3

    return-object v0
.end method

.method public buildKernel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/jogamp/opencl/CLKernel;
    .locals 3
    .parameter "compilerOptions"
    .parameter "resourceNames"
    .parameter "kernelName"

    .prologue
    const/4 v2, 0x0

    .line 226
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p3, v1, v2

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v0

    aget-object v0, v0, v2

    return-object v0
.end method

.method public varargs buildKernels(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;
    .locals 14
    .parameter "compilerOptions"
    .parameter "resourceClass"
    .parameter "resourceNames"
    .parameter "kernelNames"

    .prologue
    .line 236
    :try_start_0
    const-string v12, ":"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, a:[Ljava/lang/String;
    array-length v12, v1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 238
    const/4 v12, 0x0

    aget-object v12, v1, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 246
    .local v10, s:Ljava/io/InputStream;
    :goto_0
    iget-object v12, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    invoke-virtual {v12, v10}, Lcom/jogamp/opencl/CLContext;->createProgram(Ljava/io/InputStream;)Lcom/jogamp/opencl/CLProgram;

    move-result-object v9

    .line 248
    .local v9, program:Lcom/jogamp/opencl/CLProgram;
    invoke-virtual {v9, p1}, Lcom/jogamp/opencl/CLProgram;->build(Ljava/lang/String;)Lcom/jogamp/opencl/CLProgram;

    .line 250
    sget-boolean v12, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v12, :cond_2

    invoke-virtual {v9}, Lcom/jogamp/opencl/CLProgram;->isExecutable()Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/lang/AssertionError;

    invoke-direct {v12}, Ljava/lang/AssertionError;-><init>()V

    throw v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1           #a:[Ljava/lang/String;
    .end local v9           #program:Lcom/jogamp/opencl/CLProgram;
    .end local v10           #s:Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 259
    .local v3, ex:Ljava/io/IOException;
    new-instance v12, Ljava/lang/LinkageError;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/LinkageError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/LinkageError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v12

    check-cast v12, Ljava/lang/Error;

    throw v12

    .line 240
    .end local v3           #ex:Ljava/io/IOException;
    .restart local v1       #a:[Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v11, Ljava/util/Vector;

    array-length v12, v1

    invoke-direct {v11, v12}, Ljava/util/Vector;-><init>(I)V

    .line 241
    .local v11, vs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/InputStream;>;"
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v8, v2, v5

    .line 242
    .local v8, name:Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 244
    .end local v8           #name:Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/io/SequenceInputStream;

    invoke-virtual {v11}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    .restart local v10       #s:Ljava/io/InputStream;
    goto :goto_0

    .line 253
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v7           #len$:I
    .end local v11           #vs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/io/InputStream;>;"
    .restart local v9       #program:Lcom/jogamp/opencl/CLProgram;
    :cond_2
    move-object/from16 v0, p4

    array-length v12, v0

    new-array v6, v12, [Lcom/jogamp/opencl/CLKernel;

    .line 254
    .local v6, kernels:[Lcom/jogamp/opencl/CLKernel;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move-object/from16 v0, p4

    array-length v12, v0

    if-ge v4, v12, :cond_3

    .line 255
    aget-object v12, p4, v4

    invoke-virtual {v9, v12}, Lcom/jogamp/opencl/CLProgram;->createCLKernel(Ljava/lang/String;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v12

    aput-object v12, v6, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 257
    :cond_3
    return-object v6
.end method

.method public varargs buildKernels(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;
    .locals 1
    .parameter "compilerOptions"
    .parameter "resourceNames"
    .parameter "kernelNames"

    .prologue
    .line 230
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/googlecode/javacpp/Loader;->getCallerClass(I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/googlecode/javacv/JavaCVCL;->buildKernels(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)[Lcom/jogamp/opencl/CLKernel;

    move-result-object v0

    return-object v0
.end method

.method public varargs createCLGLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/gl/CLGLImage2d;
    .locals 11
    .parameter "image"
    .parameter "flags"

    .prologue
    const v10, 0x8d41

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v1

    .line 297
    .local v1, gl:Ljavax/media/opengl/GL2;
    if-nez v1, :cond_0

    .line 298
    const/4 v7, 0x0

    .line 362
    :goto_0
    return-object v7

    .line 301
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v6

    .line 302
    .local v6, width:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v2

    .line 303
    .local v2, height:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v3

    .line 305
    .local v3, pitch:I
    const/4 v0, 0x0

    .line 306
    .local v0, format:I
    const/4 v5, 0x0

    .line 307
    .local v5, size:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 352
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 309
    :pswitch_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 316
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 310
    :sswitch_0
    const v0, 0x9015

    const/4 v5, 0x1

    .line 355
    :cond_1
    :goto_1
    div-int v7, v3, v5

    if-eq v6, v7, :cond_2

    .line 356
    div-int v6, v3, v5

    .line 358
    :cond_2
    new-array v4, v9, [I

    .line 359
    .local v4, renderBuffer:[I
    invoke-interface {v1, v9, v4, v8}, Ljavax/media/opengl/GL2;->glGenRenderbuffers(I[II)V

    .line 360
    aget v7, v4, v8

    invoke-interface {v1, v10, v7}, Ljavax/media/opengl/GL2;->glBindRenderbuffer(II)V

    .line 361
    invoke-interface {v1, v10, v0, v6, v2}, Ljavax/media/opengl/GL2;->glRenderbufferStorage(IIII)V

    .line 362
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL;->getCLGLContext()Lcom/jogamp/opencl/gl/CLGLContext;

    move-result-object v7

    aget v8, v4, v8

    invoke-virtual {v7, v8, p2}, Lcom/jogamp/opencl/gl/CLGLContext;->createFromGLRenderbuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/gl/CLGLImage2d;

    move-result-object v7

    goto :goto_0

    .line 311
    .end local v4           #renderBuffer:[I
    :sswitch_1
    const v0, 0x8040

    const/4 v5, 0x1

    goto :goto_1

    .line 312
    :sswitch_2
    const v0, 0x9019

    const/4 v5, 0x2

    goto :goto_1

    .line 313
    :sswitch_3
    const v0, 0x8042

    const/4 v5, 0x2

    goto :goto_1

    .line 314
    :sswitch_4
    const v0, 0x8d86

    const/4 v5, 0x4

    goto :goto_1

    .line 315
    :sswitch_5
    const v0, 0x8818

    const/4 v5, 0x4

    goto :goto_1

    .line 320
    :pswitch_1
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    .line 327
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 321
    :sswitch_6
    const v0, 0x8f95

    const/4 v5, 0x2

    goto :goto_1

    .line 322
    :sswitch_7
    const v0, 0x822b

    const/4 v5, 0x2

    goto :goto_1

    .line 323
    :sswitch_8
    const v0, 0x8f99

    const/4 v5, 0x4

    goto :goto_1

    .line 324
    :sswitch_9
    const v0, 0x822c

    const/4 v5, 0x4

    goto :goto_1

    .line 325
    :sswitch_a
    const v0, 0x823b

    const/16 v5, 0x8

    goto :goto_1

    .line 326
    :sswitch_b
    const v0, 0x8230

    const/16 v5, 0x8

    goto :goto_1

    .line 331
    :pswitch_2
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v7

    sparse-switch v7, :sswitch_data_2

    .line 338
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 332
    :sswitch_c
    const v0, 0x8f96

    const/4 v5, 0x3

    goto :goto_1

    .line 333
    :sswitch_d
    const v0, 0x8051

    const/4 v5, 0x3

    goto/16 :goto_1

    .line 334
    :sswitch_e
    const v0, 0x8f9a

    const/4 v5, 0x6

    goto/16 :goto_1

    .line 335
    :sswitch_f
    const v0, 0x8054

    const/4 v5, 0x6

    goto/16 :goto_1

    .line 336
    :sswitch_10
    const v0, 0x8d83

    const/16 v5, 0xc

    goto/16 :goto_1

    .line 337
    :sswitch_11
    const v0, 0x8815

    const/16 v5, 0xc

    goto/16 :goto_1

    .line 342
    :pswitch_3
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v7

    sparse-switch v7, :sswitch_data_3

    .line 349
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 343
    :sswitch_12
    const v0, 0x8f97

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 344
    :sswitch_13
    const v0, 0x8058

    const/4 v5, 0x4

    goto/16 :goto_1

    .line 345
    :sswitch_14
    const v0, 0x8f9b

    const/16 v5, 0x8

    goto/16 :goto_1

    .line 346
    :sswitch_15
    const v0, 0x805b

    const/16 v5, 0x8

    goto/16 :goto_1

    .line 347
    :sswitch_16
    const v0, 0x8d82

    const/16 v5, 0x10

    goto/16 :goto_1

    .line 348
    :sswitch_17
    const v0, 0x8814

    const/16 v5, 0x10

    goto/16 :goto_1

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 309
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff8 -> :sswitch_0
        -0x7ffffff0 -> :sswitch_2
        -0x7fffffe0 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch

    .line 320
    :sswitch_data_1
    .sparse-switch
        -0x7ffffff8 -> :sswitch_6
        -0x7ffffff0 -> :sswitch_8
        -0x7fffffe0 -> :sswitch_a
        0x8 -> :sswitch_7
        0x10 -> :sswitch_9
        0x20 -> :sswitch_b
    .end sparse-switch

    .line 331
    :sswitch_data_2
    .sparse-switch
        -0x7ffffff8 -> :sswitch_c
        -0x7ffffff0 -> :sswitch_e
        -0x7fffffe0 -> :sswitch_10
        0x8 -> :sswitch_d
        0x10 -> :sswitch_f
        0x20 -> :sswitch_11
    .end sparse-switch

    .line 342
    :sswitch_data_3
    .sparse-switch
        -0x7ffffff8 -> :sswitch_12
        -0x7ffffff0 -> :sswitch_14
        -0x7fffffe0 -> :sswitch_16
        0x8 -> :sswitch_13
        0x10 -> :sswitch_15
        0x20 -> :sswitch_17
    .end sparse-switch
.end method

.method public varargs createCLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;
    .locals 10
    .parameter "image"
    .parameter "flags"

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    .line 265
    .local v2, width:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    .line 266
    .local v3, height:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v7

    .line 267
    .local v7, pitch:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 268
    .local v1, buffer:Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    .line 269
    .local v6, order:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;
    const/4 v9, 0x0

    .line 270
    .local v9, type:Lcom/jogamp/opencl/CLImageFormat$ChannelType;
    const/4 v8, 0x0

    .line 271
    .local v8, size:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 278
    sget-boolean v0, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 272
    :sswitch_0
    sget-object v9, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->SNORM_INT8:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    const/4 v8, 0x1

    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 285
    sget-boolean v0, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 273
    :sswitch_1
    sget-object v9, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->UNORM_INT8:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    const/4 v8, 0x1

    goto :goto_0

    .line 274
    :sswitch_2
    sget-object v9, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->SNORM_INT16:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    const/4 v8, 0x2

    goto :goto_0

    .line 275
    :sswitch_3
    sget-object v9, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->UNORM_INT16:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    const/4 v8, 0x2

    goto :goto_0

    .line 276
    :sswitch_4
    sget-object v9, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->SIGNED_INT32:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    const/4 v8, 0x4

    goto :goto_0

    .line 277
    :sswitch_5
    sget-object v9, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->FLOAT:Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    const/4 v8, 0x4

    goto :goto_0

    .line 281
    :pswitch_0
    sget-object v6, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->LUMINANCE:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    .line 288
    :cond_1
    :goto_1
    div-int v0, v7, v8

    if-eq v2, v0, :cond_2

    .line 289
    div-int v2, v7, v8

    .line 291
    :cond_2
    new-instance v4, Lcom/jogamp/opencl/CLImageFormat;

    invoke-direct {v4, v6, v9}, Lcom/jogamp/opencl/CLImageFormat;-><init>(Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;Lcom/jogamp/opencl/CLImageFormat$ChannelType;)V

    .line 292
    .local v4, format:Lcom/jogamp/opencl/CLImageFormat;
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/jogamp/opencl/CLContext;->createImage2d(Ljava/nio/Buffer;IILcom/jogamp/opencl/CLImageFormat;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object v0

    return-object v0

    .line 282
    .end local v4           #format:Lcom/jogamp/opencl/CLImageFormat;
    :pswitch_1
    sget-object v6, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->RG:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    mul-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 283
    :pswitch_2
    sget-object v6, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->RGB:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    mul-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 284
    :pswitch_3
    sget-object v6, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->RGBA:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    mul-int/lit8 v8, v8, 0x4

    goto :goto_1

    .line 271
    :sswitch_data_0
    .sparse-switch
        -0x7ffffff8 -> :sswitch_0
        -0x7ffffff0 -> :sswitch_2
        -0x7fffffe0 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch

    .line 280
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createIplImageFrom(Lcom/jogamp/opencl/CLImage2d;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 9
    .parameter "image"

    .prologue
    .line 408
    iget v6, p1, Lcom/jogamp/opencl/CLImage2d;->width:I

    .line 409
    .local v6, width:I
    iget v3, p1, Lcom/jogamp/opencl/CLImage2d;->height:I

    .line 410
    .local v3, height:I
    invoke-virtual {p1}, Lcom/jogamp/opencl/CLImage2d;->getFormat()Lcom/jogamp/opencl/CLImageFormat;

    move-result-object v2

    .line 411
    .local v2, format:Lcom/jogamp/opencl/CLImageFormat;
    invoke-virtual {v2}, Lcom/jogamp/opencl/CLImageFormat;->getImageChannelOrder()Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;

    move-result-object v4

    .line 412
    .local v4, order:Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;
    invoke-virtual {v2}, Lcom/jogamp/opencl/CLImageFormat;->getImageChannelDataType()Lcom/jogamp/opencl/CLImageFormat$ChannelType;

    move-result-object v5

    .line 413
    .local v5, type:Lcom/jogamp/opencl/CLImageFormat$ChannelType;
    const/4 v1, 0x0

    .local v1, depth:I
    const/4 v0, 0x0

    .line 414
    .local v0, channels:I
    sget-object v7, Lcom/googlecode/javacv/JavaCVCL$1;->$SwitchMap$com$jogamp$opencl$CLImageFormat$ChannelOrder:[I

    invoke-virtual {v4}, Lcom/jogamp/opencl/CLImageFormat$ChannelOrder;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 436
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 419
    :pswitch_0
    const/4 v0, 0x1

    .line 438
    :cond_0
    :goto_0
    sget-object v7, Lcom/googlecode/javacv/JavaCVCL$1;->$SwitchMap$com$jogamp$opencl$CLImageFormat$ChannelType:[I

    invoke-virtual {v5}, Lcom/jogamp/opencl/CLImageFormat$ChannelType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    .line 454
    sget-boolean v7, Lcom/googlecode/javacv/JavaCVCL;->$assertionsDisabled:Z

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 424
    :pswitch_1
    const/4 v0, 0x2

    .line 425
    goto :goto_0

    .line 428
    :pswitch_2
    const/4 v0, 0x3

    .line 429
    goto :goto_0

    .line 434
    :pswitch_3
    const/4 v0, 0x4

    .line 435
    goto :goto_0

    .line 440
    :pswitch_4
    const v1, -0x7ffffff8

    .line 456
    :cond_1
    :goto_1
    invoke-static {v6, v3, v1, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v7

    return-object v7

    .line 442
    :pswitch_5
    const/16 v1, 0x8

    goto :goto_1

    .line 444
    :pswitch_6
    const v1, -0x7ffffff0

    goto :goto_1

    .line 446
    :pswitch_7
    const/16 v1, 0x10

    goto :goto_1

    .line 448
    :pswitch_8
    const v1, -0x7fffffe0

    goto :goto_1

    .line 449
    :pswitch_9
    const/16 v1, 0x20

    goto :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 438
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public createPinnedBuffer(I)Lcom/jogamp/opencl/CLBuffer;
    .locals 7
    .parameter "size"

    .prologue
    const/4 v6, 0x1

    .line 373
    iget-object v2, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    new-array v3, v6, [Lcom/jogamp/opencl/CLMemory$Mem;

    const/4 v4, 0x0

    sget-object v5, Lcom/jogamp/opencl/CLMemory$Mem;->ALLOCATE_BUFFER:Lcom/jogamp/opencl/CLMemory$Mem;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/jogamp/opencl/CLContext;->createBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v1

    .line 374
    .local v1, pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;
    iget-object v2, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    sget-object v3, Lcom/jogamp/opencl/CLMemory$Map;->READ_WRITE:Lcom/jogamp/opencl/CLMemory$Map;

    invoke-virtual {v2, v1, v3, v6}, Lcom/jogamp/opencl/CLCommandQueue;->putMapBuffer(Lcom/jogamp/opencl/CLBuffer;Lcom/jogamp/opencl/CLMemory$Map;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 375
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Lcom/jogamp/opencl/CLBuffer;->use(Ljava/nio/Buffer;)Lcom/jogamp/opencl/CLMemory;

    .line 376
    return-object v1
.end method

.method public createPinnedIplImage(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 404
    new-instance v0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;-><init>(Lcom/googlecode/javacv/JavaCVCL;IIII)V

    return-object v0
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJ)V
    .locals 8
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkSizeX"
    .parameter "localWorkSizeX"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/jogamp/opencl/CLCommandQueue;->put1DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJ)Lcom/jogamp/opencl/CLCommandQueue;

    .line 530
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJ)V
    .locals 14
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkOffsetY"
    .parameter "globalWorkSizeX"
    .parameter "globalWorkSizeY"
    .parameter "localWorkSizeX"
    .parameter "localWorkSizeY"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/jogamp/opencl/CLCommandQueue;->put2DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJ)Lcom/jogamp/opencl/CLCommandQueue;

    .line 551
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJ)V
    .locals 21
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkOffsetY"
    .parameter "globalWorkOffsetZ"
    .parameter "globalWorkSizeX"
    .parameter "globalWorkSizeY"
    .parameter "globalWorkSizeZ"
    .parameter "localWorkSizeX"
    .parameter "localWorkSizeY"
    .parameter "localWorkSizeZ"

    .prologue
    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    invoke-virtual/range {v1 .. v20}, Lcom/jogamp/opencl/CLCommandQueue;->put3DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJ)Lcom/jogamp/opencl/CLCommandQueue;

    .line 580
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJLcom/jogamp/opencl/CLEventList;)V
    .locals 22
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkOffsetY"
    .parameter "globalWorkOffsetZ"
    .parameter "globalWorkSizeX"
    .parameter "globalWorkSizeY"
    .parameter "globalWorkSizeZ"
    .parameter "localWorkSizeX"
    .parameter "localWorkSizeY"
    .parameter "localWorkSizeZ"
    .parameter "events"

    .prologue
    .line 585
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-object/from16 v21, p20

    invoke-virtual/range {v1 .. v21}, Lcom/jogamp/opencl/CLCommandQueue;->put3DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJLcom/jogamp/opencl/CLEventList;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 589
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJLcom/jogamp/opencl/CLEventList;Lcom/jogamp/opencl/CLEventList;)V
    .locals 23
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkOffsetY"
    .parameter "globalWorkOffsetZ"
    .parameter "globalWorkSizeX"
    .parameter "globalWorkSizeY"
    .parameter "globalWorkSizeZ"
    .parameter "localWorkSizeX"
    .parameter "localWorkSizeY"
    .parameter "localWorkSizeZ"
    .parameter "condition"
    .parameter "events"

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-wide/from16 v15, p14

    move-wide/from16 v17, p16

    move-wide/from16 v19, p18

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    invoke-virtual/range {v1 .. v22}, Lcom/jogamp/opencl/CLCommandQueue;->put3DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJJJJLcom/jogamp/opencl/CLEventList;Lcom/jogamp/opencl/CLEventList;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 599
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJLcom/jogamp/opencl/CLEventList;)V
    .locals 15
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkOffsetY"
    .parameter "globalWorkSizeX"
    .parameter "globalWorkSizeY"
    .parameter "localWorkSizeX"
    .parameter "localWorkSizeY"
    .parameter "events"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/jogamp/opencl/CLCommandQueue;->put2DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJLcom/jogamp/opencl/CLEventList;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 560
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJLcom/jogamp/opencl/CLEventList;Lcom/jogamp/opencl/CLEventList;)V
    .locals 17
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkOffsetY"
    .parameter "globalWorkSizeX"
    .parameter "globalWorkSizeY"
    .parameter "localWorkSizeX"
    .parameter "localWorkSizeY"
    .parameter "condition"
    .parameter "events"

    .prologue
    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    invoke-virtual/range {v1 .. v16}, Lcom/jogamp/opencl/CLCommandQueue;->put2DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJLcom/jogamp/opencl/CLEventList;Lcom/jogamp/opencl/CLEventList;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 570
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJLcom/jogamp/opencl/CLEventList;)V
    .locals 9
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkSizeX"
    .parameter "localWorkSizeX"
    .parameter "events"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide v6, p6

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/jogamp/opencl/CLCommandQueue;->put1DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJLcom/jogamp/opencl/CLEventList;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 535
    return-void
.end method

.method public executeKernel(Lcom/jogamp/opencl/CLKernel;JJJLcom/jogamp/opencl/CLEventList;Lcom/jogamp/opencl/CLEventList;)V
    .locals 10
    .parameter "kernel"
    .parameter "globalWorkOffsetX"
    .parameter "globalWorkSizeX"
    .parameter "localWorkSizeX"
    .parameter "condition"
    .parameter "events"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/jogamp/opencl/CLCommandQueue;->put1DRangeKernel(Lcom/jogamp/opencl/CLKernel;JJJLcom/jogamp/opencl/CLEventList;Lcom/jogamp/opencl/CLEventList;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 541
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
    .line 177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 178
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL;->release()V

    .line 179
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    invoke-virtual {v0}, Lcom/jogamp/opencl/CLCommandQueue;->finish()Lcom/jogamp/opencl/CLCommandQueue;

    .line 603
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    invoke-virtual {v0}, Lcom/jogamp/opencl/CLCommandQueue;->flush()Lcom/jogamp/opencl/CLCommandQueue;

    .line 606
    return-void
.end method

.method public getCLCommandQueue()Lcom/jogamp/opencl/CLCommandQueue;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    return-object v0
.end method

.method public getCLContext()Lcom/jogamp/opencl/CLContext;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    return-object v0
.end method

.method public getCLGLContext()Lcom/jogamp/opencl/gl/CLGLContext;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    instance-of v0, v0, Lcom/jogamp/opencl/gl/CLGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    check-cast v0, Lcom/jogamp/opencl/gl/CLGLContext;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGL()Ljavax/media/opengl/GL;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL;->getGLContext()Ljavax/media/opengl/GLContext;

    move-result-object v0

    .line 210
    .local v0, glContext:Ljavax/media/opengl/GLContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/media/opengl/GLContext;->getGL()Ljavax/media/opengl/GL;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGL2()Ljavax/media/opengl/GL2;
    .locals 2

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL;->getGL()Ljavax/media/opengl/GL;

    move-result-object v0

    .line 215
    .local v0, gl:Ljavax/media/opengl/GL;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljavax/media/opengl/GL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGLContext()Ljavax/media/opengl/GLContext;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    instance-of v0, v0, Lcom/jogamp/opencl/gl/CLGLContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    check-cast v0, Lcom/jogamp/opencl/gl/CLGLContext;

    invoke-virtual {v0}, Lcom/jogamp/opencl/gl/CLGLContext;->getGLContext()Ljavax/media/opengl/GLContext;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGLU()Ljavax/media/opengl/glu/GLU;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->glu:Ljavax/media/opengl/glu/GLU;

    return-object v0
.end method

.method public pyrDown(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V
    .locals 16
    .parameter "srcImg"
    .parameter "dstImg"

    .prologue
    .line 616
    const/4 v15, 0x0

    .line 618
    .local v15, list:Lcom/jogamp/opencl/CLEventList;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/JavaCVCL;->pyrDownKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    .line 619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/JavaCVCL;->pyrDownKernel:Lcom/jogamp/opencl/CLKernel;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    iget v1, v0, Lcom/jogamp/opencl/CLImage2d;->width:I

    const/4 v7, 0x2

    invoke-static {v1, v7}, Lcom/googlecode/javacv/JavaCVCL;->alignCeil(II)I

    move-result v1

    int-to-long v7, v1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/jogamp/opencl/CLImage2d;->height:I

    const/16 v9, 0x40

    invoke-static {v1, v9}, Lcom/googlecode/javacv/JavaCVCL;->alignCeil(II)I

    move-result v1

    int-to-long v9, v1

    const-wide/16 v11, 0x2

    const-wide/16 v13, 0x40

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v15}, Lcom/googlecode/javacv/JavaCVCL;->executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJLcom/jogamp/opencl/CLEventList;)V

    .line 625
    return-void
.end method

.method public readBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V
    .locals 1
    .parameter
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jogamp/opencl/CLBuffer",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, buffer:Lcom/jogamp/opencl/CLBuffer;,"Lcom/jogamp/opencl/CLBuffer<*>;"
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    invoke-virtual {v0, p1, p2}, Lcom/jogamp/opencl/CLCommandQueue;->putReadBuffer(Lcom/jogamp/opencl/CLBuffer;Z)Lcom/jogamp/opencl/CLCommandQueue;

    .line 521
    return-void
.end method

.method public readImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 11
    .parameter "clImg"
    .parameter "iplImage"
    .parameter "blocking"

    .prologue
    .line 462
    if-nez p2, :cond_0

    .line 463
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/JavaCVCL;->createIplImageFrom(Lcom/jogamp/opencl/CLImage2d;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object p2

    .line 465
    :cond_0
    const/4 v3, 0x0

    .local v3, x:I
    const/4 v4, 0x0

    .line 466
    .local v4, y:I
    iget v5, p1, Lcom/jogamp/opencl/CLImage2d;->width:I

    .line 467
    .local v5, width:I
    iget v6, p1, Lcom/jogamp/opencl/CLImage2d;->height:I

    .line 468
    .local v6, height:I
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    .line 469
    .local v2, pitch:I
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 470
    .local v8, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v10

    .line 471
    .local v10, roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v10, :cond_1

    .line 472
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v3

    .line 473
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v4

    .line 474
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v5

    .line 475
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v6

    .line 476
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v0

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    const v7, 0x7fffffff

    and-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x8

    mul-int v9, v0, v1

    .line 477
    .local v9, pixelSize:I
    mul-int v0, v4, v2

    mul-int v1, v3, v9

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 479
    .end local v9           #pixelSize:I
    :cond_1
    invoke-virtual {p1, v8}, Lcom/jogamp/opencl/CLImage2d;->use(Ljava/nio/Buffer;)Lcom/jogamp/opencl/CLMemory;

    .line 480
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/jogamp/opencl/CLCommandQueue;->putReadImage(Lcom/jogamp/opencl/CLImage2d;IIIIIZ)Lcom/jogamp/opencl/CLCommandQueue;

    .line 481
    return-object p2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    invoke-virtual {v0}, Lcom/jogamp/opencl/CLContext;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->context:Lcom/jogamp/opencl/CLContext;

    invoke-virtual {v0}, Lcom/jogamp/opencl/CLContext;->release()V

    .line 168
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    invoke-interface {v0}, Ljavax/media/opengl/GLPbuffer;->getContext()Ljavax/media/opengl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/media/opengl/GLContext;->makeCurrent()I

    .line 170
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    invoke-interface {v0}, Ljavax/media/opengl/GLPbuffer;->getContext()Ljavax/media/opengl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/media/opengl/GLContext;->release()V

    .line 171
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    invoke-interface {v0}, Ljavax/media/opengl/GLPbuffer;->getContext()Ljavax/media/opengl/GLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/media/opengl/GLContext;->destroy()V

    .line 172
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->pbuffer:Ljavax/media/opengl/GLPbuffer;

    invoke-interface {v0}, Ljavax/media/opengl/GLPbuffer;->destroy()V

    .line 175
    :cond_0
    return-void
.end method

.method public releaseCLGLImage(Lcom/jogamp/opencl/gl/CLGLImage2d;)V
    .locals 5
    .parameter "image"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 366
    invoke-virtual {p1}, Lcom/jogamp/opencl/gl/CLGLImage2d;->release()V

    .line 367
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL;->getGL2()Ljavax/media/opengl/GL2;

    move-result-object v0

    new-array v1, v4, [I

    invoke-virtual {p1}, Lcom/jogamp/opencl/gl/CLGLImage2d;->getGLObjectID()I

    move-result v2

    aput v2, v1, v3

    invoke-interface {v0, v4, v1, v3}, Ljavax/media/opengl/GL2;->glDeleteRenderbuffers(I[II)V

    .line 368
    return-void
.end method

.method public releaseGLObject(Lcom/jogamp/opencl/CLObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 514
    instance-of v0, p1, Lcom/jogamp/opencl/gl/CLGLObject;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    check-cast p1, Lcom/jogamp/opencl/gl/CLGLObject;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/jogamp/opencl/CLCommandQueue;->putReleaseGLObject(Lcom/jogamp/opencl/gl/CLGLObject;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 517
    :cond_0
    return-void
.end method

.method public remap(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;)V
    .locals 7
    .parameter "srcImg"
    .parameter "dstImg"
    .parameter "mapxImg"
    .parameter "mapyImg"

    .prologue
    .line 628
    const-wide/16 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/googlecode/javacv/JavaCVCL;->remap(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;J)V

    .line 629
    return-void
.end method

.method public remap(Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;Lcom/jogamp/opencl/CLImage2d;J)V
    .locals 17
    .parameter "srcImg"
    .parameter "dstImg"
    .parameter "mapxImg"
    .parameter "mapyImg"
    .parameter "sensorPattern"

    .prologue
    .line 631
    const/16 v16, 0x0

    .line 634
    .local v16, list:Lcom/jogamp/opencl/CLEventList;
    const-wide/16 v4, -0x1

    cmp-long v2, p5, v4

    if-eqz v2, :cond_0

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/JavaCVCL;->remapBayerKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Lcom/jogamp/opencl/CLKernel;->putArg(J)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    .line 639
    .local v3, kernel:Lcom/jogamp/opencl/CLKernel;
    :goto_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v0, p2

    iget v2, v0, Lcom/jogamp/opencl/CLImage2d;->width:I

    const/4 v8, 0x2

    invoke-static {v2, v8}, Lcom/googlecode/javacv/JavaCVCL;->alignCeil(II)I

    move-result v2

    int-to-long v8, v2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/jogamp/opencl/CLImage2d;->height:I

    const/16 v10, 0x40

    invoke-static {v2, v10}, Lcom/googlecode/javacv/JavaCVCL;->alignCeil(II)I

    move-result v2

    int-to-long v10, v2

    const-wide/16 v12, 0x2

    const-wide/16 v14, 0x40

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/googlecode/javacv/JavaCVCL;->executeKernel(Lcom/jogamp/opencl/CLKernel;JJJJJJLcom/jogamp/opencl/CLEventList;)V

    .line 645
    return-void

    .line 637
    .end local v3           #kernel:Lcom/jogamp/opencl/CLKernel;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/JavaCVCL;->remapKernel:Lcom/jogamp/opencl/CLKernel;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/jogamp/opencl/CLKernel;->putArg(Lcom/jogamp/opencl/CLMemory;)Lcom/jogamp/opencl/CLKernel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jogamp/opencl/CLKernel;->rewind()Lcom/jogamp/opencl/CLKernel;

    move-result-object v3

    .restart local v3       #kernel:Lcom/jogamp/opencl/CLKernel;
    goto :goto_0
.end method

.method public writeBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V
    .locals 1
    .parameter
    .parameter "blocking"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jogamp/opencl/CLBuffer",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p1, buffer:Lcom/jogamp/opencl/CLBuffer;,"Lcom/jogamp/opencl/CLBuffer<*>;"
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    invoke-virtual {v0, p1, p2}, Lcom/jogamp/opencl/CLCommandQueue;->putWriteBuffer(Lcom/jogamp/opencl/CLBuffer;Z)Lcom/jogamp/opencl/CLCommandQueue;

    .line 524
    return-void
.end method

.method public writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;
    .locals 11
    .parameter "clImg"
    .parameter "iplImage"
    .parameter "blocking"

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 487
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {p0, p2, v0}, Lcom/googlecode/javacv/JavaCVCL;->createCLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLImage2d;

    move-result-object p1

    .line 489
    :cond_0
    const/4 v3, 0x0

    .local v3, x:I
    const/4 v4, 0x0

    .line 490
    .local v4, y:I
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v5

    .line 491
    .local v5, width:I
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v6

    .line 492
    .local v6, height:I
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    .line 493
    .local v2, pitch:I
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 494
    .local v8, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->roi()Lcom/googlecode/javacv/cpp/opencv_core$IplROI;

    move-result-object v10

    .line 495
    .local v10, roi:Lcom/googlecode/javacv/cpp/opencv_core$IplROI;
    if-eqz v10, :cond_1

    .line 496
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->xOffset()I

    move-result v3

    .line 497
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->yOffset()I

    move-result v4

    .line 498
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->width()I

    move-result v5

    .line 499
    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/opencv_core$IplROI;->height()I

    move-result v6

    .line 500
    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v0

    invoke-virtual {p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    const v7, 0x7fffffff

    and-int/2addr v1, v7

    div-int/lit8 v1, v1, 0x8

    mul-int v9, v0, v1

    .line 501
    .local v9, pixelSize:I
    mul-int v0, v4, v2

    mul-int v1, v3, v9

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 503
    .end local v9           #pixelSize:I
    :cond_1
    invoke-virtual {p1, v8}, Lcom/jogamp/opencl/CLImage2d;->use(Ljava/nio/Buffer;)Lcom/jogamp/opencl/CLMemory;

    .line 504
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;

    move-object v1, p1

    move v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/jogamp/opencl/CLCommandQueue;->putWriteImage(Lcom/jogamp/opencl/CLImage2d;IIIIIZ)Lcom/jogamp/opencl/CLCommandQueue;

    .line 505
    return-object p1
.end method
