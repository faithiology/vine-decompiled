.class public Lco/vine/android/recorder/ProcessorRunnable;
.super Ljava/lang/Object;
.source "ProcessorRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final A:I = -0x1000000


# instance fields
.field private errorCount:I

.field private hasLoggedException:Z

.field private lastH:I

.field private lastW:I

.field private mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

.field private final mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;

.field private mCurrentFrameSize:I

.field private final mCurrentVideoOutput:Ljava/lang/String;

.field private final mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lco/vine/android/recorder/ConcurrentData$VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private final mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private final mEncodingLibraryPath:Ljava/lang/String;

.field private mFilterYuv:Lco/vine/android/recorder/RsYuv;

.field private mHasGeneratedThumbnail:Z

.field private mIntBuffer:Ljava/nio/IntBuffer;

.field private mLastFrameRate:I

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mMatrixBitmap:Landroid/graphics/Bitmap;

.field private mMatrixCanvas:Landroid/graphics/Canvas;

.field private final mNoBuffer:Z

.field private final mOutput:Ljava/lang/String;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mProducer:Lco/vine/android/recorder/RecordController;

.field private mRS:Landroid/renderscript/RenderScript;

.field private mRect:Landroid/graphics/Rect;

.field private final mTargetSize:I

.field private volatile mTerminateImmediately:Z

.field private final mThumbnailBitmap:Landroid/graphics/Bitmap;

.field private final mThumbnailCanvas:Landroid/graphics/Canvas;

.field private mTimeOffset:J

.field private mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

.field private srcBmp:Landroid/graphics/Bitmap;

.field private timeToMatrix:J

.field private timeToRGB:J

.field private timeToRecord:J

.field private totalSizeToWait:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;Lco/vine/android/recorder/RecordController;Landroid/content/Context;Ljava/lang/String;ILco/vine/android/recorder/ConcurrentData$CameraSetting;Lco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/VineFFmpegFrameRecorder;Lco/vine/android/recorder/VineFFmpegFrameRecorder;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/nio/ByteBuffer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/renderscript/RenderScript;)V
    .locals 3
    .parameter
    .parameter "producer"
    .parameter "context"
    .parameter "output"
    .parameter "targetSize"
    .parameter "cameraSetting"
    .parameter "cameraManager"
    .parameter "audioRecorder"
    .parameter "videoRecorder"
    .parameter "image"
    .parameter "buffer"
    .parameter "bitmap"
    .parameter "bitmapForThumbnail"
    .parameter "rs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lco/vine/android/recorder/ConcurrentData$VideoData;",
            ">;",
            "Lco/vine/android/recorder/RecordController;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Lco/vine/android/recorder/ConcurrentData$CameraSetting;",
            "Lco/vine/android/recorder/CameraManager;",
            "Lco/vine/android/recorder/VineFFmpegFrameRecorder;",
            "Lco/vine/android/recorder/VineFFmpegFrameRecorder;",
            "Lcom/googlecode/javacv/cpp/opencv_core$IplImage;",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/Bitmap;",
            "Landroid/graphics/Bitmap;",
            "Landroid/renderscript/RenderScript;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, queue:Ljava/util/concurrent/ConcurrentLinkedQueue;,"Ljava/util/concurrent/ConcurrentLinkedQueue<Lco/vine/android/recorder/ConcurrentData$VideoData;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v1, 0x0

    iput v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    .line 68
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    .line 80
    iput-object p10, p0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 81
    iput-object p1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 82
    iput-object p2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    .line 83
    invoke-static {p3}, Lco/vine/android/recorder/RecordConfigUtils;->getEncodingLibraryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingLibraryPath:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    .line 85
    iput p5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    .line 86
    move-object/from16 v0, p14

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    .line 87
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    .line 88
    iput-object p7, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    .line 89
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mPaint:Landroid/graphics/Paint;

    .line 90
    iput-object p11, p0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {p9}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFilename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    .line 92
    iput-object p9, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    .line 93
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    .line 94
    iput-object p8, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    .line 95
    iput-object p12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 96
    move-object/from16 v0, p13

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 97
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 98
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 99
    new-instance v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    invoke-direct {v1, p3}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    iget-boolean v1, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->noBuffer:Z

    iput-boolean v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mNoBuffer:Z

    .line 100
    invoke-virtual {p0, p6}, Lco/vine/android/recorder/ProcessorRunnable;->setCameraSetting(Lco/vine/android/recorder/ConcurrentData$CameraSetting;)V

    .line 101
    return-void
