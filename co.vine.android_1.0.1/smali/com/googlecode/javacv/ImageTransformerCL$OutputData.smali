.class public Lcom/googlecode/javacv/ImageTransformerCL$OutputData;
.super Ljava/lang/Object;
.source "ImageTransformerCL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ImageTransformerCL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputData"
.end annotation


# instance fields
.field autoRead:Z

.field buffer:Lcom/jogamp/opencl/CLBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jogamp/opencl/CLBuffer",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public dstCount:I

.field public dstCountOutlier:I

.field public dstCountZero:I

.field public dstDstDot:Ljava/nio/FloatBuffer;

.field public srcDstDot:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "autoRead"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCount:I

    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCountZero:I

    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCountOutlier:I

    .line 69
    iput-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->srcDstDot:Ljava/nio/FloatBuffer;

    iput-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstDstDot:Ljava/nio/FloatBuffer;

    .line 71
    iput-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->autoRead:Z

    .line 66
    iput-boolean p1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->autoRead:Z

    return-void
.end method


# virtual methods
.method getBuffer(Lcom/googlecode/javacv/JavaCVCL;II)Lcom/jogamp/opencl/CLBuffer;
    .locals 6
    .parameter "context"
    .parameter "dotSize"
    .parameter "reduceSize"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/javacv/JavaCVCL;",
            "II)",
            "Lcom/jogamp/opencl/CLBuffer",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    add-int/lit8 v2, p2, 0x4

    mul-int v3, p2, p2

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x4

    .line 76
    .local v1, structSize:I
    iget-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v2}, Lcom/jogamp/opencl/CLBuffer;->getCLSize()J

    move-result-wide v2

    mul-int v4, v1, p3

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v2}, Lcom/jogamp/opencl/CLBuffer;->release()V

    .line 78
    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v2

    mul-int v3, v1, p3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v2, v3, v4}, Lcom/jogamp/opencl/CLContext;->createByteBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    .line 79
    iget-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v2}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 80
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->srcDstDot:Ljava/nio/FloatBuffer;

    .line 81
    add-int/lit8 v2, p2, 0x4

    mul-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstDstDot:Ljava/nio/FloatBuffer;

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 84
    .end local v0           #byteBuffer:Ljava/nio/ByteBuffer;
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    return-object v2
.end method

.method public readBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;
    .locals 3
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/javacv/JavaCVCL;",
            ")",
            "Lcom/jogamp/opencl/CLBuffer",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/googlecode/javacv/JavaCVCL;->readBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V

    .line 90
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v1}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 91
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCount:I

    .line 92
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCountZero:I

    .line 93
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->dstCountOutlier:I

    .line 94
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$OutputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    return-object v1
.end method
