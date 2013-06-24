.class public Lcom/googlecode/javacv/OpenCVFrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "OpenCVFrameGrabber.java"


# static fields
.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field private capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

.field private deviceNumber:I

.field private filename:Ljava/lang/String;

.field private return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "deviceNumber"

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->deviceNumber:I

    .line 75
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->filename:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    .line 77
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 58
    iput p1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->deviceNumber:I

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 61
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;-><init>(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filename"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->deviceNumber:I

    .line 75
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->filename:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    .line 77
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 64
    iput-object p1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->filename:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/OpenCVFrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/googlecode/javacv/OpenCVFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;-><init>(I)V

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/OpenCVFrameGrabber;
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/googlecode/javacv/OpenCVFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/OpenCVFrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/googlecode/javacv/OpenCVFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDeviceDescriptions()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 36
    invoke-static {}, Lcom/googlecode/javacv/OpenCVFrameGrabber;->tryLoad()V

    .line 37
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device enumeration not support by OpenCV."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v1, Lcom/googlecode/javacv/OpenCVFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/googlecode/javacv/OpenCVFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 50
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/opencv_highgui;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/OpenCVFrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/OpenCVFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

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
    .line 70
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 71
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;->release()V

    .line 72
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v1, :cond_0

    .line 90
    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFormat()Ljava/lang/String;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v1

    double-to-int v0, v1

    .line 93
    .local v0, fourcc:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, v0, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getFrameNumber()I
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFrameNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getFrameRate()D
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFrameRate()D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    goto :goto_0
.end method

.method public getGamma()D
    .locals 4

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->gamma:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 82
    const-wide v0, 0x400199999999999aL

    .line 84
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->gamma:D

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    .line 112
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    .line 104
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getLengthInFrames()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getLengthInFrames()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getLengthInTime()J
    .locals 4

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;->getLengthInFrames()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;->getFrameRate()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPixelFormat()I
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getPixelFormat()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 4

    .prologue
    .line 146
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getTimestamp()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 234
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvRetrieveFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v1

    .line 235
    .local v1, image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    if-nez v1, :cond_0

    .line 236
    new-instance v2, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v3, "cvRetrieveFrame() Error: Could not retrieve frame. (Has start() been called?)"

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_0
    iget-boolean v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->triggerMode:Z

    if-nez v2, :cond_1

    .line 239
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGrabFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)I

    move-result v0

    .line 240
    .local v0, err:I
    if-nez v0, :cond_1

    .line 241
    new-instance v2, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v3, "cvGrabFrame() Error: Could not grab frame. (Has start() been called?)"

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    .end local v0           #err:I
    :cond_1
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v3, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v2, v3, :cond_3

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v2

    if-le v2, v5, :cond_3

    .line 246
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v2, :cond_2

    .line 247
    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object v2

    .line 250
    :cond_3
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v3, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v2, v3, :cond_5

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 251
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v2, :cond_4

    .line 252
    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    iput-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 254
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto :goto_0

    .line 256
    :cond_5
    iput-object v1, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

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
    .line 67
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenCVFrameGrabber;->stop()V

    .line 68
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 4
    .parameter "frameNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_1

    .line 137
    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameGrabber;->setFrameNumber(I)V

    .line 143
    :cond_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x1

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cvSetCaptureProperty() Error: Could not set CV_CAP_PROP_POS_FRAMES to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 1
    .parameter "imageMode"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq p1, v0, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 128
    :cond_0
    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameGrabber;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    .line 129
    return-void
.end method

.method public setTimestamp(J)V
    .locals 6
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const-wide v4, 0x408f400000000000L

    .line 150
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v0, :cond_1

    .line 151
    invoke-super {p0, p1, p2}, Lcom/googlecode/javacv/FrameGrabber;->setTimestamp(J)V

    .line 157
    :cond_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v1, 0x0

    long-to-double v2, p1

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    move-result v0

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cvSetCaptureProperty() Error: Could not set CV_CAP_PROP_POS_MSEC to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    long-to-double v2, p1

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/16 v9, 0x9

    const-wide/16 v3, 0x0

    .line 168
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->filename:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->filename:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 169
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->filename:Ljava/lang/String;

    invoke-static {v5}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvCreateFileCapture(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    move-result-object v5

    iput-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    .line 170
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v5, :cond_1

    .line 171
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v4, "cvCreateFileCapture() Error: Could not create camera capture."

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 174
    :cond_0
    iget v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->deviceNumber:I

    invoke-static {v5}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvCreateCameraCapture(I)Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    move-result-object v5

    iput-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    .line 175
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-nez v5, :cond_1

    .line 176
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v4, "cvCreateCameraCapture() Error: Could not create camera capture."

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_1
    iget v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageWidth:I

    if-lez v5, :cond_2

    .line 180
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v6, 0x3

    iget v7, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageWidth:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    move-result v5

    if-nez v5, :cond_2

    .line 181
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    iget v6, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageWidth:I

    int-to-double v6, v6

    invoke-static {v5, v9, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    .line 184
    :cond_2
    iget v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageHeight:I

    if-lez v5, :cond_3

    .line 185
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v6, 0x4

    iget v7, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageHeight:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    move-result v5

    if-nez v5, :cond_3

    .line 186
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    iget v6, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageHeight:I

    int-to-double v6, v6

    invoke-static {v5, v9, v6, v7}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    .line 189
    :cond_3
    iget-wide v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->frameRate:D

    cmpl-double v5, v5, v3

    if-lez v5, :cond_4

    .line 190
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/4 v6, 0x5

    iget-wide v7, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->frameRate:D

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    .line 192
    :cond_4
    iget v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->bpp:I

    if-lez v5, :cond_5

    .line 193
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/16 v6, 0x8

    iget v7, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->bpp:I

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    .line 195
    :cond_5
    iget-object v5, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    const/16 v6, 0x10

    iget-object v7, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v8, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v7, v8, :cond_6

    const-wide/high16 v3, 0x3ff0

    :cond_6
    invoke-static {v5, v6, v3, v4}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvSetCaptureProperty(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;ID)I

    .line 201
    const/4 v0, 0x0

    .local v0, count:I
    move v1, v0

    .line 202
    .end local v0           #count:I
    .local v1, count:I
    :goto_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #count:I
    .restart local v0       #count:I
    const/16 v3, 0x64

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGrabFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvRetrieveFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v3

    if-nez v3, :cond_7

    .line 204
    const-wide/16 v3, 0x64

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    .line 205
    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .end local v1           #count:I
    .restart local v0       #count:I
    :catch_0
    move-exception v3

    move v1, v0

    .end local v0           #count:I
    .restart local v1       #count:I
    goto :goto_0

    .line 208
    .end local v1           #count:I
    .restart local v0       #count:I
    :cond_7
    iget-boolean v3, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->triggerMode:Z

    if-nez v3, :cond_8

    .line 209
    iget-object v3, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v3}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGrabFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)I

    move-result v2

    .line 210
    .local v2, err:I
    if-nez v2, :cond_8

    .line 211
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v4, "cvGrabFrame() Error: Could not grab frame. (Has start() been called?)"

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 214
    .end local v2           #err:I
    :cond_8
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvReleaseCapture(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    .line 221
    :cond_0
    return-void
.end method

.method public trigger()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 224
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->numBuffers:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvQueryFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/OpenCVFrameGrabber;->capture:Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvGrabFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvCapture;)I

    move-result v0

    .line 228
    .local v0, err:I
    if-nez v0, :cond_1

    .line 229
    new-instance v2, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v3, "cvGrabFrame() Error: Could not grab frame. (Has start() been called?)"

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_1
    return-void
.end method
