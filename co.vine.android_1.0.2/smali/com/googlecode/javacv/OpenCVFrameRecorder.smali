.class public Lcom/googlecode/javacv/OpenCVFrameRecorder;
.super Lcom/googlecode/javacv/FrameRecorder;
.source "OpenCVFrameRecorder.java"


# static fields
.field private static loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

.field private static final windows:Z


# instance fields
.field private filename:Ljava/lang/String;

.field private writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    .line 73
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->windows:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 1
    .parameter "file"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/googlecode/javacv/OpenCVFrameRecorder;-><init>(Ljava/lang/String;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter "filename"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameRecorder;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    .line 54
    iput-object p1, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->filename:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->imageWidth:I

    .line 56
    iput p3, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->imageHeight:I

    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->pixelFormat:I

    .line 59
    sget-boolean v0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->windows:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->videoCodec:I

    .line 60
    const-wide/high16 v0, 0x403e

    iput-wide v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->frameRate:D

    .line 61
    return-void

    .line 59
    :cond_0
    sget v0, Lcom/googlecode/javacv/cpp/opencv_highgui;->CV_FOURCC_DEFAULT:I

    goto :goto_0
.end method

.method public static createDefault(Ljava/io/File;II)Lcom/googlecode/javacv/OpenCVFrameRecorder;
    .locals 1
    .parameter "f"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/googlecode/javacv/OpenCVFrameRecorder;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/OpenCVFrameRecorder;-><init>(Ljava/io/File;II)V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;II)Lcom/googlecode/javacv/OpenCVFrameRecorder;
    .locals 1
    .parameter "f"
    .parameter "w"
    .parameter "h"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/googlecode/javacv/OpenCVFrameRecorder;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/OpenCVFrameRecorder;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 39
    sget-object v1, Lcom/googlecode/javacv/OpenCVFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    if-eqz v1, :cond_0

    .line 40
    sget-object v1, Lcom/googlecode/javacv/OpenCVFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    throw v1

    .line 43
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/opencv_highgui;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/OpenCVFrameRecorder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/OpenCVFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

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
    .line 69
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 70
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenCVFrameRecorder;->release()V

    .line 71
    return-void
.end method

.method public record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 2
    .parameter "frame"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    invoke-static {v0, p1}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvWriteFrame(Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)I

    move-result v0

    if-nez v0, :cond_1

    .line 91
    new-instance v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v1, "cvWriteFrame(): Could not record frame"

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    new-instance v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v1, "Cannot record: There is no writer (Has start() been called?)"

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvReleaseVideoWriter(Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    .line 67
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->filename:Ljava/lang/String;

    iget v1, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->videoCodec:I

    iget-wide v2, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->frameRate:D

    iget v4, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->imageWidth:I

    iget v5, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->imageHeight:I

    invoke-static {v4, v5}, Lcom/googlecode/javacv/cpp/opencv_core;->cvSize(II)Lcom/googlecode/javacv/cpp/opencv_core$CvSize;

    move-result-object v4

    iget v5, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->pixelFormat:I

    invoke-static/range {v0 .. v5}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvCreateVideoWriter(Ljava/lang/String;IDLcom/googlecode/javacv/cpp/opencv_core$CvSize;I)Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    .line 79
    iget-object v0, p0, Lcom/googlecode/javacv/OpenCVFrameRecorder;->writer:Lcom/googlecode/javacv/cpp/opencv_highgui$CvVideoWriter;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v1, "cvCreateVideoWriter(): Could not create a writer"

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/googlecode/javacv/OpenCVFrameRecorder;->release()V

    .line 86
    return-void
.end method
