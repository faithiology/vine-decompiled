.class public Lcom/googlecode/javacv/ImageTransformerCL$InputData;
.super Ljava/lang/Object;
.source "ImageTransformerCL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/ImageTransformerCL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputData"
.end annotation


# instance fields
.field autoWrite:Z

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

.field public outlierThreshold:D

.field public pyramidLevel:I

.field public roiHeight:I

.field public roiWidth:I

.field public roiX:I

.field public roiY:I

.field public zeroThreshold:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .parameter "autoWrite"

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->pyramidLevel:I

    .line 39
    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiX:I

    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiY:I

    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiWidth:I

    iput v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiHeight:I

    .line 40
    iput-wide v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    iput-wide v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->autoWrite:Z

    .line 36
    iput-boolean p1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->autoWrite:Z

    return-void
.end method


# virtual methods
.method getBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;
    .locals 5
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
    .line 46
    const/16 v0, 0x10

    .line 47
    .local v0, structSize:I
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v1}, Lcom/jogamp/opencl/CLBuffer;->getCLSize()J

    move-result-wide v1

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v1}, Lcom/jogamp/opencl/CLBuffer;->release()V

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/googlecode/javacv/JavaCVCL;->getCLContext()Lcom/jogamp/opencl/CLContext;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/jogamp/opencl/CLMemory$Mem;

    const/4 v3, 0x0

    sget-object v4, Lcom/jogamp/opencl/CLMemory$Mem;->READ_ONLY:Lcom/jogamp/opencl/CLMemory$Mem;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/jogamp/opencl/CLContext;->createByteBuffer(I[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    .line 51
    :cond_2
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    return-object v1
.end method

.method public writeBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;
    .locals 4
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
    .line 55
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->getBuffer(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLBuffer;

    .line 56
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v1}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 57
    .local v0, byteBuffer:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiY:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->roiHeight:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->zeroThreshold:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->outlierThreshold:D

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 59
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/googlecode/javacv/JavaCVCL;->writeBuffer(Lcom/jogamp/opencl/CLBuffer;Z)V

    .line 60
    iget-object v1, p0, Lcom/googlecode/javacv/ImageTransformerCL$InputData;->buffer:Lcom/jogamp/opencl/CLBuffer;

    return-object v1
.end method
