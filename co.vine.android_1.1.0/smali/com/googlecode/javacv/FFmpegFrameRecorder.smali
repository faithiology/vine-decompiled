.class public Lcom/googlecode/javacv/FFmpegFrameRecorder;
.super Lcom/googlecode/javacv/FrameRecorder;
.source "FFmpegFrameRecorder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;


# instance fields
.field private audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

.field private audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

.field private audio_input_frame_size:I

.field private audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

.field private audio_outbuf_size:I

.field private audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

.field private audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

.field private filename:Ljava/lang/String;

.field private frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

.field private got_audio_packet:[I

.field private got_video_packet:[I

.field private img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

.field private oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

.field private oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

.field private picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

.field private picture_buf:Lcom/googlecode/javacpp/BytePointer;

.field private samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

.field private samples_in:[Lcom/googlecode/javacpp/Pointer;

.field private samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

.field private samples_out:[Lcom/googlecode/javacpp/BytePointer;

.field private samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

.field private tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

.field private video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

.field private video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

.field private video_outbuf:Lcom/googlecode/javacpp/BytePointer;

.field private video_outbuf_size:I

.field private video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

.field private video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->$assertionsDisabled:Z

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .parameter "file"
    .parameter "audioChannels"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/io/File;III)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 1
    .parameter "file"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/io/File;III)V

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/io/File;III)V
    .locals 1
    .parameter "file"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "audioChannels"

    .prologue
    .line 116
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/lang/String;II)V

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "filename"
    .parameter "audioChannels"

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, v0, v0, p2}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/lang/String;III)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "filename"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/lang/String;III)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 4
    .parameter "filename"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "audioChannels"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 118
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameRecorder;-><init>()V

    .line 120
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->av_register_all()V

    .line 121
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->avformat_network_init()I

    .line 123
    iput-object p1, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    .line 124
    iput p2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    .line 125
    iput p3, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    .line 126
    iput p4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioChannels:I

    .line 128
    iput v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->pixelFormat:I

    .line 129
    iput v3, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoCodec:I

    .line 130
    const v0, 0x61a80

    iput v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoBitrate:I

    .line 131
    const-wide/high16 v0, 0x403e

    iput-wide v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frameRate:D

    .line 133
    iput v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleFormat:I

    .line 134
    iput v3, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioCodec:I

    .line 135
    const v0, 0xfa00

    iput v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioBitrate:I

    .line 136
    const v0, 0xac44

    iput v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleRate:I

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->interleaved:Z

    .line 140
    new-instance v0, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 141
    new-instance v0, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V

    iput-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 142
    return-void
.end method