.end method

.method private convertUsingCompression(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V
    .locals 9
    .parameter "next"
    .parameter "data"
    .parameter "hasChanged"

    .prologue
    const/4 v8, 0x0

    .line 325
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_1

    .line 326
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v3, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {v1, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    .line 328
    :cond_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 329
    .local v7, out:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v4, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 330
    .local v0, yuv:Landroid/graphics/YuvImage;
    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRect:Landroid/graphics/Rect;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 331
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 332
    .local v6, bytes:[B
    array-length v1, v6

    invoke-static {v6, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 333
    return-void
.end method

.method private convertUsingJavaConversion(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V
    .locals 2
    .parameter "next"
    .parameter "data"
    .parameter "hasChanged"

    .prologue
    .line 336
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    .line 337
    :cond_0
    iget v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 339
    :cond_1
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->rewind()Ljava/nio/Buffer;

    .line 340
    iget-object v0, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v1, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v1, v1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {p0, p2, v0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->decodeYUV420SP([BII)V

    .line 341
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 342
    return-void
.end method

.method private convertUsingRenderScript(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V
    .locals 4
    .parameter "next"
    .parameter "data"
    .parameter "hasChanged"

    .prologue
    .line 300
    if-nez p2, :cond_0

    .line 301
    const-string v0, "Data is null."

    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->log(Ljava/lang/String;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    if-eqz v0, :cond_1

    if-eqz p3, :cond_2

    .line 304
    :cond_1
    new-instance v0, Lco/vine/android/recorder/RsYuv;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v2, v2, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget-object v3, p1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/renderscript/RenderScript;II)V

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    .line 306
    :cond_2
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2, v1}, Lco/vine/android/recorder/RsYuv;->execute([BLandroid/graphics/Bitmap;)V

    .line 307
    return-void
.end method

.method private createThumbnail()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-static {v4}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPathFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, f:Ljava/io/File;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    iget-object v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 313
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 314
    .local v1, compressed:[B
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 315
    .local v3, fos:Ljava/io/FileOutputStream;
    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 316
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 317
    const-string v4, "Successfully created thumbnail: {}, {}"

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 318
    return-void
.end method

.method private decodeYUV420SP([BII)V
    .locals 15
    .parameter "data"
    .parameter "imageWidth"
    .parameter "imageHeight"

    .prologue
    .line 346
    const/4 v10, 0x0

    .local v10, y:I
    :goto_0
    move/from16 v0, p3

    if-ge v10, v0, :cond_7

    .line 347
    const/4 v8, 0x0

    .local v8, x:I
    :goto_1
    move/from16 v0, p2

    if-ge v8, v0, :cond_6

    .line 348
    mul-int v12, v10, p2

    add-int/2addr v12, v8

    aget-byte v12, p1, v12

    and-int/lit16 v6, v12, 0xff

    .line 350
    .local v6, Y:I
    shr-int/lit8 v12, v8, 0x1

    shl-int/lit8 v9, v12, 0x1

    .line 351
    .local v9, xby2:I
    shr-int/lit8 v11, v10, 0x1

    .line 352
    .local v11, yby2:I
    iget v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    add-int/2addr v12, v9

    mul-int v13, v11, p2

    add-int/2addr v12, v13

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v4, v12, -0x80

    .line 353
    .local v4, U:I
    iget v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    add-int/2addr v12, v9

    add-int/lit8 v12, v12, 0x1

    mul-int v13, v11, p2

    add-int/2addr v12, v13

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    add-int/lit8 v5, v12, -0x80

    .line 354
    .local v5, V:I
    mul-int/lit16 v12, v6, 0x48c

    add-int/lit16 v7, v12, -0x3e80

    .line 355
    .local v7, Yf:I
    mul-int/lit16 v12, v5, 0x63c

    add-int v3, v7, v12

    .line 356
    .local v3, R:I
    mul-int/lit16 v12, v5, 0x32d

    sub-int v12, v7, v12

    mul-int/lit16 v13, v4, 0x187

    sub-int v2, v12, v13

    .line 357
    .local v2, G:I
    mul-int/lit16 v12, v4, 0x7e2

    add-int v1, v7, v12

    .line 360
    .local v1, B:I
    if-gez v3, :cond_0

    const/4 v3, 0x0

    .line 361
    :goto_2
    if-gez v2, :cond_2

    const/4 v2, 0x0

    .line 362
    :goto_3
    if-gez v1, :cond_4

    const/4 v1, 0x0

    .line 364
    :goto_4
    iget-object v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    const/high16 v13, -0x100

    shl-int/lit8 v14, v3, 0x10

    add-int/2addr v13, v14

    shl-int/lit8 v14, v2, 0x8

    add-int/2addr v13, v14

    add-int/2addr v13, v1

    invoke-virtual {v12, v13}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    .line 347
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 360
    :cond_0
    const v12, 0x3e418

    if-le v3, v12, :cond_1

    const/16 v3, 0xff

    goto :goto_2

    :cond_1
    div-int/lit16 v3, v3, 0x3e8

    goto :goto_2

    .line 361
    :cond_2
    const v12, 0x3e418

    if-le v2, v12, :cond_3

    const/16 v2, 0xff

    goto :goto_3

    :cond_3
    div-int/lit16 v2, v2, 0x3e8

    goto :goto_3

    .line 362
    :cond_4
    const v12, 0x3e418

    if-le v1, v12, :cond_5

    const/16 v1, 0xff

    goto :goto_4

    :cond_5
    div-int/lit16 v1, v1, 0x3e8

    goto :goto_4

    .line 346
    .end local v1           #B:I
    .end local v2           #G:I
    .end local v3           #R:I
    .end local v4           #U:I
    .end local v5           #V:I
    .end local v6           #Y:I
    .end local v7           #Yf:I
    .end local v9           #xby2:I
    .end local v11           #yby2:I
    :cond_6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 368
    .end local v8           #x:I
    :cond_7
    iget-object v12, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v12}, Ljava/nio/IntBuffer;->flip()Ljava/nio/Buffer;

    .line 369
    return-void
.end method

.method private getFrameNumber(JI)I
    .locals 4
    .parameter "timestamp"
    .parameter "frameRate"

    .prologue
    .line 372
    int-to-long v0, p3

    mul-long/2addr v0, p1

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private giveMatrixNewValues(III)V
    .locals 9
    .parameter "degrees"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v8, 0x4000

    .line 184
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 185
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    iget v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v6, v6

    int-to-float v7, p3

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 186
    .local v4, scaleFactor:F
    int-to-float v5, p2

    mul-float v1, v5, v4

    .line 187
    .local v1, actualWidth:F
    int-to-float v5, p3

    mul-float v0, v5, v4

    .line 188
    .local v0, actualHeight:F
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    sub-float v5, v1, v5

    neg-float v5, v5

    div-float v2, v5, v8

    .line 189
    .local v2, offsetX:F
    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTargetSize:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    neg-float v5, v5

    div-float v3, v5, v8

    .line 190
    .local v3, offsetY:F
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v6, p1

    div-int/lit8 v7, p2, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, p3, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 191
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 192
    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 193
    return-void
.end method

.method private process(Z)V
    .locals 7
    .parameter "waitForMore"

    .prologue
    const/4 v4, 0x1

    .line 377
    :cond_0
    :goto_0
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/ConcurrentData$VideoData;

    .local v1, next:Lco/vine/android/recorder/ConcurrentData$VideoData;
    if-nez v1, :cond_1

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 378
    :cond_1
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v3, :cond_3

    .line 379
    const-string v3, "Terminate without saving...."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 422
    :cond_2
    :goto_1
    return-void

    .line 382
    :cond_3
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v3, :cond_5

    .line 383
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    .line 384
    .local v2, size:I
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 385
    iget v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    .line 386
    iput v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    .line 387
    const/4 v3, -0x8

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 389
    :cond_4
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    iget v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    sub-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x62

    iget v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->totalSizeToWait:I

    div-int/2addr v5, v6

    invoke-virtual {v3, v5}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 391
    .end local v2           #size:I
    :cond_5
    if-nez v1, :cond_6

    .line 392
    if-eqz p1, :cond_0

    .line 394
    :try_start_0
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v3, :cond_2

    .line 397
    const-wide/16 v5, 0x64

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "Break signal reached."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 405
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_6
    :try_start_1
    iget-object v3, v1, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    iget v3, v3, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iput v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    .line 406
    if-nez p1, :cond_8

    move v3, v4

    :goto_2
    invoke-direct {p0, v1, v3}, Lco/vine/android/recorder/ProcessorRunnable;->processVideoData(Lco/vine/android/recorder/ConcurrentData$VideoData;Z)V
    :try_end_1
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 407
    :catch_1
    move-exception v0

    .line 408
    .local v0, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    if-nez v3, :cond_7

    .line 409
    iput-boolean v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    .line 410
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 412
    :cond_7
    const-string v3, "Failed to processVideoData sample."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 406
    .end local v0           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 413
    :catch_2
    move-exception v0

    .line 414
    .local v0, e:Ljava/io/IOException;
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    if-nez v3, :cond_9

    .line 415
    iput-boolean v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->hasLoggedException:Z

    .line 416
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 418
    :cond_9
    const-string v3, "Failed to generate thumbnail."

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private processVideoData(Lco/vine/android/recorder/ConcurrentData$VideoData;Z)V
    .locals 22
    .parameter "next"
    .parameter "isFlushing"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameRecorder$Exception;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    move-object/from16 v0, p1

    iget-object v5, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    .line 197
    .local v5, data:[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 198
    .local v16, startTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastW:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->lastH:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    :cond_0
    const/4 v12, 0x1

    .line 200
    .local v12, hasChanged:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    if-eqz v12, :cond_2

    .line 201
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/ProcessorRunnable;->setCameraSetting(Lco/vine/android/recorder/ConcurrentData$CameraSetting;)V

    .line 204
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixBitmap:Landroid/graphics/Bitmap;

    .line 205
    .local v3, bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrixCanvas:Landroid/graphics/Canvas;

    .line 208
    .local v4, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 209
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lco/vine/android/recorder/ProcessorRunnable;->mHasGeneratedThumbnail:Z

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/ProcessorRunnable;->mThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 211
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/ProcessorRunnable;->mThumbnailCanvas:Landroid/graphics/Canvas;

    .line 215
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lco/vine/android/recorder/ProcessorRunnable;->convertUsingRenderScript(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V

    .line 222
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mMatrix:Landroid/graphics/Matrix;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 227
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    .line 229
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 297
    :cond_4
    :goto_2
    return-void

    .line 198
    .end local v3           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #canvas:Landroid/graphics/Canvas;
    .end local v12           #hasChanged:Z
    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 219
    .restart local v3       #bitmap:Landroid/graphics/Bitmap;
    .restart local v4       #canvas:Landroid/graphics/Canvas;
    .restart local v12       #hasChanged:Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v12}, Lco/vine/android/recorder/ProcessorRunnable;->convertUsingJavaConversion(Lco/vine/android/recorder/ConcurrentData$VideoData;[BZ)V

    goto :goto_1

    .line 234
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mByteBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 239
    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->mCameraSetting:Lco/vine/android/recorder/ConcurrentData$CameraSetting;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v11, v0, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    .line 241
    .local v11, frameRate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    int-to-double v0, v11

    move-wide/from16 v19, v0

    invoke-virtual/range {v18 .. v20}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setFrameRate(D)V

    .line 243
    move-object/from16 v0, p1

    iget-wide v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_8

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    .line 248
    :cond_8
    move-object/from16 v0, p1

    iget-wide v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTimeOffset:J

    move-wide/from16 v20, v0

    add-long v6, v18, v20

    .line 250
    .local v6, determinedTimestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFrameNumber()I

    move-result v13

    .line 251
    .local v13, nextFrameNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getTimestamp()J

    move-result-wide v14

    .line 256
    .local v14, nextTimestamp:J
    sub-long v18, v6, v14

    const v20, 0xf4240

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    move/from16 v21, v0

    div-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-lez v18, :cond_a

    .line 257
    const-string v18, "*******Skipped frame*******"

    invoke-static/range {v18 .. v18}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setTimestampAndGetFrameNumber(J)I

    move-result v13

    .line 263
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 272
    const-string v18, "Successfully did video frame at {}, #{}."

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mNoBuffer:Z

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V

    .line 296
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    move-wide/from16 v18, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    goto/16 :goto_2

    .line 260
    :cond_a
    move-wide v6, v14

    goto :goto_3

    .line 273
    :catch_0
    move-exception v8

    .line 274
    .local v8, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v18, "Failed to record video frame at {}. #{}."

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 277
    const-string v18, "Retry successful #{}."

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 278
    :catch_1
    move-exception v9

    .line 279
    .local v9, e2:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v18, "Retry again: #{}."

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    const-wide/16 v18, 0x3e8

    int-to-long v0, v11

    move-wide/from16 v20, v0

    div-long v18, v18, v20

    add-long v6, v6, v18

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v11}, Lco/vine/android/recorder/ProcessorRunnable;->getFrameNumber(JI)I

    move-result v13

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6, v7}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->setTimestamp(J)V

    .line 283
    move-object/from16 v0, p1

    iput-wide v6, v0, Lco/vine/android/recorder/ConcurrentData$VideoData;->timestamp:J

    .line 285
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->record(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    .line 286
    const-string v18, "Retry Retry successful #{}."

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 287
    :catch_2
    move-exception v10

    .line 288
    .local v10, e3:Lcom/googlecode/javacv/FrameRecorder$Exception;
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    .line 289
    const-string v18, "Retry failed: {}."

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_4
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 130
    const/16 v3, 0x13

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 131
    const-string v3, "Processing started."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 132
    :cond_0
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-direct {p0, v9}, Lco/vine/android/recorder/ProcessorRunnable;->process(Z)V

    .line 134
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-eqz v3, :cond_0

    .line 138
    :cond_1
    const-string v3, "Flushing..."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 139
    iget-boolean v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    if-nez v3, :cond_5

    .line 140
    invoke-direct {p0, v8}, Lco/vine/android/recorder/ProcessorRunnable;->process(Z)V

    .line 145
    :goto_0
    :try_start_0
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    iget-object v3, v3, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineRecorder;->canKeepRecording()Z

    move-result v3

    if-nez v3, :cond_3

    .line 146
    sget-object v4, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->LOCK:[I

    monitor-enter v4
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :try_start_1
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->stop()V

    .line 148
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 149
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->stop()V

    .line 150
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->release()V

    .line 151
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v2

    .line 152
    .local v2, hasAudioData:Z
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAudioRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, audioFileName:Ljava/lang/String;
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mProducer:Lco/vine/android/recorder/RecordController;

    iget-object v3, v3, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/VineRecorder;

    iget-boolean v3, v3, Lco/vine/android/recorder/VineRecorder;->mDiscardChanges:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    .line 155
    :try_start_2
    invoke-direct {p0}, Lco/vine/android/recorder/ProcessorRunnable;->createThumbnail()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 159
    :goto_1
    if-eqz v2, :cond_6

    :try_start_3
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 160
    new-instance v3, Lco/vine/android/recorder/VineProcessor;

    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mEncodingLibraryPath:Ljava/lang/String;

    invoke-direct {v3, v5}, Lco/vine/android/recorder/VineProcessor;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentVideoOutput:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->getMetadata()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v3, v5, v0, v6, v7}, Lco/vine/android/recorder/VineProcessor;->combineVideoAndAudio(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I

    .line 170
    :cond_2
    :goto_2
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    .end local v0           #audioFileName:Ljava/lang/String;
    .end local v2           #hasAudioData:Z
    :cond_3
    :goto_3
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    if-eqz v3, :cond_4

    .line 176
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    const/16 v4, 0x63

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/VineRecorder$FinishProcessTask;->publish(I)V

    .line 178
    :cond_4
    const-string v3, "Processing thread finished: failed {} frames."

    iget v4, p0, Lco/vine/android/recorder/ProcessorRunnable;->errorCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const-string v3, "Time used: rgb: {}, matrix: {}, record: {}."

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRGB:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    iget-wide v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->timeToMatrix:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    const/4 v5, 0x2

    iget-wide v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->timeToRecord:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void

    .line 142
    :cond_5
    const-string v3, "Terminate without saving...."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    .restart local v0       #audioFileName:Ljava/lang/String;
    .restart local v2       #hasAudioData:Z
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v3, "Something bad has happened when generating a thumbnail."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v3, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 170
    .end local v0           #audioFileName:Ljava/lang/String;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #hasAudioData:Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Lcom/googlecode/javacv/FrameRecorder$Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 172
    :catch_1
    move-exception v1

    .line 173
    .local v1, e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    const-string v3, "Error flushing..."

    invoke-static {v3, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 162
    .end local v1           #e:Lcom/googlecode/javacv/FrameRecorder$Exception;
    .restart local v0       #audioFileName:Ljava/lang/String;
    .restart local v2       #hasAudioData:Z
    :cond_6
    if-eqz v2, :cond_7

    .line 163
    :try_start_6
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 165
    :cond_7
    iget-object v3, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->hasData()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 166
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lco/vine/android/recorder/ProcessorRunnable;->mVideoRecorder:Lco/vine/android/recorder/VineFFmpegFrameRecorder;

    invoke-virtual {v5}, Lco/vine/android/recorder/VineFFmpegFrameRecorder;->getFilename()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lco/vine/android/recorder/ProcessorRunnable;->mOutput:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public setAsyncTask(Lco/vine/android/recorder/VineRecorder$FinishProcessTask;)V
    .locals 0
    .parameter "task"

    .prologue
    .line 120
    iput-object p1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mAsyncTask:Lco/vine/android/recorder/VineRecorder$FinishProcessTask;

    .line 121
    return-void
.end method

.method public setCameraSetting(Lco/vine/android/recorder/ConcurrentData$CameraSetting;)V
    .locals 4
    .parameter "cameraSetting"

    .prologue
    .line 104
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->frameRate:I

    iput v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mLastFrameRate:I

    .line 105
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget v1, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    .line 108
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget v1, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    .line 109
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    iput v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->lastH:I

    .line 110
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iput v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->lastW:I

    .line 111
    iget v0, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->degrees:I

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lco/vine/android/recorder/ProcessorRunnable;->srcBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lco/vine/android/recorder/ProcessorRunnable;->giveMatrixNewValues(III)V

    .line 112
    iget-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    if-nez v0, :cond_0

    .line 113
    iget v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mCurrentFrameSize:I

    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mIntBuffer:Ljava/nio/IntBuffer;

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    new-instance v0, Lco/vine/android/recorder/RsYuv;

    iget-object v1, p0, Lco/vine/android/recorder/ProcessorRunnable;->mRS:Landroid/renderscript/RenderScript;

    iget v2, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalW:I

    iget v3, p1, Lco/vine/android/recorder/ConcurrentData$CameraSetting;->originalH:I

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/recorder/RsYuv;-><init>(Landroid/renderscript/RenderScript;II)V

    iput-object v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mFilterYuv:Lco/vine/android/recorder/RsYuv;

    goto :goto_0
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 124
    const-string v0, "Terminate without saving turned on."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/ProcessorRunnable;->mTerminateImmediately:Z

    .line 126
    return-void
.end method
