.class public Lcom/googlecode/javacv/VideoInputFrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "VideoInputFrameGrabber.java"


# static fields
.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field private bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private bgrImageData:Lcom/googlecode/javacpp/BytePointer;

.field private deviceNumber:I

.field private grayImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "deviceNumber"

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    .line 76
    iput-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    .line 77
    iput-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->grayImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 78
    iput-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImageData:Lcom/googlecode/javacpp/BytePointer;

    .line 65
    iput p1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    .line 66
    return-void
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/VideoInputFrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lcom/googlecode/javacv/VideoInputFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/VideoInputFrameGrabber;-><init>(I)V

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/VideoInputFrameGrabber;
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/VideoInputFrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDeviceDescriptions()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/googlecode/javacv/VideoInputFrameGrabber;->tryLoad()V

    .line 39
    invoke-static {}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->listDevices()I

    move-result v0

    .line 40
    .local v0, count:I
    new-array v1, v0, [Ljava/lang/String;

    .line 41
    .local v1, descriptions:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 42
    invoke-static {v2}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getDeviceName(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-object v1
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v1, Lcom/googlecode/javacv/VideoInputFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Lcom/googlecode/javacv/VideoInputFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 57
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/videoInputLib;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/VideoInputFrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/VideoInputFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

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
    .line 71
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 72
    invoke-virtual {p0}, Lcom/googlecode/javacv/VideoInputFrameGrabber;->release()V

    .line 73
    return-void
.end method

.method public getGamma()D
    .locals 4

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->gamma:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 83
    const-wide v0, 0x400199999999999aL

    .line 85
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->gamma:D

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getHeight(I)I

    move-result v0

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getWidth(I)I

    move-result v0

    goto :goto_0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    .line 158
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    if-nez v2, :cond_0

    .line 159
    new-instance v2, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v3, "videoInput is null. (Has start() been called?)"

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getWidth(I)I

    move-result v1

    .local v1, w:I
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getHeight(I)I

    move-result v0

    .line 162
    .local v0, h:I
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 163
    :cond_1
    const/4 v2, 0x3

    invoke-static {v1, v0, v7, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 164
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImageData:Lcom/googlecode/javacpp/BytePointer;

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    iget-object v4, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImageData:Lcom/googlecode/javacpp/BytePointer;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getPixels(ILcom/googlecode/javacpp/BytePointer;ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 168
    new-instance v2, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v3, "videoInput.getPixels() Error: Could not get pixels."

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->timestamp:J

    .line 172
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v3, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v2, v3, :cond_5

    .line 173
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->grayImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v2, :cond_4

    .line 174
    invoke-static {v1, v0, v7, v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->grayImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 176
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->grayImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v4, 0x6

    invoke-static {v2, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 177
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->grayImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 179
    :goto_0
    return-object v2

    :cond_5
    iget-object v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_0
.end method

.method public release()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/googlecode/javacv/VideoInputFrameGrabber;->stop()V

    .line 69
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/VideoInputFrameGrabber;->start(I)V

    .line 99
    return-void
.end method

.method public start(I)V
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    invoke-direct {v1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    .line 102
    iget-wide v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->frameRate:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    iget-wide v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->frameRate:D

    double-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->setIdealFramerate(II)V

    .line 105
    :cond_0
    iget v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->imageWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->imageHeight:I

    if-gtz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v1, v2, p1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->setupDevice(II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 107
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    .line 108
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v2, "videoInput.setupDevice() Error: Could not setup device."

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    iget v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->imageWidth:I

    iget v4, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->imageHeight:I

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->setupDevice(IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    :cond_4
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_17

    .line 111
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_NTSC_M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    .line 129
    .local v0, f:I
    :goto_0
    if-ltz v0, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v2, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v1, v2, v0}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->setFormat(II)Z

    move-result v1

    if-nez v1, :cond_17

    .line 130
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "videoInput.setFormat() Error: Could not set format "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    .end local v0           #f:I
    :cond_5
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x2

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x4

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_I"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x5

    goto :goto_0

    :cond_a
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_M"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, 0x6

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_N"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x7

    goto :goto_0

    :cond_c
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_PAL_NC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0x8

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x9

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/16 v0, 0xa

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_G"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v0, 0xb

    goto/16 :goto_0

    :cond_10
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_H"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v0, 0xc

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_K"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_K1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v0, 0xe

    goto/16 :goto_0

    :cond_13
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_SECAM_L"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_14
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_NTSC_M_J"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_15
    iget-object v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->format:Ljava/lang/String;

    const-string v2, "VI_NTSC_433"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/16 v0, 0x11

    goto/16 :goto_0

    :cond_16
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 133
    :cond_17
    return-void
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v1, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->stopDevice(I)V

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    .line 140
    :cond_0
    return-void
.end method

.method public trigger()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    if-nez v3, :cond_0

    .line 144
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v4, "videoInput is null. (Has start() been called?)"

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v4, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getWidth(I)I

    move-result v2

    .local v2, w:I
    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v4, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    invoke-virtual {v3, v4}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getHeight(I)I

    move-result v0

    .line 147
    .local v0, h:I
    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 148
    :cond_1
    const/16 v3, 0x8

    const/4 v4, 0x3

    invoke-static {v2, v0, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 149
    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v3

    iput-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImageData:Lcom/googlecode/javacpp/BytePointer;

    .line 152
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->numBuffers:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_3

    .line 153
    iget-object v3, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->myVideoInput:Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;

    iget v4, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->deviceNumber:I

    iget-object v5, p0, Lcom/googlecode/javacv/VideoInputFrameGrabber;->bgrImageData:Lcom/googlecode/javacpp/BytePointer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/videoInputLib$videoInput;->getPixels(ILcom/googlecode/javacpp/BytePointer;ZZ)Z

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 155
    :cond_3
    return-void
.end method
