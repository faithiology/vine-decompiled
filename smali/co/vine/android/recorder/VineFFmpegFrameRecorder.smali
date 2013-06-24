.class public Lco/vine/android/recorder/VineFFmpegFrameRecorder;
.super Lcom/googlecode/javacv/FrameRecorder;
.source "VineFFmpegFrameRecorder.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final LOCK:[I

.field private static loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;


# instance fields
.field private audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

.field private audio_clock:J

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

.field private hasData:Z

.field private img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

.field private volatile isReleased:Z

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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 192
    const-class v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->$assertionsDisabled:Z

    .line 194
    new-array v0, v1, [I

    sput-object v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    .line 208
    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    return-void

    :cond_0
    move v0, v1

    .line 192
    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .locals 1
    .parameter "file"
    .parameter "audioChannels"

    .prologue
    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, p1, v0, v0, p2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/io/File;III)V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/io/File;II)V
    .locals 1
    .parameter "file"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/io/File;III)V

    .line 241
    return-void
.end method

.method public constructor <init>(Ljava/io/File;III)V
    .locals 1
    .parameter "file"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "audioChannels"

    .prologue
    .line 248
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;III)V

    .line 249
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "filename"
    .parameter "audioChannels"

    .prologue
    const/4 v0, 0x0

    .line 236
    invoke-direct {p0, p1, v0, v0, p2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;III)V

    .line 237
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .parameter "filename"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;III)V

    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 5
    .parameter "filename"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "audioChannels"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 251
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameRecorder;-><init>()V

    .line 196
    iput-boolean v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData:Z

    .line 197
    iput-boolean v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->isReleased:Z

    .line 254
    const-string v0, "Creating a recorder thats {} * {}"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->av_register_all()V

    .line 257
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->avformat_network_init()I

    .line 259
    iput-object p1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    .line 260
    iput p2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    .line 261
    iput p3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    .line 262
    iput p4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioChannels:I

    .line 264
    iput v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->pixelFormat:I

    .line 265
    iput v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoCodec:I

    .line 266
    const v0, 0xf4240

    iput v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoBitrate:I

    .line 267
    const-wide/high16 v0, 0x403e

    iput-wide v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frameRate:D

    .line 269
    iput v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleFormat:I

    .line 270
    iput v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioCodec:I

    .line 271
    const v0, 0xfa00

    iput v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioBitrate:I

    .line 272
    const v0, 0xac44

    iput v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleRate:I

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->interleaved:Z

    .line 276
    new-instance v0, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 277
    new-instance v0, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-direct {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 278
    return-void
.end method

.method public static createDefault(Ljava/io/File;II)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 1
    .parameter "f"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 201
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-direct {v0, p0, p1, p2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/io/File;II)V

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;II)Lco/vine/android/recorder/VineFFmpegFrameRecorder;
    .locals 1
    .parameter "f"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 205
    new-instance v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-direct {v0, p0, p1, p2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method

.method public static tryLoad(Landroid/content/Context;)V
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    if-eqz v1, :cond_0

    .line 212
    sget-object v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    throw v1

    .line 215
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/avutil;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 216
    const-class v1, Lcom/googlecode/javacv/cpp/avcodec;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 217
    const-class v1, Lcom/googlecode/javacv/cpp/avformat;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 218
    const-class v1, Lcom/googlecode/javacv/cpp/swscale;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;

    .line 219
    const-class v1, Lcom/googlecode/javacv/cpp/swresample;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lco/vine/android/recorder/RecordConfigUtils;->setLoadWasEverSuccessful(Landroid/content/Context;Z)V

    .line 229
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, t:Ljava/lang/Throwable;
    instance-of v1, v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    if-eqz v1, :cond_1

    .line 222
    check-cast v0, Lcom/googlecode/javacv/FrameRecorder$Exception;

    .end local v0           #t:Ljava/lang/Throwable;
    sput-object v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

    throw v0

    .line 224
    .restart local v0       #t:Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->loadingException:Lcom/googlecode/javacv/FrameRecorder$Exception;

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
    .line 350
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 351
    invoke-virtual {p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 352
    return-void
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameNumber()I
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v0, :cond_0

    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getTimestamp()J
    .locals 4

    .prologue
    const-wide/32 v2, 0xf4240

    .line 397
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v0, :cond_0

    .line 398
    iget-wide v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_clock:J

    mul-long/2addr v0, v2

    iget v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 400
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameNumber()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    long-to-double v0, v0

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameRate()D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getVideoCodecPixFormat()I
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v0

    return v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 1056
    iget-boolean v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData:Z

    return v0
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 1060
    iget-boolean v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->isReleased:Z

    return v0
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
    .line 781
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)Z

    .line 782
    return-void
.end method

.method public varargs record([Ljava/nio/Buffer;)V
    .locals 24
    .parameter "samples"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v2, :cond_0

    .line 895
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v3, "No audio output stream (Is audioChannels > 0 and has start() been called?)"

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData:Z

    .line 900
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/nio/Buffer;->position()I

    move-result v3

    sub-int v19, v2, v3

    .line 901
    .local v19, inputSize:I
    const/4 v9, -0x1

    .line 902
    .local v9, inputFormat:I
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const/16 v16, 0x1

    .line 903
    .local v16, inputChannels:I
    :goto_0
    const/16 v18, 0x0

    .line 904
    .local v18, inputDepth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v5

    .line 905
    .local v5, outputFormat:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/16 v20, 0x1

    .line 906
    .local v20, outputChannels:I
    :goto_1
    invoke-static {v5}, Lcom/googlecode/javacv/cpp/avutil;->av_get_bytes_per_sample(I)I

    move-result v22

    .line 907
    .local v22, outputDepth:I
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_5

    .line 908
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    const/4 v9, 0x5

    .line 909
    :goto_2
    const/16 v18, 0x1

    .line 910
    const/4 v15, 0x0

    .local v15, i:I
    :goto_3
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 911
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/ByteBuffer;

    .line 912
    .local v13, b:Ljava/nio/ByteBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_4

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 913
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

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

    .line 910
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 902
    .end local v5           #outputFormat:I
    .end local v13           #b:Ljava/nio/ByteBuffer;
    .end local v15           #i:I
    .end local v16           #inputChannels:I
    .end local v18           #inputDepth:I
    .end local v20           #outputChannels:I
    .end local v22           #outputDepth:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioChannels:I

    move/from16 v16, v0

    goto :goto_0

    .line 905
    .restart local v5       #outputFormat:I
    .restart local v16       #inputChannels:I
    .restart local v18       #inputDepth:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioChannels:I

    move/from16 v20, v0

    goto :goto_1

    .line 908
    .restart local v20       #outputChannels:I
    .restart local v22       #outputDepth:I
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 915
    .restart local v13       #b:Ljava/nio/ByteBuffer;
    .restart local v15       #i:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/BytePointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/BytePointer;-><init>(Ljava/nio/ByteBuffer;)V

    aput-object v3, v2, v15

    goto :goto_4

    .line 918
    .end local v13           #b:Ljava/nio/ByteBuffer;
    .end local v15           #i:I
    :cond_5
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/ShortBuffer;

    if-eqz v2, :cond_8

    .line 919
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    const/4 v9, 0x6

    .line 920
    :goto_5
    const/16 v18, 0x2

    .line 921
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_6
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 922
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/ShortBuffer;

    .line 923
    .local v13, b:Ljava/nio/ShortBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/ShortPointer;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_7

    invoke-virtual {v13}, Ljava/nio/ShortBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

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

    .line 921
    :goto_7
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 919
    .end local v13           #b:Ljava/nio/ShortBuffer;
    .end local v15           #i:I
    :cond_6
    const/4 v9, 0x1

    goto :goto_5

    .line 926
    .restart local v13       #b:Ljava/nio/ShortBuffer;
    .restart local v15       #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/ShortPointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/ShortPointer;-><init>(Ljava/nio/ShortBuffer;)V

    aput-object v3, v2, v15

    goto :goto_7

    .line 929
    .end local v13           #b:Ljava/nio/ShortBuffer;
    .end local v15           #i:I
    :cond_8
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_b

    .line 930
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    const/4 v9, 0x7

    .line 931
    :goto_8
    const/16 v18, 0x4

    .line 932
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_9
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 933
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/IntBuffer;

    .line 934
    .local v13, b:Ljava/nio/IntBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/IntPointer;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_a

    invoke-virtual {v13}, Ljava/nio/IntBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

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

    .line 932
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 930
    .end local v13           #b:Ljava/nio/IntBuffer;
    .end local v15           #i:I
    :cond_9
    const/4 v9, 0x2

    goto :goto_8

    .line 937
    .restart local v13       #b:Ljava/nio/IntBuffer;
    .restart local v15       #i:I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/IntPointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/IntPointer;-><init>(Ljava/nio/IntBuffer;)V

    aput-object v3, v2, v15

    goto :goto_a

    .line 940
    .end local v13           #b:Ljava/nio/IntBuffer;
    .end local v15           #i:I
    :cond_b
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/FloatBuffer;

    if-eqz v2, :cond_e

    .line 941
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_c

    const/16 v9, 0x8

    .line 942
    :goto_b
    const/16 v18, 0x4

    .line 943
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_c
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 944
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/FloatBuffer;

    .line 945
    .local v13, b:Ljava/nio/FloatBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/FloatPointer;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_d

    invoke-virtual {v13}, Ljava/nio/FloatBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 946
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

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

    .line 943
    :goto_d
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 941
    .end local v13           #b:Ljava/nio/FloatBuffer;
    .end local v15           #i:I
    :cond_c
    const/4 v9, 0x3

    goto :goto_b

    .line 948
    .restart local v13       #b:Ljava/nio/FloatBuffer;
    .restart local v15       #i:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/FloatPointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/FloatPointer;-><init>(Ljava/nio/FloatBuffer;)V

    aput-object v3, v2, v15

    goto :goto_d

    .line 951
    .end local v13           #b:Ljava/nio/FloatBuffer;
    .end local v15           #i:I
    :cond_e
    const/4 v2, 0x0

    aget-object v2, p1, v2

    instance-of v2, v2, Ljava/nio/DoubleBuffer;

    if-eqz v2, :cond_11

    .line 952
    move-object/from16 v0, p1

    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_f

    const/16 v9, 0x9

    .line 953
    :goto_e
    const/16 v18, 0x8

    .line 954
    const/4 v15, 0x0

    .restart local v15       #i:I
    :goto_f
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_12

    .line 955
    aget-object v13, p1, v15

    check-cast v13, Ljava/nio/DoubleBuffer;

    .line 956
    .local v13, b:Ljava/nio/DoubleBuffer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    instance-of v2, v2, Lcom/googlecode/javacpp/DoublePointer;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->capacity()I

    move-result v2

    move/from16 v0, v19

    if-lt v2, v0, :cond_10

    invoke-virtual {v13}, Ljava/nio/DoubleBuffer;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 957
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

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

    .line 954
    :goto_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_f

    .line 952
    .end local v13           #b:Ljava/nio/DoubleBuffer;
    .end local v15           #i:I
    :cond_f
    const/4 v9, 0x4

    goto :goto_e

    .line 959
    .restart local v13       #b:Ljava/nio/DoubleBuffer;
    .restart local v15       #i:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    new-instance v3, Lcom/googlecode/javacpp/DoublePointer;

    invoke-direct {v3, v13}, Lcom/googlecode/javacpp/DoublePointer;-><init>(Ljava/nio/DoubleBuffer;)V

    aput-object v3, v2, v15

    goto :goto_10

    .line 963
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

    .line 966
    .restart local v15       #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    if-nez v2, :cond_14

    .line 967
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v10}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/googlecode/javacv/cpp/swresample;->swr_alloc_set_opts(Lcom/googlecode/javacv/cpp/swresample$SwrContext;JIIJIIILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    if-nez v2, :cond_13

    .line 971
    new-instance v2, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v3, "swr_alloc_set_opts() error: Cannot allocate the conversion context."

    invoke-direct {v2, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 972
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/swresample;->swr_init(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)I

    move-result v23

    .local v23, ret:I
    if-gez v23, :cond_14

    .line 973
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

    .line 977
    .end local v23           #ret:I
    :cond_14
    const/4 v15, 0x0

    :goto_11
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_16

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    mul-int v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    add-int v3, v3, v19

    mul-int v3, v3, v18

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    .line 977
    add-int/lit8 v15, v15, 0x1

    goto :goto_11

    .line 1008
    .local v14, count:I
    .local v17, inputCount:I
    .local v21, outputCount:I
    .restart local v23       #ret:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v3}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)Z

    .line 981
    .end local v14           #count:I
    .end local v17           #inputCount:I
    .end local v21           #outputCount:I
    .end local v23           #ret:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->limit()I

    move-result v3

    if-ge v2, v3, :cond_1c

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/Pointer;->limit()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int v3, v16, v18

    div-int v17, v2, v3

    .line 983
    .restart local v17       #inputCount:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int v3, v20, v22

    div-int v21, v2, v3

    .line 984
    .restart local v21       #outputCount:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 985
    .restart local v14       #count:I
    const/4 v15, 0x0

    :goto_12
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_17

    .line 986
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    .line 985
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 988
    :cond_17
    const/4 v15, 0x0

    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v15, v2, :cond_18

    .line 989
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    .line 988
    add-int/lit8 v15, v15, 0x1

    goto :goto_13

    .line 991
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

    invoke-static {v2, v3, v14, v4, v14}, Lcom/googlecode/javacv/cpp/swresample;->swr_convert(Lcom/googlecode/javacv/cpp/swresample$SwrContext;Lcom/googlecode/javacpp/PointerPointer;ILcom/googlecode/javacpp/PointerPointer;I)I

    move-result v23

    .restart local v23       #ret:I
    if-gez v23, :cond_19

    .line 992
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

    .line 994
    :cond_19
    const/4 v15, 0x0

    :goto_14
    move-object/from16 v0, p1

    array-length v2, v0

    if-ge v15, v2, :cond_1a

    .line 995
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/Pointer;->position()I

    move-result v3

    mul-int v4, v23, v16

    mul-int v4, v4, v18

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    .line 994
    add-int/lit8 v15, v15, 0x1

    goto :goto_14

    .line 997
    :cond_1a
    const/4 v15, 0x0

    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v15, v2, :cond_1b

    .line 998
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v3

    mul-int v4, v23, v20

    mul-int v4, v4, v22

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    .line 997
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 1001
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->position()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v3

    if-lt v2, v3, :cond_16

    .line 1002
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_input_frame_size:I

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->nb_samples(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 1003
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v6, 0x0

    aget-object v6, v2, v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    const/4 v7, 0x0

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v7

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_fill_audio_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;IILcom/googlecode/javacpp/BytePointer;II)I

    .line 1004
    const/4 v15, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v15, v2, :cond_15

    .line 1005
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v3

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->data(ILcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    .line 1006
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, v3, v15

    invoke-virtual {v3}, Lcom/googlecode/javacpp/BytePointer;->limit()I

    move-result v3

    invoke-virtual {v2, v15, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    .line 1004
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    .line 1012
    .end local v14           #count:I
    .end local v17           #inputCount:I
    .end local v21           #outputCount:I
    .end local v23           #ret:I
    :cond_1c
    return-void
.end method

.method record(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)Z
    .locals 8
    .parameter "frame"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    const-wide/high16 v6, -0x8000

    const/4 v1, 0x0

    .line 1017
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 1018
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget-object v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 1019
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf_size:I

    invoke-virtual {v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 1020
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    iget-object v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->got_audio_packet:[I

    invoke-static {v2, v3, p1, v4}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_encode_audio2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[I)I

    move-result v0

    .local v0, ret:I
    if-gez v0, :cond_0

    .line 1021
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avcodec_encode_audio2() error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not encode audio packet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_0
    if-eqz p1, :cond_1

    .line 1024
    iget-wide v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_clock:J

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->nb_samples()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_clock:J

    .line 1027
    :cond_1
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->got_audio_packet:[I

    aget v2, v2, v1

    if-eqz v2, :cond_6

    .line 1028
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_2

    .line 1029
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v2

    iget-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 1031
    :cond_2
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_3

    .line 1032
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v2

    iget-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 1034
    :cond_3
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I

    move-result v2

    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 1035
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 1041
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    monitor-enter v2

    .line 1042
    :try_start_0
    iget-boolean v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->interleaved:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v1, :cond_4

    .line 1043
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    iget-object v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v3}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v0

    if-gez v0, :cond_5

    .line 1044
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "av_interleaved_write_frame() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while writing interleaved audio frame."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1047
    :cond_4
    :try_start_1
    iget-object v1, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    iget-object v3, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v3}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v0

    if-gez v0, :cond_5

    .line 1048
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "av_write_frame() error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " while writing audio frame."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1051
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1052
    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)Z
    .locals 17
    .parameter "image"
    .parameter "pixelFormat"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 789
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v1, :cond_0

    .line 790
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v4, "No video output stream (Is imageWidth > 0 && imageHeight > 0 and has start() been called?)"

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 794
    :cond_0
    if-nez p1, :cond_1

    .line 842
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v1

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_12

    .line 843
    if-nez p1, :cond_11

    .line 844
    const/4 v1, 0x0

    .line 889
    :goto_1
    return v1

    .line 799
    :cond_1
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData:Z

    .line 800
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v2

    .line 801
    .local v2, width:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v3

    .line 802
    .local v3, height:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v16

    .line 803
    .local v16, step:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v13

    .line 805
    .local v13, data:Lcom/googlecode/javacpp/BytePointer;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-ne v0, v1, :cond_3

    .line 806
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v14

    .line 807
    .local v14, depth:I
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v12

    .line 808
    .local v12, channels:I
    const/16 v1, 0x8

    if-eq v14, v1, :cond_2

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_5

    :cond_2
    const/4 v1, 0x3

    if-ne v12, v1, :cond_5

    .line 809
    const/16 p2, 0x3

    .line 824
    .end local v12           #channels:I
    .end local v14           #depth:I
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v1

    move/from16 v0, p2

    if-ne v1, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v1

    if-ne v1, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v1

    if-eq v1, v3, :cond_10

    .line 826
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

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

    iput-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 828
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    if-nez v1, :cond_f

    .line 829
    new-instance v1, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v4, "sws_getCachedContext() error: Cannot initialize the conversion context."

    invoke-direct {v1, v4}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
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

    .line 811
    const/16 p2, 0x8

    goto :goto_2

    .line 812
    :cond_7
    const/16 v1, 0x10

    if-eq v14, v1, :cond_8

    const v1, -0x7ffffff0

    if-ne v14, v1, :cond_a

    :cond_8
    const/4 v1, 0x1

    if-ne v12, v1, :cond_a

    .line 813
    invoke-static {}, Lcom/googlecode/javacv/cpp/avutil;->AV_HAVE_BIGENDIAN()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p2, 0x1f

    :goto_3
    goto :goto_2

    :cond_9
    const/16 p2, 0x20

    goto :goto_3

    .line 814
    :cond_a
    const/16 v1, 0x8

    if-eq v14, v1, :cond_b

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_c

    :cond_b
    const/4 v1, 0x4

    if-ne v12, v1, :cond_c

    .line 815
    const/16 p2, 0x1c

    goto/16 :goto_2

    .line 816
    :cond_c
    const/16 v1, 0x8

    if-eq v14, v1, :cond_d

    const v1, -0x7ffffff8

    if-ne v14, v1, :cond_e

    :cond_d
    const/4 v1, 0x2

    if-ne v12, v1, :cond_e

    .line 817
    const/16 p2, 0x1a

    .line 818
    move/from16 v16, v2

    goto/16 :goto_2

    .line 820
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

    .line 831
    .end local v12           #channels:I
    .end local v14           #depth:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move/from16 v0, p2

    invoke-static {v1, v13, v0, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 832
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v7

    invoke-static {v1, v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 833
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    new-instance v5, Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v5, v1}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v9, Lcom/googlecode/javacpp/PointerPointer;

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v9, v1}, Lcom/googlecode/javacpp/PointerPointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize()Lcom/googlecode/javacpp/IntPointer;

    move-result-object v10

    move v8, v3

    invoke-static/range {v4 .. v10}, Lcom/googlecode/javacv/cpp/swscale;->sws_scale(Lcom/googlecode/javacv/cpp/swscale$SwsContext;Lcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;IILcom/googlecode/javacpp/PointerPointer;Lcom/googlecode/javacpp/IntPointer;)I

    goto/16 :goto_0

    .line 837
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move/from16 v0, p2

    invoke-static {v1, v13, v0, v2, v3}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_fill(Lcom/googlecode/javacv/cpp/avcodec$AVPicture;Lcom/googlecode/javacpp/BytePointer;III)I

    .line 838
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    const/4 v4, 0x0

    move/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->linesize(II)Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    goto/16 :goto_0

    .line 847
    .end local v2           #width:I
    .end local v3           #height:I
    .end local v13           #data:Lcom/googlecode/javacpp/BytePointer;
    .end local v16           #step:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 848
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags()I

    move-result v4

    or-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 849
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 850
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    new-instance v4, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-direct {v4, v5}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    const-class v4, Lcom/googlecode/javacv/cpp/avcodec$AVPicture;

    invoke-static {v4}, Lcom/googlecode/javacpp/Loader;->sizeof(Ljava/lang/Class;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 877
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    monitor-enter v4

    .line 879
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->interleaved:Z

    if-eqz v1, :cond_18

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v1, :cond_18

    .line 880
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v5}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v15

    .local v15, ret:I
    if-gez v15, :cond_19

    .line 881
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

    .line 888
    .end local v15           #ret:I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 854
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/avcodec;->av_init_packet(Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V

    .line 855
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->data(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf_size:I

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->size(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 857
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    if-nez p1, :cond_13

    const/4 v1, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->got_video_packet:[I

    invoke-static {v4, v5, v1, v6}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_encode_video2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVFrame;[I)I

    move-result v15

    .restart local v15       #ret:I
    if-gez v15, :cond_14

    .line 859
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

    .line 858
    .end local v15           #ret:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    goto :goto_5

    .line 861
    .restart local v15       #ret:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 864
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->got_video_packet:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    if-eqz v1, :cond_17

    .line 865
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000

    cmp-long v1, v4, v6

    if-eqz v1, :cond_15

    .line 866
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 868
    :cond_15
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000

    cmp-long v1, v4, v6

    if-eqz v1, :cond_16

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v7}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/avutil;->av_rescale_q(JLcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->dts(J)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    .line 871
    :cond_16
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    invoke-virtual {v4}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->index()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/googlecode/javacv/cpp/avcodec$AVPacket;->stream_index(I)Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    goto/16 :goto_4

    .line 873
    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 884
    .end local v15           #ret:I
    :cond_18
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_pkt:Lcom/googlecode/javacv/cpp/avcodec$AVPacket;

    invoke-static {v1, v5}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    move-result v15

    .restart local v15       #ret:I
    if-gez v15, :cond_19

    .line 885
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

    .line 888
    :cond_19
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    const/4 v1, 0x1

    goto/16 :goto_1
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

    .line 281
    const/4 v2, 0x1

    iput-boolean v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->isReleased:Z

    .line 283
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I

    .line 285
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 287
    :cond_0
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_close(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;)I

    .line 289
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 291
    :cond_1
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_2

    .line 292
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 293
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    .line 295
    :cond_2
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v2, :cond_3

    .line 296
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 297
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 299
    :cond_3
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v2, :cond_4

    .line 300
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 301
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 303
    :cond_4
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_5

    .line 304
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 305
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 307
    :cond_5
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-eqz v2, :cond_6

    .line 308
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_free_frame(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)V

    .line 309
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 311
    :cond_6
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_8

    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    .line 313
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/googlecode/javacpp/BytePointer;->position(I)Lcom/googlecode/javacpp/BytePointer;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_7
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    .line 317
    .end local v0           #i:I
    :cond_8
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    if-eqz v2, :cond_9

    .line 318
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 319
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 321
    :cond_9
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 322
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 324
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v2, :cond_b

    .line 326
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->nb_streams()I

    move-result v1

    .line 327
    .local v1, nb_streams:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_a

    .line 328
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v2

    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 329
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v2, v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->streams(I)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v2

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 333
    :cond_a
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/avutil;->av_free(Lcom/googlecode/javacpp/Pointer;)V

    .line 334
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 337
    .end local v0           #i:I
    .end local v1           #nb_streams:I
    :cond_b
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    if-eqz v2, :cond_c

    .line 338
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/swscale;->sws_freeContext(Lcom/googlecode/javacv/cpp/swscale$SwsContext;)V

    .line 339
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->img_convert_ctx:Lcom/googlecode/javacv/cpp/swscale$SwsContext;

    .line 342
    :cond_c
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    if-eqz v2, :cond_d

    .line 343
    iget-object v2, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/swresample;->swr_free(Lcom/googlecode/javacv/cpp/swresample$SwrContext;)V

    .line 344
    iput-object v4, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_convert_ctx:Lcom/googlecode/javacv/cpp/swresample$SwrContext;

    .line 346
    :cond_d
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 3
    .parameter "frameNumber"

    .prologue
    .line 388
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v0, :cond_0

    .line 389
    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameRecorder;->setFrameNumber(I)V

    .line 393
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    goto :goto_0
.end method

.method public setTimestamp(J)V
    .locals 4
    .parameter "timestamp"

    .prologue
    .line 412
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v0, :cond_0

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_0
    long-to-double v0, p1

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameRate()D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameNumber(I)V

    goto :goto_0
.end method

.method public setTimestampAndGetFrameNumber(J)I
    .locals 5
    .parameter "timestamp"

    .prologue
    .line 405
    long-to-double v1, p1

    invoke-virtual {p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameRate()D

    move-result-wide v3

    mul-double/2addr v1, v3

    const-wide v3, 0x412e848000000000L

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 406
    .local v0, fn:I
    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameNumber(I)V

    .line 407
    return v0
.end method

.method public start()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    .line 421
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 422
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 423
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    .line 424
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 425
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 426
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 427
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 428
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 429
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 430
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 431
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    .line 432
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->got_video_packet:[I

    .line 433
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->got_audio_packet:[I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->format:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->format:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_2

    :cond_0
    const/4 v5, 0x0

    .line 437
    .local v5, format_name:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    if-nez v17, :cond_3

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "://"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    .line 439
    .local v13, proto:I
    if-lez v13, :cond_1

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 442
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_guess_format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    if-nez v17, :cond_3

    .line 443
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "av_guess_format() error: Could not guess output format for \""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\" and "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->format:Ljava/lang/String;

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

    .line 436
    .end local v5           #format_name:Ljava/lang/String;
    .end local v13           #proto:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->format:Ljava/lang/String;

    goto/16 :goto_0

    .line 446
    .restart local v5       #format_name:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->name()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 449
    invoke-static {}, Lcom/googlecode/javacv/cpp/avformat;->avformat_alloc_context()Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-nez v17, :cond_4

    .line 450
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avformat_alloc_context() error: Could not allocate format context"

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 453
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->oformat(Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->filename(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    if-lez v17, :cond_10

    .line 460
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoCodec:I

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoCodec:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    .line 473
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    if-nez v17, :cond_a

    .line 474
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 475
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_find_encoder() error: Video codec not found."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 462
    :cond_6
    const-string v17, "flv"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0x16

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 464
    :cond_7
    const-string v17, "mp4"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 466
    :cond_8
    const-string v17, "3gp"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 468
    :cond_9
    const-string v17, "avi"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/16 v18, 0x1a

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto :goto_1

    .line 478
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frameRate:D

    move-wide/from16 v17, v0

    const v19, 0xf4628

    invoke-static/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_d2q(DI)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    .line 479
    .local v6, frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->supported_framerates()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v16

    .line 480
    .local v16, supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    if-eqz v16, :cond_b

    .line 481
    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/googlecode/javacv/cpp/avutil;->av_find_nearest_q_idx(Lcom/googlecode/javacv/cpp/avutil$AVRational;Lcom/googlecode/javacv/cpp/avutil$AVRational;)I

    move-result v9

    .line 482
    .local v9, idx:I
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->position(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v6

    .line 486
    .end local v9           #idx:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat;->avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v17, :cond_c

    .line 487
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 488
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avformat_new_stream() error: Could not allocate video stream."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 490
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->video_codec()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoBitrate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    div-int/lit8 v18, v18, 0x10

    mul-int/lit8 v18, v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-static {v6}, Lcom/googlecode/javacv/cpp/avutil;->av_inv_q(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base(Lcom/googlecode/javacv/cpp/avutil$AVRational;)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->gop_size(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 505
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_d

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    or-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const-wide v18, 0x405d800000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 510
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->pixelFormat:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->pixelFormat:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 519
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_15

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->max_b_frames(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 547
    :cond_e
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x40

    if-eqz v17, :cond_f

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    const/high16 v19, 0x40

    or-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 551
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_10

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 559
    .end local v6           #frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .end local v16           #supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioChannels:I

    move/from16 v17, v0

    if-lez v17, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioBitrate:I

    move/from16 v17, v0

    if-lez v17, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleRate:I

    move/from16 v17, v0

    if-lez v17, :cond_26

    .line 560
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioCodec:I

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioCodec:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    .line 569
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_find_encoder(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    if-nez v17, :cond_1f

    .line 570
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 571
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_find_encoder() error: Audio codec not found."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 512
    .restart local v6       #frame_rate:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    .restart local v16       #supported_framerates:Lcom/googlecode/javacv/cpp/avutil$AVRational;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x1a

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x22

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_14

    .line 514
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    sget v18, Lcom/googlecode/javacv/cpp/avutil;->AV_PIX_FMT_RGB32:I

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_2

    .line 516
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_2

    .line 522
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->mb_decision(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 527
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    .line 529
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0x80

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x60

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_17

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x80

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x60

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 531
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0xb0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x90

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_18

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0xb0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x90

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 533
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0x160

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x120

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_19

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x160

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x120

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 535
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageWidth:I

    move/from16 v17, v0

    const/16 v18, 0x2c0

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->imageHeight:I

    move/from16 v17, v0

    const/16 v18, 0x240

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_1a

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x2c0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x240

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 538
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x580

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    const/16 v18, 0x480

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 540
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const/16 v18, 0x1c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x242

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->profile(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_3

    .line 562
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

    .line 563
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const v18, 0x15002

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto/16 :goto_4

    .line 564
    :cond_1e
    const-string v17, "avi"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    const/high16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec(I)Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    goto/16 :goto_4

    .line 574
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat;->avformat_new_stream(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;)Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-nez v17, :cond_20

    .line 575
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 576
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avformat_new_stream() error: Could not allocate audio stream."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 578
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVStream;->codec()Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->audio_codec()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_type(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioBitrate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bit_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleRate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_rate(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioChannels:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioChannels:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avutil;->av_get_default_channel_layout(I)J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channel_layout(J)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 587
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleFormat:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_21

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleFormat:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 595
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->time_base()Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->num(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->sampleRate:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avutil$AVRational;->den(I)Lcom/googlecode/javacv/cpp/avutil$AVRational;

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 618
    sget-boolean v17, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->$assertionsDisabled:Z

    if-nez v17, :cond_23

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 589
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    const v18, 0x15002

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_22

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto :goto_5

    .line 593
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto :goto_5

    .line 599
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 620
    :cond_23
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_24

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    or-int/lit8 v18, v18, 0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const-wide v18, 0x405d800000000000L

    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->global_quality(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 626
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x40

    if-eqz v17, :cond_25

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags()I

    move-result v18

    const/high16 v19, 0x40

    or-int v18, v18, v19

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->flags(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 630
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodec;->capabilities()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v17, v0

    if-eqz v17, :cond_26

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, -0x2

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->strict_std_compliance(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    .line 635
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v17 .. v20}, Lcom/googlecode/javacv/cpp/avformat;->av_dump_format(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;ILjava/lang/String;I)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2d

    .line 640
    new-instance v10, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 641
    .local v10, options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_27

    .line 642
    const-string v17, "crf"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoQuality:D

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

    .line 644
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->videoOptions:Ljava/util/HashMap;

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

    .line 645
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

    .line 603
    .end local v4           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x10

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 607
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 611
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x20

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 615
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    const/16 v18, 0x40

    invoke-virtual/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->bits_per_raw_sample(I)Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    goto/16 :goto_6

    .line 648
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v10       #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v14

    .local v14, ret:I
    if-gez v14, :cond_29

    .line 649
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 650
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

    .line 652
    :cond_29
    invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V

    .line 654
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x20

    if-nez v17, :cond_2a

    .line 662
    const/high16 v17, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v18

    mul-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v19

    mul-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf_size:I

    .line 663
    new-instance v17, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf_size:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 667
    :cond_2a
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v17, :cond_2b

    .line 668
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 669
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_alloc_frame() error: Could not allocate picture."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 671
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    invoke-virtual/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;->pts(J)Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->pix_fmt()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->width()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->height()I

    move-result v19

    invoke-static/range {v17 .. v19}, Lcom/googlecode/javacv/cpp/avcodec;->avpicture_get_size(III)I

    move-result v15

    .line 674
    .local v15, size:I
    new-instance v17, Lcom/googlecode/javacpp/BytePointer;

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->picture_buf:Lcom/googlecode/javacpp/BytePointer;

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacpp/BytePointer;->isNull()Z

    move-result v17

    if-eqz v17, :cond_2c

    .line 675
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 676
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "av_malloc() error: Could not allocate picture buffer."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 681
    :cond_2c
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->tmp_picture:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v17, :cond_2d

    .line 682
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 683
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_alloc_frame() error: Could not allocate temporary picture."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 687
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    .end local v14           #ret:I
    .end local v15           #size:I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    move-object/from16 v17, v0

    if-eqz v17, :cond_34

    .line 688
    new-instance v10, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/googlecode/javacv/cpp/avutil$AVDictionary;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 689
    .restart local v10       #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioQuality:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_2e

    .line 690
    const-string v17, "crf"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioQuality:D

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

    .line 692
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audioOptions:Ljava/util/HashMap;

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

    .line 693
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

    .line 696
    .end local v4           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_codec:Lcom/googlecode/javacv/cpp/avcodec$AVCodec;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_open2(Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;Lcom/googlecode/javacv/cpp/avcodec$AVCodec;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    move-result v14

    .restart local v14       #ret:I
    if-gez v14, :cond_30

    .line 697
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 698
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

    .line 700
    :cond_30
    invoke-static {v10}, Lcom/googlecode/javacv/cpp/avutil;->av_dict_free(Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)V

    .line 702
    const/high16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf_size:I

    .line 703
    new-instance v17, Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf_size:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Lcom/googlecode/javacv/cpp/avutil;->av_malloc(J)Lcom/googlecode/javacpp/Pointer;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/BytePointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf:Lcom/googlecode/javacpp/BytePointer;

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->frame_size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_31

    .line 708
    const/16 v17, 0x4000

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf_size:I

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_outbuf_size:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v18

    div-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_input_frame_size:I

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->codec_id()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    .line 724
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avutil;->av_sample_fmt_is_planar(I)I

    move-result v17

    if-eqz v17, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v12

    .line 725
    .local v12, planes:I
    :goto_a
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->channels()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_input_frame_size:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->sample_fmt()I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v17 .. v21}, Lcom/googlecode/javacv/cpp/avutil;->av_samples_get_buffer_size([IIIII)I

    move-result v17

    div-int v3, v17, v12

    .line 727
    .local v3, data_size:I
    new-array v0, v12, [Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    .line 728
    const/4 v7, 0x0

    .local v7, i:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_33

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out:[Lcom/googlecode/javacpp/BytePointer;

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

    .line 728
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 715
    .end local v3           #data_size:I
    .end local v7           #i:I
    .end local v12           #planes:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_input_frame_size:I

    move/from16 v17, v0

    shr-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_input_frame_size:I

    goto/16 :goto_9

    .line 721
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_c:Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avcodec$AVCodecContext;->frame_size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_input_frame_size:I

    goto/16 :goto_9

    .line 724
    :cond_32
    const/4 v12, 0x1

    goto :goto_a

    .line 731
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

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in:[Lcom/googlecode/javacpp/Pointer;

    .line 732
    new-instance v17, Lcom/googlecode/javacpp/PointerPointer;

    const/16 v18, 0x8

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_in_ptr:Lcom/googlecode/javacpp/PointerPointer;

    .line 733
    new-instance v17, Lcom/googlecode/javacpp/PointerPointer;

    const/16 v18, 0x8

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->samples_out_ptr:Lcom/googlecode/javacpp/PointerPointer;

    .line 736
    invoke-static {}, Lcom/googlecode/javacv/cpp/avcodec;->avcodec_alloc_frame()Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->frame:Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    if-nez v17, :cond_34

    .line 737
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 738
    new-instance v17, Lcom/googlecode/javacv/FrameRecorder$Exception;

    const-string v18, "avcodec_alloc_frame() error: Could not allocate audio frame."

    invoke-direct/range {v17 .. v18}, Lcom/googlecode/javacv/FrameRecorder$Exception;-><init>(Ljava/lang/String;)V

    throw v17

    .line 743
    .end local v3           #data_size:I
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #options:Lcom/googlecode/javacv/cpp/avutil$AVDictionary;
    .end local v12           #planes:I
    .end local v14           #ret:I
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v17

    and-int/lit8 v17, v17, 0x1

    if-nez v17, :cond_36

    .line 744
    new-instance v11, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Lcom/googlecode/javacv/cpp/avformat$AVIOContext;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 745
    .local v11, pb:Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v11, v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->avio_open(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;Ljava/lang/String;I)I

    move-result v14

    .restart local v14       #ret:I
    if-gez v14, :cond_35

    .line 746
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 747
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

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->filename:Ljava/lang/String;

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

    .line 749
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    .line 753
    .end local v11           #pb:Lcom/googlecode/javacv/cpp/avformat$AVIOContext;
    .end local v14           #ret:I
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/googlecode/javacv/cpp/avformat;->avformat_write_header(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avutil$AVDictionary;)I

    .line 754
    return-void

    .line 596
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

    .line 710
    :pswitch_data_1
    .packed-switch 0x10000
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 757
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    if-eqz v0, :cond_3

    .line 760
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v1, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 761
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/googlecode/javacv/cpp/avcodec$AVFrame;

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/avcodec$AVFrame;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    :cond_2
    iget-boolean v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->interleaved:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->video_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->audio_st:Lcom/googlecode/javacv/cpp/avformat$AVStream;

    if-eqz v0, :cond_4

    .line 764
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_interleaved_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    .line 770
    :goto_0
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->av_write_trailer(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;)I

    .line 772
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oformat:Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVOutputFormat;->flags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    .line 774
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;->pb()Lcom/googlecode/javacv/cpp/avformat$AVIOContext;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/avformat;->avio_close(Lcom/googlecode/javacv/cpp/avformat$AVIOContext;)I

    .line 777
    :cond_3
    invoke-virtual {p0}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 778
    return-void

    .line 766
    :cond_4
    iget-object v0, p0, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->oc:Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/avformat;->av_write_frame(Lcom/googlecode/javacv/cpp/avformat$AVFormatContext;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)I

    goto :goto_0
.end method
