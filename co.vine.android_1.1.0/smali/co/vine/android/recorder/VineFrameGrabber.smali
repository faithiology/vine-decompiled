.class public Lco/vine/android/recorder/VineFrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "VineFrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/VineFrameGrabber$1;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field private audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

.field private audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

.field private buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

.field private filename:Ljava/lang/String;

.field private frame:Lcom/googlecode/javacv/Frame;

.field private frameGrabbed:Z

.field private got_frame:[I

.field private img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

.field private oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

.field private picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

.field private picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

.field private pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

.field private pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

.field private return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private samples_buf:[Ljava/nio/Buffer;

.field private samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

.field private samples_ptr:[Lcom/googlecode/javacpp/BytePointer;

.field private sizeof_pkt:I

.field private video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

.field private video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-class v0, Lco/vine/android/recorder/VineFrameGrabber;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z

    .line 149
    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/recorder/VineFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    return-void

    .line 139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/vine/android/recorder/VineFrameGrabber;-><init>(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "filename"

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 175
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_register_all()V

    .line 176
    invoke-static {}, Lcom/googlecode/javacv/cpp/avdevice;->avdevice_register_all()V

    .line 177
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->av_register_all()V

    .line 178
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->avformat_network_init()I

    .line 180
    iput-object p1, p0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public static createDefault(I)Lco/vine/android/recorder/VineFrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lco/vine/android/recorder/VineFrameGrabber;
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lco/vine/android/recorder/VineFrameGrabber;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/VineFrameGrabber;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lco/vine/android/recorder/VineFrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lco/vine/android/recorder/VineFrameGrabber;

    invoke-direct {v0, p0}, Lco/vine/android/recorder/VineFrameGrabber;-><init>(Ljava/lang/String;)V

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
    .line 141
    invoke-static {}, Lco/vine/android/recorder/VineFrameGrabber;->tryLoad()V

    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Device enumeration not support by FFmpeg."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processImage()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 532
    sget-object v0, Lco/vine/android/recorder/VineFrameGrabber$1;->$SwitchMap$com$googlecode$javacv$FrameGrabber$ImageMode:[I

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    invoke-virtual {v1}, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 563
    sget-boolean v0, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 536
    :pswitch_0
    iget-boolean v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->deinterlace:Z

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v2

    iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v3

    iget-object v4, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_deinterlace(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacv/cpp/avcodec$AVPicture;III)I

    .line 541
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v1

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v2

    iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v3

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageWidth()I

    move-result v4

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageHeight()I

    move-result v5

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getPixelFormat()I

    move-result v6

    const/4 v7, 0x2

    move-object v9, v8

    move-object v10, v8

    invoke-static/range {v0 .. v10}, Lcom/googlecode/javacv/cpp/swscale;->sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;[D)Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 544
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    if-nez v0, :cond_1

    .line 545
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v1, "sws_getCachedContext() error: Cannot initialize the conversion context."

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    new-instance v1, Lcom/googlecode/javacpp/PointerPointer;

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v1, v2}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v4

    new-instance v5, Lcom/googlecode/javacpp/PointerPointer;

    iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v5, v3}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    iget-object v3, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v6

    move v3, v11

    invoke-static/range {v0 .. v6}, Lcom/googlecode/javacv/cpp/swscale;->sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I

    .line 551
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 552
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1, v11}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 565
    :cond_2
    :goto_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 566
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v1

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 567
    return-void

    .line 556
    :pswitch_1
    sget-boolean v0, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v0

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v0

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    if-eq v0, v1, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 558
    :cond_4
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1, v11}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->data(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 559
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1, v11}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 151
    sget-object v1, Lco/vine/android/recorder/VineFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 152
    sget-object v1, Lco/vine/android/recorder/VineFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 155
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 156
    const-class v1, Lcom/googlecode/javacv/cpp/avcodec;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 157
    const-class v1, Lcom/googlecode/javacv/cpp/avformat;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 158
    const-class v1, Lcom/googlecode/javacv/cpp/avdevice;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 159
    const-class v1, Lcom/googlecode/javacv/cpp/swscale;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, t:Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_1

    .line 162
    check-cast v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    .end local v0           #t:Ljava/lang/Throwable;
    sput-object v0, Lco/vine/android/recorder/VineFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v0

    .line 164
    .restart local v0       #t:Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lco/vine/android/recorder/VineFrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lco/vine/android/recorder/VineFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

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
    .line 243
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 244
    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    .line 245
    return-void
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getAudioChannels()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-nez v0, :cond_0

    .line 275
    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->iformat()Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;->name()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrameRate()D
    .locals 5

    .prologue
    .line 308
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v1, :cond_0

    .line 309
    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFrameRate()D

    move-result-wide v1

    .line 312
    :goto_0
    return-wide v1

    .line 311
    :cond_0
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->r_frame_rate()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v0

    .line 312
    .local v0, r:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v1, v3

    goto :goto_0
.end method

.method public getGamma()D
    .locals 4

    .prologue
    .line 266
    iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->gamma:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 267
    const-wide v0, 0x400199999999999aL

    .line 269
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->gamma:D

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    goto :goto_0
.end method

.method public getLengthInFrames()I
    .locals 4

    .prologue
    .line 358
    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getLengthInTime()J

    move-result-wide v0

    long-to-double v0, v0

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getFrameRate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getLengthInTime()J
    .locals 4

    .prologue
    const-wide/32 v2, 0xf4240

    .line 361
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->duration()J

    move-result-wide v0

    mul-long/2addr v0, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getPixelFormat()I
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v0, v1, :cond_3

    .line 295
    :cond_0
    iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pixelFormat:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 296
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v1, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 303
    :goto_0
    return v0

    .line 296
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 298
    :cond_2
    iget v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pixelFormat:I

    goto :goto_0

    .line 300
    :cond_3
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v0, :cond_4

    .line 301
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v0

    goto :goto_0

    .line 303
    :cond_4
    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getPixelFormat()I

    move-result v0

    goto :goto_0
.end method

.method public getSampleFormat()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getSampleFormat()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v0

    goto :goto_0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getSampleRate()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I

    move-result v0

    goto :goto_0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 570
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lco/vine/android/recorder/VineFrameGrabber;->grabFrame(ZZ)Lcom/googlecode/javacv/Frame;

    move-result-object v0

    .line 571
    .local v0, frame:Lcom/googlecode/javacv/Frame;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public grab(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 2
    .parameter "processImage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 575
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lco/vine/android/recorder/VineFrameGrabber;->grabFrame(ZZ)Lcom/googlecode/javacv/Frame;

    move-result-object v0

    .line 576
    .local v0, frame:Lcom/googlecode/javacv/Frame;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public grabFrame()Lcom/googlecode/javacv/Frame;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 579
    invoke-virtual {p0, v0, v0}, Lco/vine/android/recorder/VineFrameGrabber;->grabFrame(ZZ)Lcom/googlecode/javacv/Frame;

    move-result-object v0

    return-object v0
.end method

.method public grabFrame(ZZ)Lcom/googlecode/javacv/Frame;
    .locals 18
    .parameter "processImage"
    .parameter "doAudio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 582
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z

    if-eqz v13, :cond_1

    .line 583
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z

    .line 584
    if-eqz p1, :cond_0

    .line 585
    invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->processImage()V

    .line 587
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v14, v13, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 588
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;

    .line 589
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    .line 681
    :goto_0
    return-object v13

    .line 591
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->isNull()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 592
    :cond_2
    new-instance v13, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v14, "Could not grab: No AVFormatContext. (Has start() been called?)"

    invoke-direct {v13, v14}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v13

    .line 594
    :cond_3
    const/4 v3, 0x0

    .line 595
    .local v3, done:Z
    :cond_4
    :goto_1
    if-nez v3, :cond_10

    .line 596
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I

    move-result v13

    if-gtz v13, :cond_5

    .line 597
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v13, v14}, Lcom/googlecode/javacv/cpp/avformat;->av_read_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v13

    if-gez v13, :cond_5

    .line 599
    const/4 v13, 0x0

    goto :goto_0

    .line 604
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v14

    if-ne v13, v14, :cond_8

    .line 606
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_decode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v5

    .line 609
    .local v5, len:I
    if-ltz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-eqz v13, :cond_7

    .line 610
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v13}, Lcom/googlecode/javacv/cpp/avcodec;->av_frame_get_best_effort_timestamp(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)J

    move-result-wide v8

    .line 611
    .local v8, pts:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v12

    .line 612
    .local v12, time_base:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    const-wide/32 v13, 0xf4240

    mul-long/2addr v13, v8

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I

    move-result v15

    int-to-long v15, v15

    mul-long/2addr v13, v15

    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I

    move-result v15

    int-to-long v15, v15

    div-long/2addr v13, v15

    move-object/from16 v0, p0

    iput-wide v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J

    .line 614
    const-wide v13, 0x412e848000000000L

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getFrameRate()D

    move-result-wide v15

    mul-double/2addr v13, v15

    move-object/from16 v0, p0

    iget-wide v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J

    long-to-double v15, v15

    div-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I

    .line 615
    if-eqz p1, :cond_6

    .line 616
    invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->processImage()V

    .line 618
    :cond_6
    const/4 v3, 0x1

    .line 619
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    iput-object v14, v13, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 620
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;

    .line 676
    .end local v5           #len:I
    .end local v8           #pts:J
    .end local v12           #time_base:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I

    move-result v13

    if-gtz v13, :cond_4

    .line 678
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v13}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    goto/16 :goto_1

    .line 622
    :cond_8
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v14

    if-ne v13, v14, :cond_7

    .line 623
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I

    move-result v13

    if-gtz v13, :cond_9

    .line 626
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->sizeof_pkt:I

    int-to-long v15, v15

    invoke-static/range {v13 .. v16}, Lcom/googlecode/javacpp/BytePointer;->memcpy(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;

    .line 628
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v13}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_get_frame_defaults(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v16, v0

    invoke-static/range {v13 .. v16}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_decode_audio4(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[ILcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v5

    .line 631
    .restart local v5       #len:I
    if-gtz v5, :cond_a

    .line 633
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    goto :goto_2

    .line 635
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v14

    invoke-virtual {v14, v5}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 636
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I

    move-result v14

    sub-int/2addr v14, v5

    invoke-virtual {v13, v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 637
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    if-eqz v13, :cond_7

    .line 639
    const/4 v3, 0x1

    .line 640
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/googlecode/javacv/Frame;->image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 641
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->format()I

    move-result v10

    .line 642
    .local v10, sample_format:I
    invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_sample_fmt_is_planar(I)I

    move-result v13

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v13}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->channels()I

    move-result v7

    .line 643
    .local v7, planes:I
    :goto_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v15}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->nb_samples()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v16

    const/16 v17, 0x1

    invoke-static/range {v13 .. v17}, Lcom/googlecode/javacv/cpp/avutil;->av_samples_get_buffer_size([IIIII)I

    move-result v13

    div-int v2, v13, v7

    .line 645
    .local v2, data_size:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    array-length v13, v13

    if-eq v13, v7, :cond_c

    .line 646
    :cond_b
    new-array v13, v7, [Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;

    .line 647
    new-array v13, v7, [Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iput-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    .line 649
    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    iput-object v14, v13, Lcom/googlecode/javacv/Frame;->samples:[Ljava/nio/Buffer;

    .line 650
    invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_get_bytes_per_sample(I)I

    move-result v13

    div-int v11, v2, v13

    .line 651
    .local v11, sample_size:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_4
    if-ge v4, v7, :cond_7

    .line 652
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v13, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->data(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v6

    .line 653
    .local v6, p:Lcom/googlecode/javacpp/BytePointer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v13, v13, v4

    invoke-virtual {v6, v13}, Lcom/googlecode/javacpp/BytePointer;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v13, v13, v4

    invoke-virtual {v13}, Lcom/googlecode/javacpp/BytePointer;->capacity()I

    move-result v13

    if-ge v13, v2, :cond_f

    .line 654
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_ptr:[Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v6, v2}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v14

    aput-object v14, v13, v4

    .line 655
    invoke-virtual {v6}, Lcom/googlecode/javacpp/BytePointer;->asBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 656
    .local v1, b:Ljava/nio/ByteBuffer;
    packed-switch v10, :pswitch_data_0

    .line 667
    sget-boolean v13, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z

    if-nez v13, :cond_f

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    .line 642
    .end local v1           #b:Ljava/nio/ByteBuffer;
    .end local v2           #data_size:I
    .end local v4           #i:I
    .end local v6           #p:Lcom/googlecode/javacpp/BytePointer;
    .end local v7           #planes:I
    .end local v11           #sample_size:I
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_3

    .line 658
    .restart local v1       #b:Ljava/nio/ByteBuffer;
    .restart local v2       #data_size:I
    .restart local v4       #i:I
    .restart local v6       #p:Lcom/googlecode/javacpp/BytePointer;
    .restart local v7       #planes:I
    .restart local v11       #sample_size:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    aput-object v1, v13, v4

    .line 670
    .end local v1           #b:Ljava/nio/ByteBuffer;
    :cond_f
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    aget-object v13, v13, v4

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 651
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 660
    .restart local v1       #b:Ljava/nio/ByteBuffer;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    aput-object v14, v13, v4

    goto :goto_5

    .line 662
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    aput-object v14, v13, v4

    goto :goto_5

    .line 664
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v14

    aput-object v14, v13, v4

    goto :goto_5

    .line 666
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_buf:[Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v14

    aput-object v14, v13, v4

    goto :goto_5

    .line 681
    .end local v1           #b:Ljava/nio/ByteBuffer;
    .end local v2           #data_size:I
    .end local v4           #i:I
    .end local v5           #len:I
    .end local v6           #p:Lcom/googlecode/javacpp/BytePointer;
    .end local v7           #planes:I
    .end local v10           #sample_format:I
    .end local v11           #sample_size:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    goto/16 :goto_0

    .line 656
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public release()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 185
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 187
    :cond_0
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 191
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v0, :cond_2

    .line 192
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 193
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    .line 195
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 197
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 201
    :cond_3
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 203
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 207
    :cond_4
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I

    .line 209
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 213
    :cond_5
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v0, :cond_6

    .line 214
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 215
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 219
    :cond_6
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v0, :cond_7

    .line 220
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I

    .line 221
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 225
    :cond_7
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->isNull()Z

    move-result v0

    if-nez v0, :cond_8

    .line 226
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->avformat_close_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)V

    .line 227
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 230
    :cond_8
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/swscale;->sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V

    .line 232
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 235
    :cond_9
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I

    .line 236
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 237
    iput-boolean v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z

    .line 238
    iput-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    .line 239
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J

    .line 240
    iput v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I

    .line 241
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
    .line 326
    const-wide/32 v0, 0xf4240

    int-to-long v2, p1

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->getFrameRate()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lco/vine/android/recorder/VineFrameGrabber;->setTimestamp(J)V

    .line 327
    return-void
.end method

.method public setTimestamp(J)V
    .locals 11
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0xf4240

    const-wide/high16 v2, -0x8000

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 331
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-nez v0, :cond_1

    .line 332
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/googlecode/javacv/FrameGrabber;->setTimestamp(J)V

    .line 354
    :goto_0
    return-void

    .line 334
    :cond_1
    mul-long v0, p1, v4

    div-long p1, v0, v4

    .line 336
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->start_time()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 337
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->start_time()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 339
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    const/4 v1, -0x1

    const-wide v6, 0x7fffffffffffffffL

    move-wide v4, p1

    invoke-static/range {v0 .. v8}, Lcom/googlecode/javacv/cpp/avformat;->avformat_seek_file(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;IJJJI)I

    move-result v9

    .local v9, ret:I
    if-gez v9, :cond_3

    .line 340
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avformat_seek_file() error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Could not seek file to timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_3
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_flush_buffers(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)V

    .line 343
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_flush_buffers(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)V

    .line 346
    :cond_4
    iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J

    cmp-long v0, v0, p1

    if-lez v0, :cond_5

    invoke-virtual {p0, v10}, Lco/vine/android/recorder/VineFrameGrabber;->grab(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    if-nez v0, :cond_4

    .line 349
    :cond_5
    iget-wide v0, p0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_6

    invoke-virtual {p0, v10}, Lco/vine/android/recorder/VineFrameGrabber;->grab(Z)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    if-nez v0, :cond_5

    .line 352
    :cond_6
    iput-boolean v8, p0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z

    goto :goto_0
.end method

.method public start()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 366
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 367
    new-instance v14, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 368
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 369
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 370
    new-instance v14, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-direct {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 371
    new-instance v14, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-direct {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->sizeof()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->sizeof_pkt:I

    .line 373
    const/4 v14, 0x1

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->got_frame:[I

    .line 374
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 375
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameGrabbed:Z

    .line 376
    new-instance v14, Lcom/googlecode/javacv/Frame;

    invoke-direct {v14}, Lcom/googlecode/javacv/Frame;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frame:Lcom/googlecode/javacv/Frame;

    .line 377
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->timestamp:J

    .line 378
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameNumber:I

    .line 380
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 383
    const/4 v3, 0x0

    .line 384
    .local v3, f:Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;

    invoke-static {v14}, Lcom/googlecode/javacv/cpp/avformat;->av_find_input_format(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;

    move-result-object v3

    if-nez v3, :cond_0

    .line 386
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "av_find_input_format() error: Could not find input format \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->format:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 389
    :cond_0
    new-instance v8, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;

    const/4 v14, 0x0

    invoke-direct {v8, v14}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 390
    .local v8, options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D

    const-wide/16 v16, 0x0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 391
    move-object/from16 v0, p0

    iget-wide v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->frameRate:D

    const v16, 0xf4628

    invoke-static/range {v14 .. v16}, Lcom/googlecode/javacv/cpp/avutil;->av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v9

    .line 392
    .local v9, r:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    const-string v14, "framerate"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 394
    .end local v9           #r:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v15, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq v14, v15, :cond_2

    .line 395
    const-string v15, "pixel_format"

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v16, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v16

    if-ne v14, v0, :cond_6

    const-string v14, "bgr24"

    :goto_0
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v15, v14, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 397
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageWidth:I

    if-lez v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageHeight:I

    if-lez v14, :cond_3

    .line 398
    const-string v14, "video_size"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageWidth:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageHeight:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 400
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->sampleRate:I

    if-lez v14, :cond_4

    .line 401
    const-string v14, "sample_rate"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->sampleRate:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 403
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audioChannels:I

    if-lez v14, :cond_5

    .line 404
    const-string v14, "channels"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->audioChannels:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v14, v15, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 406
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;

    invoke-static {v14, v15, v3, v8}, Lcom/googlecode/javacv/cpp/avformat;->avformat_open_input(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Ljava/lang/String;Lcom/googlecode/javacv/cpp/avformat$AVInputFormat;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v10

    .local v10, ret:I
    if-gez v10, :cond_7

    .line 407
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "avformat_open_input() error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Could not open input \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\". (Has setFormat() been called?)"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 395
    .end local v10           #ret:I
    :cond_6
    const-string v14, "gray8"

    goto/16 :goto_0

    .line 409
    .restart local v10       #ret:I
    :cond_7
    invoke-static {v8}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    const/4 v15, 0x0

    invoke-static {v14, v15}, Lcom/googlecode/javacv/cpp/avformat;->avformat_find_stream_info(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v10

    if-gez v10, :cond_8

    .line 413
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "avformat_find_stream_info() error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Could not find stream information."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 417
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/googlecode/javacv/cpp/avformat;->av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V

    .line 420
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 421
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->nb_streams()I

    move-result v7

    .line 422
    .local v7, nb_streams:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_b

    .line 423
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v14, v6}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v12

    .line 425
    .local v12, st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
    invoke-virtual {v12}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v1

    .line 426
    .local v1, c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v14, :cond_a

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type()I

    move-result v14

    if-nez v14, :cond_a

    .line 427
    move-object/from16 v0, p0

    iput-object v12, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 428
    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 422
    :cond_9
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 429
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v14, :cond_9

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    .line 430
    move-object/from16 v0, p0

    iput-object v12, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 431
    move-object/from16 v0, p0

    iput-object v1, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto :goto_2

    .line 434
    .end local v1           #c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;
    .end local v12           #st:Lcom/googlecode/javacv/cpp/avformat$AVStream;
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v14, :cond_c

    .line 435
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Did not find a video or audio stream inside \""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->filename:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\"."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 438
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v14, :cond_14

    .line 440
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v14

    invoke-static {v14}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_decoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v2

    .line 441
    .local v2, codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    if-nez v2, :cond_d

    .line 442
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "avcodec_find_decoder() error: Unsupported video format or codec not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 446
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    const/4 v15, 0x0

    invoke-static {v14, v2, v15}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v10

    if-gez v10, :cond_e

    .line 447
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "avcodec_open2() error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Could not open video codec."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 451
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v14

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num()I

    move-result v14

    const/16 v15, 0x3e8

    if-le v14, v15, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v14

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v14

    const/16 v15, 0x3e8

    invoke-virtual {v14, v15}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    .line 456
    :cond_f
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v14, :cond_10

    .line 457
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v15, "avcodec_alloc_frame() error: Could not allocate raw picture frame."

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 459
    :cond_10
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v14, :cond_11

    .line 460
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v15, "avcodec_alloc_frame() error: Could not allocate RGB picture frame."

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 463
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageWidth()I

    move-result v14

    if-lez v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageWidth()I

    move-result v13

    .line 464
    .local v13, width:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageHeight()I

    move-result v14

    if-lez v14, :cond_13

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getImageHeight()I

    move-result v5

    .line 466
    .local v5, height:I
    :goto_4
    sget-object v14, Lco/vine/android/recorder/VineFrameGrabber$1;->$SwitchMap$com$googlecode$javacv$FrameGrabber$ImageMode:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    invoke-virtual {v15}, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 488
    sget-boolean v14, Lco/vine/android/recorder/VineFrameGrabber;->$assertionsDisabled:Z

    if-nez v14, :cond_14

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14}, Ljava/lang/AssertionError;-><init>()V

    throw v14

    .line 463
    .end local v5           #height:I
    .end local v13           #width:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v13

    goto :goto_3

    .line 464
    .restart local v13       #width:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v5

    goto :goto_4

    .line 469
    .restart local v5       #height:I
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFrameGrabber;->getPixelFormat()I

    move-result v4

    .line 472
    .local v4, fmt:I
    invoke-static {v4, v13, v5}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_get_size(III)I

    move-result v11

    .line 473
    .local v11, size:I
    new-instance v14, Lcom/googlecode/javacpp/BytePointer;

    int-to-long v15, v11

    invoke-static/range {v15 .. v16}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    .line 477
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->picture_rgb:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v14, v15, v4, v13, v5}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 479
    const/16 v14, 0x8

    const/4 v15, 0x1

    invoke-static {v13, v5, v14, v15}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 492
    .end local v2           #codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    .end local v4           #fmt:I
    .end local v5           #height:I
    .end local v11           #size:I
    .end local v13           #width:I
    :cond_14
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v14, :cond_17

    .line 494
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v14

    invoke-static {v14}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_decoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v2

    .line 495
    .restart local v2       #codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    if-nez v2, :cond_15

    .line 496
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "avcodec_find_decoder() error: Unsupported audio format or codec not found: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 483
    .restart local v5       #height:I
    .restart local v13       #width:I
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->buffer_rgb:Lcom/googlecode/javacpp/BytePointer;

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v14}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/VineFrameGrabber;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v15}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v15

    const/16 v16, 0x8

    const/16 v17, 0x1

    invoke-static/range {v14 .. v17}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_5

    .line 500
    .end local v5           #height:I
    .end local v13           #width:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    const/4 v15, 0x0

    invoke-static {v14, v2, v15}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v10

    if-gez v10, :cond_16

    .line 501
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "avcodec_open2() error "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": Could not open audio codec."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 505
    :cond_16
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/recorder/VineFrameGrabber;->samples_frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v14, :cond_17

    .line 506
    new-instance v14, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v15, "avcodec_alloc_frame() error: Could not allocate audio frame."

    invoke-direct {v14, v15}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v14

    .line 509
    .end local v2           #codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;
    :cond_17
    return-void

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    .line 513
    return-void
.end method

.method public trigger()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    :cond_0
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v2, "Could not trigger: No AVFormatContext. (Has start() been called?)"

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_1
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 520
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt2:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 521
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 523
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->numBuffers:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_3

    .line 524
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    iget-object v2, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/avformat;->av_read_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v1

    if-gez v1, :cond_4

    .line 529
    :cond_3
    return-void

    .line 527
    :cond_4
    iget-object v1, p0, Lco/vine/android/recorder/VineFrameGrabber;->pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_free_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
