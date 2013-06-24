.class Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;
.super Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
.source "JavaCVCL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/javacv/JavaCVCL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PinnedIplImage"
.end annotation


# instance fields
.field final pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;

.field final synthetic this$0:Lcom/googlecode/javacv/JavaCVCL;


# direct methods
.method constructor <init>(Lcom/googlecode/javacv/JavaCVCL;IIII)V
    .locals 1
    .parameter
    .parameter "width"
    .parameter "height"
    .parameter "depth"
    .parameter "channels"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->this$0:Lcom/googlecode/javacv/JavaCVCL;

    .line 381
    new-instance v0, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    invoke-direct {v0, p2, p3}, Lcom/googlecode/javacv/cpp/opencv_core$CvSize;-><init>(II)V

    invoke-static {v0, p4, p5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvCreateImageHeader(Lcom/googlecode/javacv/cpp/opencv_core$CvSize;II)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 382
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->imageSize()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/googlecode/javacv/JavaCVCL;->createPinnedBuffer(I)Lcom/jogamp/opencl/CLBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;

    .line 383
    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->imageData(Ljava/nio/ByteBuffer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 384
    return-void
.end method


# virtual methods
.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v0}, Lcom/jogamp/opencl/CLBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getCLBuffer()Lcom/jogamp/opencl/CLBuffer;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;

    return-object v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->this$0:Lcom/googlecode/javacv/JavaCVCL;

    #getter for: Lcom/googlecode/javacv/JavaCVCL;->commandQueue:Lcom/jogamp/opencl/CLCommandQueue;
    invoke-static {v0}, Lcom/googlecode/javacv/JavaCVCL;->access$000(Lcom/googlecode/javacv/JavaCVCL;)Lcom/jogamp/opencl/CLCommandQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {p0}, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jogamp/opencl/CLCommandQueue;->putUnmapMemory(Lcom/jogamp/opencl/CLMemory;Ljava/nio/Buffer;)Lcom/jogamp/opencl/CLCommandQueue;

    .line 398
    iget-object v0, p0, Lcom/googlecode/javacv/JavaCVCL$PinnedIplImage;->pinnedBuffer:Lcom/jogamp/opencl/CLBuffer;

    invoke-virtual {v0}, Lcom/jogamp/opencl/CLBuffer;->release()V

    .line 399
    invoke-static {p0}, Lcom/googlecode/javacv/cpp/opencv_core;->cvReleaseImageHeader(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 400
    return-void
.end method