.method public static createDefault(Ljava/io/File;II)Lcom/googlecode/javacv/FFmpegFrameRecorder;
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
    .line 80
    new-instance v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/io/File;II)V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;II)Lcom/googlecode/javacv/FFmpegFrameRecorder;
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
    .line 81
    new-instance v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;

    invoke-direct {v0, p0, p1, p2}, Lcom/googlecode/javacv/FFmpegFrameRecorder;-><init>(Ljava/lang/String;II)V

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
    .line 85
    sget-object v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    if-eqz v1, :cond_0

    .line 86
    sget-object v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    throw v1

    .line 89
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 90
    const-class v1, Lcom/googlecode/javacv/cpp/avcodec;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 91
    const-class v1, Lcom/googlecode/javacv/cpp/avformat;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 92
    const-class v1, Lcom/googlecode/javacv/cpp/swscale;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, t:Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    .end local v0           #t:Ljava/lang/Throwable;
    sput-object v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    throw v0

    .line 97
    .restart local v0       #t:Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/FFmpegFrameRecorder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

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
    .line 210
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 211
    invoke-virtual {p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 212
    return-void
.end method

.method public getFrameNumber()I
    .locals 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameRecorder;->getFrameNumber()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 4

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->getFrameNumber()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->getFrameRate()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 1
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 592
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V

    .line 593
    return-void
.end method

.method public record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)V
    .locals 17
    .parameter "image"
    .parameter "pixelFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 595
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v1, :cond_0

    .line 596
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v4, "No video output stream (Is imageWidth > 0 && imageHeight > 0 and has start() been called?)"

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    :cond_0
    if-nez p1, :cond_1

    .line 647
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_11

    .line 649
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 650
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 652
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    new-instance v4, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v4, v5}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 653
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    const-class v4, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    invoke-static {v4}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 679
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    monitor-enter v4

    .line 681
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->interleaved:Z

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v1, :cond_15

    .line 682
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v5}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v15

    .local v15, ret:I
    if-gez v15, :cond_16

    .line 683
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "av_interleaved_write_frame() error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while writing interleaved video frame."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    .end local v15           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 605
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    .line 606
    .local v2, width:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    .line 607
    .local v3, height:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v16

    .line 608
    .local v16, step:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v13

    .line 610
    .local v13, data:Lcom/googlecode/javacpp/BytePointer;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 611
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v14

    .line 612
    .local v14, depth:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v12

    .line 613
    .local v12, channels:I
    const/16 v1, 0x8

    if-eq v14, v1, :cond_2

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_5

    :cond_2
    const/4 v1, 0x3

    if-ne v12, v1, :cond_5

    .line 614
    const/16 p2, 0x3

    .line 629
    .end local v12           #channels:I
    .end local v14           #depth:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v1

    if-eq v1, v3, :cond_10

    .line 631
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p2

    invoke-static/range {v1 .. v11}, Lcom/googlecode/javacv/cpp/swscale;->sws_getCachedContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;IIIIIIILcom/googlecode/javacv/cpp/swscale$SwsFilter;Lcom/googlecode/javacv/cpp/swscale$SwsFilter;[D)Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    if-nez v1, :cond_f

    .line 634
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v4, "sws_getCachedContext() error: Cannot initialize the conversion context."

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    .restart local v12       #channels:I
    .restart local v14       #depth:I
    :cond_5
    const/16 v1, 0x8

    if-eq v14, v1, :cond_6

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_7

    :cond_6
    const/4 v1, 0x1

    if-ne v12, v1, :cond_7

    .line 616
    const/16 p2, 0x8

    goto :goto_2

    .line 617
    :cond_7
    const/16 v1, 0x10

    if-eq v14, v1, :cond_8

    const v1, -0x7ffffff0

    if-ne v14, v1, :cond_a

    :cond_8
    const/4 v1, 0x1

    if-ne v12, v1, :cond_a

    .line 618
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p2, 0x1f

    :goto_3
    goto :goto_2

    :cond_9
    const/16 p2, 0x20

    goto :goto_3

    .line 619
    :cond_a
    const/16 v1, 0x8

    if-eq v14, v1, :cond_b

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_c

    :cond_b
    const/4 v1, 0x4

    if-ne v12, v1, :cond_c

    .line 620
    const/16 p2, 0x1c

    goto/16 :goto_2

    .line 621
    :cond_c
    const/16 v1, 0x8

    if-eq v14, v1, :cond_d

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_e

    :cond_d
    const/4 v1, 0x2

    if-ne v12, v1, :cond_e

    .line 622
    const/16 p2, 0x1a

    .line 623
    move/from16 v16, v2

    goto/16 :goto_2

    .line 625
    :cond_e
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not guess pixel format of image: depth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", channels="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 636
    .end local v12           #channels:I
    .end local v14           #depth:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move/from16 v0, p2

    invoke-static {v1, v13, v0, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 637
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v7

    invoke-static {v1, v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    new-instance v5, Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v5, v1}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v9, v1}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v10

    move v8, v3

    invoke-static/range {v4 .. v10}, Lcom/googlecode/javacv/cpp/swscale;->sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I

    goto/16 :goto_0

    .line 642
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move/from16 v0, p2

    invoke-static {v1, v13, v0, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 643
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    goto/16 :goto_0

    .line 656
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v13           #data:Lcom/googlecode/javacpp/BytePointer;
    .end local v16           #step:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf_size:I

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 659
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->got_video_packet:[I

    invoke-static {v1, v4, v5, v6}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_encode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[I)I

    move-result v15

    .restart local v15       #ret:I
    if-gez v15, :cond_12

    .line 661
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "avcodec_encode_video2() error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Could not encode video packet."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 663
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->got_video_packet:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    if-eqz v1, :cond_17

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000

    cmp-long v1, v4, v6

    if-eqz v1, :cond_13

    .line 668
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 670
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000

    cmp-long v1, v4, v6

    if-eqz v1, :cond_14

    .line 671
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 673
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    goto/16 :goto_1

    .line 686
    .end local v15           #ret:I
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v5}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v15

    .restart local v15       #ret:I
    if-gez v15, :cond_16

    .line 687
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "av_write_frame() error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " while writing video frame."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 690
    :cond_16
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    :cond_17
    return-void
.end method

.method public record([Ljava/nio/Buffer;)V
    .locals 24
    .parameter "samples"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 694
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v2, :cond_0

    .line 695
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v3, "No audio output stream (Is audioChannels > 0 and has start() been called?)"

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    :cond_0
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int v19, v2, v3

    .line 700
    .local v19, inputSize:I
    const/4 v9, -0x1

    .line 701
    .local v9, inputFormat:I
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/16 v16, 0x1

    .line 702
    .local v16, inputChannels:I
    :goto_0
    const/16 v18, 0x0

    .line 703
    .local v18, inputDepth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v5

    .line 704
    .local v5, outputFormat:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/16 v20, 0x1

    .line 705
    .local v20, outputChannels:I
    :goto_1
    invoke-static {v5}, Lcom/googlecode/javacv/cpp/avutil;->av_get_bytes_per_sample(I)I

    move-result v22

    .line 706
    .local v22, outputDepth:I
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_5

    .line 707
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/4 v9, 0x5

    .line 708
    :goto_2
    const/16 v18, 0x1

    .line 709
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 710
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 711
    .local v13, b:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_4

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    check-cast v2, Lcom/googlecode/javacpp/BytePointer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v2

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/BytePointer;->put([BII)Lcom/googlecode/javacpp/BytePointer;

    .line 709
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 701
    .end local v5           #outputFormat:I
    .end local v13           #b:Ljava/nio/ByteBuffer;
    .end local v15           #i:I
    .end local v16           #inputChannels:I
    .end local v18           #inputDepth:I
    .end local v20           #outputChannels:I
    .end local v22           #outputDepth:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioChannels:I

    move/from16 v16, v0

    goto :goto_0

    .line 704
    .restart local v5       #outputFormat:I
    .restart local v16       #inputChannels:I
    .restart local v18       #inputDepth:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioChannels:I

    move/from16 v20, v0

    goto :goto_1

    .line 707
    .restart local v20       #outputChannels:I
    .restart local v22       #outputDepth:I
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 714
    .restart local v13       #b:Ljava/nio/ByteBuffer;
    .restart local v15       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/BytePointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/BytePointer;-><init>(Ljava/nio/ByteBuffer;)V

    aput-object v3, v2, v15

    goto :goto_4

    .line 717
    .end local v13           #b:Ljava/nio/ByteBuffer;
    .end local v15           #i:I
    :cond_5
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_8

    .line 718
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    const/4 v9, 0x6

    .line 719
    :goto_5
    const/16 v18, 0x2

    .line 720
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_6
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 721
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/ShortBuffer;

    .line 722
    .local v13, b:Ljava/nio/ShortBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/ShortPointer;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_7

    invoke-virtual {v13}, Ljava/nio/ShortBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    check-cast v2, Lcom/googlecode/javacpp/ShortPointer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/ShortPointer;->position(I)Lcom/googlecode/javacpp/ShortPointer;

    move-result-object v2

    invoke-virtual {v13}, Ljava/nio/ShortBuffer;->array()[S

    move-result-object v3

    aget-object v4, p1, v15

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/ShortPointer;->put([SII)Lcom/googlecode/javacpp/ShortPointer;

    .line 720
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 718
    .end local v13           #b:Ljava/nio/ShortBuffer;
    .end local v15           #i:I
    :cond_6
    const/4 v9, 0x1

    goto :goto_5

    .line 725
    .restart local v13       #b:Ljava/nio/ShortBuffer;
    .restart local v15       #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/ShortPointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/ShortPointer;-><init>(Ljava/nio/ShortBuffer;)V

    aput-object v3, v2, v15

    goto :goto_7

    .line 728
    .end local v13           #b:Ljava/nio/ShortBuffer;
    .end local v15           #i:I
    :cond_8
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_b

    .line 729
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    const/4 v9, 0x7

    .line 730
    :goto_8
    const/16 v18, 0x4

    .line 731
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 732
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/IntBuffer;

    .line 733
    .local v13, b:Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/IntPointer;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_a

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    check-cast v2, Lcom/googlecode/javacpp/IntPointer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/IntPointer;->position(I)Lcom/googlecode/javacpp/IntPointer;

    move-result-object v2

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    aget-object v4, p1, v15

    invoke-virtual {v4}, Ljava/nio/Buffer;->position()I

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/IntPointer;->put([III)Lcom/googlecode/javacpp/IntPointer;

    .line 731
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 729
    .end local v13           #b:Ljava/nio/IntBuffer;
    .end local v15           #i:I
    :cond_9
    const/4 v9, 0x2

    goto :goto_8

    .line 736
    .restart local v13       #b:Ljava/nio/IntBuffer;
    .restart local v15       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/IntPointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/IntPointer;-><init>(Ljava/nio/IntBuffer;)V

    aput-object v3, v2, v15

    goto :goto_a

    .line 739
    .end local v13           #b:Ljava/nio/IntBuffer;
    .end local v15           #i:I
    :cond_b
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_e

    .line 740
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    const/16 v9, 0x8

    .line 741
    :goto_b
    const/16 v18, 0x4

    .line 742
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_c
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 743
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/FloatBuffer;

    .line 744
    .local v13, b:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/FloatPointer;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_d

    invoke-virtual {v13}, Ljava/nio/FloatBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    check-cast v2, Lcom/googlecode/javacpp/FloatPointer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/FloatPointer;->position(I)Lcom/googlecode/javacpp/FloatPointer;

    move-result-object v2

    invoke-virtual {v13}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v3

    invoke-virtual {v13}, Ljava/nio/FloatBuffer;->position()I

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/FloatPointer;->put([FII)Lcom/googlecode/javacpp/FloatPointer;

    .line 742
    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 740
    .end local v13           #b:Ljava/nio/FloatBuffer;
    .end local v15           #i:I
    :cond_c
    const/4 v9, 0x3

    goto :goto_b

    .line 747
    .restart local v13       #b:Ljava/nio/FloatBuffer;
    .restart local v15       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/FloatPointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/FloatPointer;-><init>(Ljava/nio/FloatBuffer;)V

    aput-object v3, v2, v15

    goto :goto_d

    .line 750
    .end local v13           #b:Ljava/nio/FloatBuffer;
    .end local v15           #i:I
    :cond_e
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_11

    .line 751
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    const/16 v9, 0x9

    .line 752
    :goto_e
    const/16 v18, 0x8

    .line 753
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_f
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 754
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/DoubleBuffer;

    .line 755
    .local v13, b:Ljava/nio/DoubleBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/DoublePointer;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_10

    invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    check-cast v2, Lcom/googlecode/javacpp/DoublePointer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/DoublePointer;->position(I)Lcom/googlecode/javacpp/DoublePointer;

    move-result-object v2

    invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->array()[D

    move-result-object v3

    invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->position()I

    move-result v4

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v0}, Lcom/googlecode/javacpp/DoublePointer;->put([DII)Lcom/googlecode/javacpp/DoublePointer;

    .line 753
    :goto_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 751
    .end local v13           #b:Ljava/nio/DoubleBuffer;
    .end local v15           #i:I
    :cond_f
    const/4 v9, 0x4

    goto :goto_e

    .line 758
    .restart local v13       #b:Ljava/nio/DoubleBuffer;
    .restart local v15       #i:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/DoublePointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/DoublePointer;-><init>(Ljava/nio/DoubleBuffer;)V

    aput-object v3, v2, v15

    goto :goto_10

    .line 762
    .end local v13           #b:Ljava/nio/DoubleBuffer;
    .end local v15           #i:I
    :cond_11
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio samples Buffer has unsupported type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 765
    .restart local v15       #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    if-nez v2, :cond_14

    .line 766
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/googlecode/javacv/cpp/swresample;->swr_alloc_set_opts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;JIIJIIILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    .line 769
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    if-nez v2, :cond_13

    .line 770
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v3, "swr_alloc_set_opts() error: Cannot allocate the conversion context."

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 771
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/swresample;->swr_init(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)I

    move-result v23

    .local v23, ret:I
    if-gez v23, :cond_14

    .line 772
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swr_init() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Cannot initialize the conversion context."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    .end local v23           #ret:I
    :cond_14
    const/4 v15, 0x0

    :goto_11
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_16

    .line 777
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    mul-int v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    add-int v3, v3, v19

    mul-int v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    .line 776
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 836
    .local v14, count:I
    .local v17, inputCount:I
    .local v21, outputCount:I
    .restart local v23       #ret:I
    :cond_15
    :try_start_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 780
    .end local v14           #count:I
    .end local v17           #inputCount:I
    .end local v21           #outputCount:I
    .end local v23           #ret:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_21

    .line 781
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->limit()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int v3, v16, v18

    div-int v17, v2, v3

    .line 782
    .restart local v17       #inputCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int v3, v20, v22

    div-int v21, v2, v3

    .line 783
    .restart local v21       #outputCount:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 784
    .restart local v14       #count:I
    const/4 v15, 0x0

    :goto_12
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_17

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    .line 784
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 787
    :cond_17
    const/4 v15, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v15, v2, :cond_18

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    .line 787
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 790
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

    invoke-static {v2, v3, v14, v4, v14}, Lcom/googlecode/javacv/cpp/swresample;->swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/PointerPointer;I)I

    move-result v23

    .restart local v23       #ret:I
    if-gez v23, :cond_19

    .line 791
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swr_convert() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Cannot convert audio samples."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 793
    :cond_19
    const/4 v15, 0x0

    :goto_14
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_1a

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    mul-int v4, v23, v16

    mul-int v4, v4, v18

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    .line 793
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    .line 796
    :cond_1a
    const/4 v15, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v15, v2, :cond_1b

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v3

    mul-int v4, v23, v20

    mul-int v4, v4, v22

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    .line 796
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 800
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v3

    if-lt v2, v3, :cond_16

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_input_frame_size:I

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->nb_samples(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_fill_audio_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;IILcom/googlecode/javacpp/BytePointer;II)I

    .line 803
    const/4 v15, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v15, v2, :cond_1c

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->data(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v3

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    .line 803
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 808
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf_size:I

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->got_audio_packet:[I

    invoke-static {v2, v3, v4, v6}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_encode_audio2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[I)I

    move-result v23

    if-gez v23, :cond_1d

    .line 813
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "avcodec_encode_audio2() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Could not encode audio packet."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 815
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->got_audio_packet:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-eqz v2, :cond_16

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v2

    const-wide/high16 v6, -0x8000

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1e

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v7

    invoke-static {v3, v4, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 819
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v2

    const-wide/high16 v6, -0x8000

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1f

    .line 820
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v7

    invoke-static {v3, v4, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 822
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 826
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    monitor-enter v3

    .line 827
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->interleaved:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v2, :cond_20

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v2, v4}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v23

    if-gez v23, :cond_15

    .line 829
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "av_interleaved_write_frame() error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " while writing interleaved audio frame."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 836
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 832
    :cond_20
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v2, v4}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v23

    if-gez v23, :cond_15

    .line 833
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "av_write_frame() error "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " while writing audio frame."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 840
    .end local v14           #count:I
    .end local v17           #inputCount:I
    .end local v21           #outputCount:I
    .end local v23           #ret:I
    :cond_21
    return-void
.end method

.method public release()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 145
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I

    .line 147
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v2, :cond_1

    .line 150
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I

    .line 151
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 155
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v2, :cond_3

    .line 158
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 159
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 161
    :cond_3
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v2, :cond_4

    .line 162
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 163
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 165
    :cond_4
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_5

    .line 166
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 167
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 169
    :cond_5
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v2, :cond_6

    .line 170
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 171
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 173
    :cond_6
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_8

    .line 174
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 175
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_7
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    .line 179
    .end local v0           #i:I
    :cond_8
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_9

    .line 180
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 181
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 183
    :cond_9
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 184
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 186
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v2, :cond_b

    .line 188
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->nb_streams()I

    move-result v1

    .line 189
    .local v1, nb_streams:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_a

    .line 190
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 191
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 189
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    :cond_a
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 196
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 199
    .end local v0           #i:I
    .end local v1           #nb_streams:I
    :cond_b
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    if-eqz v2, :cond_c

    .line 200
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/swscale;->sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V

    .line 201
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 204
    :cond_c
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    if-eqz v2, :cond_d

    .line 205
    iget-object v2, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/swresample;->swr_free(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)V

    .line 206
    iput-object v4, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    .line 208
    :cond_d
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 3
    .parameter "frameNumber"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameRecorder;->setFrameNumber(I)V

    .line 242
    :goto_0
    return-void

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    goto :goto_0
.end method

.method public setTimestamp(J)V
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 249
    long-to-double v0, p1

    invoke-virtual {p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->getFrameRate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->setFrameNumber(I)V

    .line 250
    return-void
.end method

.method public start()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 254
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 255
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 256
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    .line 257
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 258
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 259
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 260
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 261
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 262
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 263
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 264
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 265
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->got_video_packet:[I

    .line 266
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->got_audio_packet:[I

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->format:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->format:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    :cond_0
    const/4 v5, 0x0

    .line 270
    .local v5, format_name:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    if-nez v17, :cond_3

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 272
    .local v13, proto:I
    if-lez v13, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 275
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    if-nez v17, :cond_3

    .line 276
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "av_guess_format() error: Could not guess output format for \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->format:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " format."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 269
    .end local v5           #format_name:Ljava/lang/String;
    .end local v13           #proto:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 279
    .restart local v5       #format_name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->name()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->avformat_alloc_context()Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-nez v17, :cond_4

    .line 283
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avformat_alloc_context() error: Could not allocate format context"

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 286
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->oformat(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->filename(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoCodec:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoCodec:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    .line 306
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    if-nez v17, :cond_a

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 308
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_find_encoder() error: Video codec not found."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 295
    :cond_6
    const-string v17, "flv"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0x16

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 297
    :cond_7
    const-string v17, "mp4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 299
    :cond_8
    const-string v17, "3gp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 301
    :cond_9
    const-string v17, "avi"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0x1a

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 311
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frameRate:D

    move-wide/from16 v17, v0

    const v19, 0xf4628

    invoke-static/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    .line 312
    .local v6, frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->supported_framerates()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v16

    .line 313
    .local v16, supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    if-eqz v16, :cond_b

    .line 314
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_find_nearest_q_idx(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I

    move-result v9

    .line 315
    .local v9, idx:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    .line 319
    .end local v9           #idx:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat;->avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v17, :cond_c

    .line 320
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 321
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avformat_new_stream() error: Could not allocate video stream."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 323
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoBitrate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    div-int/lit8 v18, v18, 0x10

    mul-int/lit8 v18, v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-static {v6}, Lcom/googlecode/javacv/cpp/avutil;->av_inv_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->gop_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_d

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    or-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const-wide v18, 0x405d800000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 343
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->pixelFormat:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->pixelFormat:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 352
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->max_b_frames(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 380
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x40

    if-eqz v17, :cond_f

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    const/high16 v19, 0x40

    or-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 384
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 392
    .end local v6           #frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .end local v16           #supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioChannels:I

    move/from16 v17, v0

    if-lez v17, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioBitrate:I

    move/from16 v17, v0

    if-lez v17, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleRate:I

    move/from16 v17, v0

    if-lez v17, :cond_26

    .line 393
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioCodec:I

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioCodec:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    .line 402
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    if-nez v17, :cond_1f

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 404
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_find_encoder() error: Audio codec not found."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 345
    .restart local v6       #frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .restart local v16       #supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x1a

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x22

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 347
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    sget v18, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32:I

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_2

    .line 349
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_2

    .line 355
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->mb_decision(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 360
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x60

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_17

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x60

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 364
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0xb0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x90

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0xb0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x90

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 366
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0x160

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x120

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_19

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x160

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x120

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 368
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0x2c0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x240

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1a

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x2c0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x240

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 371
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x580

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x480

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 373
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x1c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x242

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->profile(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 395
    .end local v6           #frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .end local v16           #supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_1c
    const-string v17, "flv"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "mp4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1d

    const-string v17, "3gp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 396
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const v18, 0x15002

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto/16 :goto_4

    .line 397
    :cond_1e
    const-string v17, "avi"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/high16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto/16 :goto_4

    .line 407
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat;->avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v17, :cond_20

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 409
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avformat_new_stream() error: Could not allocate audio stream."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 411
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioBitrate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleRate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioChannels:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioChannels:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avutil;->av_get_default_channel_layout(I)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 420
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleFormat:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_21

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleFormat:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 428
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->sampleRate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 440
    sget-boolean v17, Lcom/googlecode/javacv/FFmpegFrameRecorder;->$assertionsDisabled:Z

    if-nez v17, :cond_23

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 422
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const v18, 0x15002

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_22

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto :goto_5

    .line 426
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto :goto_5

    .line 431
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 442
    :cond_23
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_24

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    or-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const-wide v18, 0x405d800000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 448
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x40

    if-eqz v17, :cond_25

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    const/high16 v19, 0x40

    or-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 452
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_26

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 457
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Lcom/googlecode/javacv/cpp/avformat;->av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2d

    .line 462
    new-instance v10, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 463
    .local v10, options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_27

    .line 464
    const-string v17, "crf"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 466
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->videoOptions:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 467
    .local v4, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_7

    .line 433
    .end local v4           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 435
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 437
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 439
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x40

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 470
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v14

    .local v14, ret:I
    if-gez v14, :cond_29

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 472
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "avcodec_open2() error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": Could not open video codec."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 474
    :cond_29
    invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V

    .line 476
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x20

    if-nez v17, :cond_2a

    .line 484
    const/high16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v18

    mul-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v19

    mul-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf_size:I

    .line 485
    new-instance v17, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf_size:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 489
    :cond_2a
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v17, :cond_2b

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 491
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_alloc_frame() error: Could not allocate picture."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 493
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_get_size(III)I

    move-result v15

    .line 496
    .local v15, size:I
    new-instance v17, Lcom/googlecode/javacpp/BytePointer;

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacpp/BytePointer;->isNull()Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 498
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "av_malloc() error: Could not allocate picture buffer."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 503
    :cond_2c
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v17, :cond_2d

    .line 504
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 505
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_alloc_frame() error: Could not allocate temporary picture."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 509
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    .end local v14           #ret:I
    .end local v15           #size:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_34

    .line 510
    new-instance v10, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 511
    .restart local v10       #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_2e

    .line 512
    const-string v17, "crf"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    .line 514
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audioOptions:Ljava/util/HashMap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 515
    .restart local v4       #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v10, v0, v1, v2}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_set(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_8

    .line 518
    .end local v4           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v14

    .restart local v14       #ret:I
    if-gez v14, :cond_30

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 520
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "avcodec_open2() error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": Could not open audio codec."

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 522
    :cond_30
    invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V

    .line 524
    const/high16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf_size:I

    .line 525
    new-instance v17, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf_size:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->frame_size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_31

    .line 530
    const/16 v17, 0x4000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf_size:I

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_outbuf_size:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v18

    div-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_input_frame_size:I

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    .line 546
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avutil;->av_sample_fmt_is_planar(I)I

    move-result v17

    if-eqz v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v12

    .line 547
    .local v12, planes:I
    :goto_a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_input_frame_size:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v17 .. v21}, Lcom/googlecode/javacv/cpp/avutil;->av_samples_get_buffer_size([IIIII)I

    move-result v17

    div-int v3, v17, v12

    .line 549
    .local v3, data_size:I
    new-array v0, v12, [Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    .line 550
    const/4 v7, 0x0

    .local v7, i:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_33

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v17, v0

    new-instance v18, Lcom/googlecode/javacpp/BytePointer;

    int-to-long v0, v3

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/googlecode/javacpp/BytePointer;->capacity(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v18

    aput-object v18, v17, v7

    .line 550
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 537
    .end local v3           #data_size:I
    .end local v7           #i:I
    .end local v12           #planes:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_input_frame_size:I

    move/from16 v17, v0

    shr-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_input_frame_size:I

    goto/16 :goto_9

    .line 543
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->frame_size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->audio_input_frame_size:I

    goto/16 :goto_9

    .line 546
    :cond_32
    const/4 v12, 0x1

    goto :goto_a

    .line 553
    .restart local v3       #data_size:I
    .restart local v7       #i:I
    .restart local v12       #planes:I
    :cond_33
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [Lcom/googlecode/javacpp/Pointer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    .line 554
    new-instance v17, Lcom/googlecode/javacpp/PointerPointer;

    const/16 v18, 0x8

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

    .line 555
    new-instance v17, Lcom/googlecode/javacpp/PointerPointer;

    const/16 v18, 0x8

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

    .line 558
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v17, :cond_34

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 560
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_alloc_frame() error: Could not allocate audio frame."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 565
    .end local v3           #data_size:I
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    .end local v12           #planes:I
    .end local v14           #ret:I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_36

    .line 566
    new-instance v11, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 567
    .local v11, pb:Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->avio_open(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;I)I

    move-result v14

    .restart local v14       #ret:I
    if-gez v14, :cond_35

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 569
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "avio_open error() error "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": Could not open \'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\'"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 571
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 575
    .end local v11           #pb:Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
    .end local v14           #ret:I
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat;->avformat_write_header(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    .line 576
    return-void

    .line 429
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

    .line 532
    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->av_write_trailer(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I

    .line 583
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/googlecode/javacv/FFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb()Lcom/googlecode/javacv/cpp/avformat$AVIOContext;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->avio_close(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/FFmpegFrameRecorder;->release()V

    .line 589
    return-void
.end method
