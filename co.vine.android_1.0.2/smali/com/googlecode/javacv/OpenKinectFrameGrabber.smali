.class public Lcom/googlecode/javacv/OpenKinectFrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "OpenKinectFrameGrabber.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field private byteOrder:Ljava/nio/ByteOrder;

.field private depth:Z

.field private depthFormat:I

.field private deviceNumber:I

.field private rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private rawDepthImageData:Lcom/googlecode/javacpp/BytePointer;

.field private rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private rawVideoImageData:Lcom/googlecode/javacpp/BytePointer;

.field private returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private timestamp:[I

.field private videoFormat:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->$assertionsDisabled:Z

    .line 70
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 5
    .parameter "deviceNumber"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 94
    iput v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->deviceNumber:I

    .line 95
    iput-boolean v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depth:Z

    .line 96
    new-instance v2, Lcom/googlecode/javacpp/BytePointer;

    move-object v0, v1

    check-cast v0, Lcom/googlecode/javacpp/Pointer;

    invoke-direct {v2, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    iput-object v2, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImageData:Lcom/googlecode/javacpp/BytePointer;

    new-instance v2, Lcom/googlecode/javacpp/BytePointer;

    move-object v0, v1

    check-cast v0, Lcom/googlecode/javacpp/Pointer;

    invoke-direct {v2, v0}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    iput-object v2, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImageData:Lcom/googlecode/javacpp/BytePointer;

    .line 98
    iput-object v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 99
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v3, v0, v3

    iput-object v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    .line 100
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->byteOrder:Ljava/nio/ByteOrder;

    .line 101
    iput v4, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    .line 102
    iput v4, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    .line 84
    iput p1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->deviceNumber:I

    .line 85
    return-void
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/OpenKinectFrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/OpenKinectFrameGrabber;-><init>(I)V

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/OpenKinectFrameGrabber;
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/OpenKinectFrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceDescriptions()[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 41
    invoke-static {}, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->tryLoad()V

    .line 43
    new-instance v1, Lcom/googlecode/javacv/cpp/freenect$freenect_context;

    invoke-direct {v1, v5}, Lcom/googlecode/javacv/cpp/freenect$freenect_context;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 44
    .local v1, ctx:Lcom/googlecode/javacv/cpp/freenect$freenect_context;
    invoke-static {v1, v5}, Lcom/googlecode/javacv/cpp/freenect;->freenect_init(Lcom/googlecode/javacv/cpp/freenect$freenect_context;Lcom/googlecode/javacv/cpp/freenect$freenect_usb_context;)I

    move-result v3

    .line 45
    .local v3, err:I
    if-gez v3, :cond_0

    .line 46
    new-instance v5, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freenect_init() Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Failed to init context."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 49
    :cond_0
    invoke-static {v1}, Lcom/googlecode/javacv/cpp/freenect;->freenect_num_devices(Lcom/googlecode/javacv/cpp/freenect$freenect_context;)I

    move-result v0

    .line 50
    .local v0, count:I
    if-gez v0, :cond_1

    .line 51
    new-instance v5, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freenect_num_devices() Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Failed to get number of devices."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 53
    :cond_1
    new-array v2, v0, [Ljava/lang/String;

    .line 54
    .local v2, descriptions:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Kinect #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 54
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-static {v1}, Lcom/googlecode/javacv/cpp/freenect;->freenect_shutdown(Lcom/googlecode/javacv/cpp/freenect$freenect_context;)I

    move-result v3

    .line 59
    if-gez v3, :cond_3

    .line 60
    new-instance v5, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "freenect_shutdown() Error "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Failed to shutdown context."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :cond_3
    return-object v2
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 72
    sget-object v1, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 73
    sget-object v1, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 76
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/freenect;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/OpenKinectFrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 91
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->release()V

    .line 92
    return-void
.end method

.method public getByteOrder()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->byteOrder:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public getDepthFormat()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    return v0
.end method

.method public getGamma()D
    .locals 4

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->gamma:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 128
    const-wide v0, 0x400199999999999aL

    .line 130
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->gamma:D

    goto :goto_0
.end method

.method public getVideoFormat()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    return v0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    .line 246
    iget-boolean v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depth:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->grabDepth()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    .line 247
    .local v2, image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    :goto_0
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v4

    .line 248
    .local v4, w:I
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    .line 249
    .local v1, h:I
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v3

    .line 250
    .local v3, iplDepth:I
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v0

    .line 252
    .local v0, channels:I
    iget-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v6, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v5, v6, :cond_3

    if-ne v0, v7, :cond_3

    .line 253
    iget-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v5, :cond_0

    .line 254
    invoke-static {v4, v1, v3, v8}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    iput-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 256
    :cond_0
    iget-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v6, 0x8

    invoke-static {v2, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 257
    iget-object v2, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 265
    .end local v2           #image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    :cond_1
    :goto_1
    return-object v2

    .line 246
    .end local v0           #channels:I
    .end local v1           #h:I
    .end local v3           #iplDepth:I
    .end local v4           #w:I
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->grabVideo()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    goto :goto_0

    .line 258
    .restart local v0       #channels:I
    .restart local v1       #h:I
    .restart local v2       #image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .restart local v3       #iplDepth:I
    .restart local v4       #w:I
    :cond_3
    iget-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v6, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v5, v6, :cond_1

    if-ne v0, v8, :cond_1

    .line 259
    iget-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v5, :cond_4

    .line 260
    invoke-static {v4, v1, v3, v7}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v5

    iput-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 262
    :cond_4
    iget-object v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v6, 0x6

    invoke-static {v2, v5, v6}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 263
    iget-object v2, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_1
.end method

.method public grabDepth()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 168
    iget v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    if-gez v9, :cond_0

    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->bpp:I

    .line 169
    .local v3, fmt:I
    :goto_0
    const/16 v6, 0x10

    .local v6, iplDepth:I
    const/4 v1, 0x1

    .line 170
    .local v1, channels:I
    packed-switch v3, :pswitch_data_0

    .line 177
    :pswitch_0
    sget-boolean v9, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 168
    .end local v1           #channels:I
    .end local v3           #fmt:I
    .end local v6           #iplDepth:I
    :cond_0
    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    goto :goto_0

    .line 174
    .restart local v1       #channels:I
    .restart local v3       #fmt:I
    .restart local v6       #iplDepth:I
    :pswitch_1
    const/16 v6, 0x10

    const/4 v1, 0x1

    .line 180
    :cond_1
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImageData:Lcom/googlecode/javacpp/BytePointer;

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    iget v11, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->deviceNumber:I

    invoke-static {v9, v10, v11, v3}, Lcom/googlecode/javacv/cpp/freenect;->freenect_sync_get_depth(Lcom/googlecode/javacpp/Pointer;[III)I

    move-result v2

    .line 181
    .local v2, err:I
    if-eqz v2, :cond_2

    .line 182
    new-instance v9, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freenect_sync_get_depth() Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Failed to get depth synchronously."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 185
    :cond_2
    const/16 v8, 0x280

    .local v8, w:I
    const/16 v4, 0x1e0

    .line 186
    .local v4, h:I
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    if-ne v9, v8, :cond_3

    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v9

    if-eq v9, v4, :cond_4

    .line 187
    :cond_3
    invoke-static {v8, v4, v6, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v9

    iput-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 189
    :cond_4
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImageData:Lcom/googlecode/javacpp/BytePointer;

    const/16 v11, 0x500

    invoke-static {v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetData(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/Pointer;I)V

    .line 191
    const/16 v9, 0x8

    if-le v6, v9, :cond_5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 194
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 195
    .local v0, bb:Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 196
    .local v5, in:Ljava/nio/ShortBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    .line 197
    .local v7, out:Ljava/nio/ShortBuffer;
    invoke-virtual {v7, v5}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 200
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v5           #in:Ljava/nio/ShortBuffer;
    .end local v7           #out:Ljava/nio/ShortBuffer;
    :cond_5
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/googlecode/javacv/FrameGrabber;->timestamp:J

    .line 201
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v9

    .line 170
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public grabVideo()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 205
    iget v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    if-gez v9, :cond_0

    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->bpp:I

    .line 206
    .local v3, fmt:I
    :goto_0
    const/16 v6, 0x8

    .local v6, iplDepth:I
    const/4 v1, 0x3

    .line 207
    .local v1, channels:I
    packed-switch v3, :pswitch_data_0

    .line 215
    :pswitch_0
    sget-boolean v9, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->$assertionsDisabled:Z

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 205
    .end local v1           #channels:I
    .end local v3           #fmt:I
    .end local v6           #iplDepth:I
    :cond_0
    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    goto :goto_0

    .line 208
    .restart local v1       #channels:I
    .restart local v3       #fmt:I
    .restart local v6       #iplDepth:I
    :pswitch_1
    const/16 v6, 0x8

    const/4 v1, 0x3

    .line 218
    :cond_1
    :goto_1
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImageData:Lcom/googlecode/javacpp/BytePointer;

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    iget v11, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->deviceNumber:I

    invoke-static {v9, v10, v11, v3}, Lcom/googlecode/javacv/cpp/freenect;->freenect_sync_get_video(Lcom/googlecode/javacpp/Pointer;[III)I

    move-result v2

    .line 219
    .local v2, err:I
    if-eqz v2, :cond_2

    .line 220
    new-instance v9, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "freenect_sync_get_video() Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": Failed to get video synchronously."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v9

    .line 210
    .end local v2           #err:I
    :pswitch_2
    const/16 v6, 0x8

    const/4 v1, 0x1

    goto :goto_1

    .line 211
    :pswitch_3
    const/16 v6, 0x10

    const/4 v1, 0x1

    goto :goto_1

    .line 212
    :pswitch_4
    const/16 v6, 0x8

    const/4 v1, 0x3

    goto :goto_1

    .line 213
    :pswitch_5
    const/16 v6, 0x8

    const/4 v1, 0x2

    goto :goto_1

    .line 223
    .restart local v2       #err:I
    :cond_2
    const/16 v8, 0x280

    .local v8, w:I
    const/16 v4, 0x1e0

    .line 224
    .local v4, h:I
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v9

    if-ne v9, v8, :cond_3

    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v9

    if-eq v9, v4, :cond_4

    .line 225
    :cond_3
    invoke-static {v8, v4, v6, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v9

    iput-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 227
    :cond_4
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImageData:Lcom/googlecode/javacpp/BytePointer;

    mul-int v11, v8, v1

    mul-int/2addr v11, v6

    div-int/lit8 v11, v11, 0x8

    invoke-static {v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSetData(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacpp/Pointer;I)V

    .line 229
    const/16 v9, 0x8

    if-le v6, v9, :cond_5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 232
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 233
    .local v0, bb:Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v5

    .line 234
    .local v5, in:Ljava/nio/ShortBuffer;
    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v7

    .line 235
    .local v7, out:Ljava/nio/ShortBuffer;
    invoke-virtual {v7, v5}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 238
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    .end local v5           #in:Ljava/nio/ShortBuffer;
    .end local v7           #out:Ljava/nio/ShortBuffer;
    :cond_5
    const/4 v9, 0x3

    if-ne v1, v9, :cond_6

    .line 239
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v10, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v11, 0x4

    invoke-static {v9, v10, v11}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 241
    :cond_6
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    int-to-long v9, v9

    iput-wide v9, p0, Lcom/googlecode/javacv/FrameGrabber;->timestamp:J

    .line 242
    iget-object v9, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v9

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public release()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->stop()V

    .line 88
    return-void
.end method

.method public setByteOrder(Ljava/nio/ByteOrder;)V
    .locals 0
    .parameter "byteOrder"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->byteOrder:Ljava/nio/ByteOrder;

    .line 109
    return-void
.end method

.method public setDepthFormat(I)V
    .locals 0
    .parameter "depthFormat"

    .prologue
    .line 115
    iput p1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    .line 116
    return-void
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 1
    .parameter "imageMode"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq p1, v0, :cond_0

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->returnImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 138
    :cond_0
    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameGrabber;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    .line 139
    return-void
.end method

.method public setVideoFormat(I)V
    .locals 0
    .parameter "videoFormat"

    .prologue
    .line 122
    iput p1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    .line 123
    return-void
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 142
    const-string v0, "depth"

    iget-object v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->format:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depth:Z

    .line 143
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 146
    invoke-static {}, Lcom/googlecode/javacv/cpp/freenect;->freenect_sync_stop()V

    .line 147
    return-void
.end method

.method public trigger()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->numBuffers:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_4

    .line 151
    iget-boolean v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depth:Z

    if-eqz v3, :cond_1

    .line 152
    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    if-gez v3, :cond_0

    iget v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->bpp:I

    .line 153
    .local v1, fmt:I
    :goto_1
    iget-object v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawDepthImageData:Lcom/googlecode/javacpp/BytePointer;

    iget-object v4, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    iget v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->deviceNumber:I

    invoke-static {v3, v4, v5, v1}, Lcom/googlecode/javacv/cpp/freenect;->freenect_sync_get_depth(Lcom/googlecode/javacpp/Pointer;[III)I

    move-result v0

    .line 154
    .local v0, err:I
    if-eqz v0, :cond_3

    .line 155
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freenect_sync_get_depth() Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Failed to get depth synchronously."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 152
    .end local v0           #err:I
    .end local v1           #fmt:I
    :cond_0
    iget v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->depthFormat:I

    goto :goto_1

    .line 158
    :cond_1
    iget v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    if-gez v3, :cond_2

    iget v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->bpp:I

    .line 159
    .restart local v1       #fmt:I
    :goto_2
    iget-object v3, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->rawVideoImageData:Lcom/googlecode/javacpp/BytePointer;

    iget-object v4, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->timestamp:[I

    iget v5, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->deviceNumber:I

    invoke-static {v3, v4, v5, v1}, Lcom/googlecode/javacv/cpp/freenect;->freenect_sync_get_video(Lcom/googlecode/javacpp/Pointer;[III)I

    move-result v0

    .line 160
    .restart local v0       #err:I
    if-eqz v0, :cond_3

    .line 161
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freenect_sync_get_video() Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Failed to get video synchronously."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    .end local v0           #err:I
    .end local v1           #fmt:I
    :cond_2
    iget v1, p0, Lcom/googlecode/javacv/OpenKinectFrameGrabber;->videoFormat:I

    goto :goto_2

    .line 150
    .restart local v0       #err:I
    .restart local v1       #fmt:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v0           #err:I
    .end local v1           #fmt:I
    :cond_4
    return-void
.end method
