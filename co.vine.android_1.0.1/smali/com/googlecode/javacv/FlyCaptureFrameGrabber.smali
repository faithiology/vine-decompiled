.class public Lcom/googlecode/javacv/FlyCaptureFrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "FlyCaptureFrameGrabber.java"


# static fields
.field public static final CAMERA_POWER:I = 0x610

.field public static final IMAGE_DATA_FORMAT:I = 0x1048

.field public static final INITIALIZE:I = 0x0

.field public static final IS_CAMERA_POWER:I = 0x400

.field public static final SOFTWARE_TRIGGER:I = 0x62c

.field public static final SOFT_ASYNC_TRIGGER:I = 0x102c

.field public static final TRIGGER_INQ:I = 0x530

.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field private context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

.field private conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

.field private final gammaOut:[F

.field private final outFloat:[F

.field private raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

.field private final regOut:[I

.field private return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 118
    new-instance v1, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    invoke-direct {v1, v3}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    .line 119
    new-instance v1, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    invoke-direct {v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    .line 120
    new-instance v1, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    invoke-direct {v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;-><init>()V

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    .line 121
    iput-object v3, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 122
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    .line 123
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->outFloat:[F

    .line 124
    new-array v1, v2, [F

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    .line 85
    iget-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureCreateContext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I

    move-result v0

    .line 86
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 87
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flycaptureCreateContext() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    iget v2, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->numBuffers:I

    invoke-static {v1, p1, v2, v3}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureInitializePlus(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IILcom/googlecode/javacpp/BytePointer;)I

    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flycaptureInitialize() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    return-void
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/FlyCaptureFrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;-><init>(I)V

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/FlyCaptureFrameGrabber;
    .locals 1
    .parameter "deviceFile"
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

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/FlyCaptureFrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDepth(I)I
    .locals 1
    .parameter "pixelFormat"

    .prologue
    const/16 v0, 0x8

    .line 335
    sparse-switch p1, :sswitch_data_0

    .line 356
    :goto_0
    :sswitch_0
    return v0

    .line 346
    :sswitch_1
    const/16 v0, 0x10

    goto :goto_0

    .line 350
    :sswitch_2
    const v0, -0x7ffffff0

    goto :goto_0

    .line 335
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
        0x10000001 -> :sswitch_0
        0x10000002 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDeviceDescriptions()[Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->tryLoad()V

    .line 42
    const/4 v6, 0x1

    new-array v1, v6, [I

    .line 43
    .local v1, count:[I
    invoke-static {v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureBusCameraCount([I)I

    move-result v3

    .line 44
    .local v3, error:I
    if-eqz v3, :cond_0

    .line 45
    new-instance v6, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "flycaptureBusCameraCount() Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 47
    :cond_0
    const/4 v6, 0x0

    aget v0, v1, v6

    .line 48
    .local v0, c:I
    new-array v2, v0, [Ljava/lang/String;

    .line 50
    .local v2, descriptions:[Ljava/lang/String;
    if-lez v0, :cond_2

    .line 51
    new-instance v5, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;

    invoke-direct {v5, v0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;-><init>(I)V

    .line 52
    .local v5, info:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
    invoke-static {v5, v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureBusEnumerateCamerasEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;[I)I

    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    new-instance v6, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "flycaptureBusEnumerateCamerasEx() Error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 57
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_2

    .line 58
    invoke-virtual {v5, v4}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->position(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->pszVendorName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->pszModelName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;->SerialNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v4

    .line 57
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 64
    .end local v4           #i:I
    .end local v5           #info:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureInfoEx;
    :cond_2
    return-object v2
.end method

.method private getNumChannels(I)I
    .locals 1
    .parameter "pixelFormat"

    .prologue
    .line 310
    sparse-switch p1, :sswitch_data_0

    .line 331
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 315
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 322
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 325
    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 310
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x200 -> :sswitch_1
        0x400 -> :sswitch_1
        0x10000001 -> :sswitch_0
        0x10000002 -> :sswitch_2
    .end sparse-switch
.end method

.method public static tryLoad()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 73
    sget-object v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 74
    sget-object v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 77
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/PGRFlyCapture;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1
.end method

.method private waitForTriggerReady()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 279
    .local v1, time:J
    :cond_0
    iget-object v3, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/16 v4, 0x62c

    iget-object v5, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    invoke-static {v3, v4, v5}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I)I

    move-result v0

    .line 280
    .local v0, error:I
    if-eqz v0, :cond_1

    .line 281
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "flycaptureGetCameraRegister() Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 283
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget v5, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->timeout:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 288
    :goto_0
    return-void

    .line 287
    :cond_2
    iget-object v3, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    if-nez v3, :cond_0

    goto :goto_0
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
    .line 105
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 106
    invoke-virtual {p0}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->release()V

    .line 107
    return-void
.end method

.method public getFrameRate()D
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;->isNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFrameRate()D

    move-result-wide v0

    .line 143
    :goto_0
    return-wide v0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->outFloat:[F

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetCameraAbsProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[F)I

    .line 143
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->outFloat:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getGamma()D
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const-wide v0, 0x400199999999999aL

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    goto :goto_0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGrabImage2(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;)I

    move-result v9

    .line 362
    .local v9, error:I
    if-eqz v9, :cond_0

    .line 363
    new-instance v21, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "flycaptureGrabImage2() Error "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " (Has start() been called?)"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 366
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iCols()I

    move-result v20

    .line 367
    .local v20, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iRows()I

    move-result v12

    .line 368
    .local v12, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pixelFormat()I

    move-result v10

    .line 369
    .local v10, format:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->getDepth(I)I

    move-result v8

    .line 370
    .local v8, depth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iRowInc()I

    move-result v18

    .line 371
    .local v18, stride:I
    mul-int v17, v12, v18

    .line 372
    .local v17, size:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->getNumChannels(I)I

    move-result v15

    .line 373
    .local v15, numChannels:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    move-object/from16 v21, v0

    const/16 v22, 0x1048

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I)I

    move-result v9

    .line 374
    if-eqz v9, :cond_1

    .line 375
    new-instance v21, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "flycaptureGetCameraRegister() Error "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 377
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    and-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_9

    sget-object v11, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 379
    .local v11, frameEndian:Ljava/nio/ByteOrder;
    :goto_0
    const/4 v3, 0x0

    .line 380
    .local v3, alreadySwapped:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->bStippled()Z

    move-result v5

    .line 381
    .local v5, colorbayer:Z
    const/16 v21, 0x10

    move/from16 v0, v21

    if-eq v10, v0, :cond_2

    const/16 v21, 0x40

    move/from16 v0, v21

    if-eq v10, v0, :cond_2

    const v21, 0x10000001

    move/from16 v0, v21

    if-eq v10, v0, :cond_2

    const v21, 0x10000002

    move/from16 v0, v21

    if-ne v10, v0, :cond_a

    :cond_2
    const/4 v6, 0x1

    .line 383
    .local v6, colorrgb:Z
    :goto_1
    const/16 v21, 0x2

    move/from16 v0, v21

    if-eq v10, v0, :cond_3

    const/16 v21, 0x4

    move/from16 v0, v21

    if-eq v10, v0, :cond_3

    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v10, v0, :cond_b

    :cond_3
    const/4 v7, 0x1

    .line 385
    .local v7, coloryuv:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v13

    .line 387
    .local v13, imageData:Lcom/googlecode/javacpp/BytePointer;
    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v8, v0, :cond_4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/16 v21, 0x3

    move/from16 v0, v21

    if-eq v15, v0, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_c

    if-nez v5, :cond_c

    .line 390
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    if-nez v21, :cond_7

    .line 391
    move/from16 v0, v20

    invoke-static {v0, v12, v8, v15}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 393
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 459
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetColorTileFormat(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[I)I

    move-result v9

    .line 460
    if-eqz v9, :cond_23

    .line 461
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->sensorPattern:J

    .line 470
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->timeStamp()Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;

    move-result-object v19

    .line 471
    .local v19, timeStamp:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;->ulSeconds()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/32 v23, 0xf4240

    mul-long v21, v21, v23

    invoke-virtual/range {v19 .. v19}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;->ulMicroSeconds()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->timestamp:J

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    return-object v21

    .line 377
    .end local v3           #alreadySwapped:Z
    .end local v5           #colorbayer:Z
    .end local v6           #colorrgb:Z
    .end local v7           #coloryuv:Z
    .end local v11           #frameEndian:Ljava/nio/ByteOrder;
    .end local v13           #imageData:Lcom/googlecode/javacpp/BytePointer;
    .end local v19           #timeStamp:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureTimestamp;
    :cond_9
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto/16 :goto_0

    .line 381
    .restart local v3       #alreadySwapped:Z
    .restart local v5       #colorbayer:Z
    .restart local v11       #frameEndian:Ljava/nio/ByteOrder;
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 383
    .restart local v6       #colorrgb:Z
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 397
    .restart local v7       #coloryuv:Z
    .restart local v13       #imageData:Lcom/googlecode/javacpp/BytePointer;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    if-nez v21, :cond_d

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_12

    const/16 v21, 0x3

    :goto_5
    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v12, v8, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 400
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    if-nez v21, :cond_f

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_13

    const/16 v21, 0x1

    move/from16 v0, v21

    if-gt v15, v0, :cond_e

    const/16 v21, 0x8

    move/from16 v0, v21

    if-le v8, v0, :cond_13

    :cond_e
    if-nez v7, :cond_13

    if-nez v5, :cond_13

    .line 403
    move/from16 v0, v20

    invoke-static {v0, v12, v8, v15}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 414
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iRowInc(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    .line 416
    const/16 v21, 0x8

    move/from16 v0, v21

    if-ne v8, v0, :cond_19

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v23, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_17

    const/16 v21, 0x200

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pixelFormat(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    .line 424
    :goto_8
    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v8, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pixelFormat()I

    move-result v21

    move/from16 v0, v21

    if-ne v0, v10, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->iRowInc()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, v18

    if-ne v0, v1, :cond_1c

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .line 427
    .local v14, in:Ljava/nio/ShortBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v16

    .line 428
    .local v16, out:Ljava/nio/ShortBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 429
    const/4 v3, 0x1

    .line 442
    .end local v14           #in:Ljava/nio/ShortBuffer;
    .end local v16           #out:Ljava/nio/ShortBuffer;
    :cond_10
    :goto_9
    if-nez v3, :cond_11

    const/16 v21, 0x8

    move/from16 v0, v21

    if-eq v8, v0, :cond_11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_11

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 447
    .local v4, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v14

    .line 448
    .restart local v14       #in:Ljava/nio/ShortBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v16

    .line 449
    .restart local v16       #out:Ljava/nio/ShortBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 452
    .end local v4           #bb:Ljava/nio/ByteBuffer;
    .end local v14           #in:Ljava/nio/ShortBuffer;
    .end local v16           #out:Ljava/nio/ShortBuffer;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_21

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_21

    if-nez v7, :cond_21

    if-nez v5, :cond_21

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    invoke-static/range {v21 .. v23}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto/16 :goto_3

    .line 398
    :cond_12
    const/16 v21, 0x1

    goto/16 :goto_5

    .line 404
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    if-eqz v5, :cond_14

    .line 405
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v12, v8, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_6

    .line 406
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15

    if-eqz v6, :cond_15

    .line 407
    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v12, v8, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_6

    .line 408
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_16

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_16

    if-nez v7, :cond_16

    if-nez v5, :cond_16

    .line 409
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v0, v12, v8, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_6

    .line 411
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_6

    .line 417
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_18

    const/16 v21, 0x1

    goto/16 :goto_7

    :cond_18
    const v21, 0x10000001

    goto/16 :goto_7

    .line 420
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v23, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1a

    const/16 v21, 0x400

    :goto_a
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;->pixelFormat(I)Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v21

    const/16 v23, 0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b

    const/16 v21, 0x20

    goto :goto_a

    :cond_1b
    const/16 v21, 0x40

    goto :goto_a

    .line 430
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1d

    if-nez v6, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1f

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v15, v0, :cond_1f

    if-nez v7, :cond_1f

    if-nez v5, :cond_1f

    .line 432
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_9

    .line 435
    :cond_1f
    if-nez v6, :cond_10

    if-nez v5, :cond_20

    if-nez v7, :cond_20

    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v15, v0, :cond_10

    .line 436
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->raw_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;

    move-object/from16 v23, v0

    invoke-static/range {v21 .. v23}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureConvertImage(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureImage;)I

    move-result v9

    .line 437
    if-eqz v9, :cond_10

    .line 438
    new-instance v21, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "flycaptureConvertImage() Error "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v21

    .line 454
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    if-nez v5, :cond_22

    if-eqz v6, :cond_8

    .line 455
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v22, v0

    const/16 v23, 0x6

    invoke-static/range {v21 .. v23}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto/16 :goto_3

    .line 462
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    packed-switch v21, :pswitch_data_0

    .line 467
    const-wide/16 v21, -0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->sensorPattern:J

    goto/16 :goto_4

    .line 463
    :pswitch_0
    const-wide v21, 0x100000001L

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->sensorPattern:J

    goto/16 :goto_4

    .line 464
    :pswitch_1
    const-wide v21, 0x100000000L

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->sensorPattern:J

    goto/16 :goto_4

    .line 465
    :pswitch_2
    const-wide/16 v21, 0x1

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->sensorPattern:J

    goto/16 :goto_4

    .line 466
    :pswitch_3
    const-wide/16 v21, 0x0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->sensorPattern:J

    goto/16 :goto_4

    .line 462
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->stop()V

    .line 97
    iget-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureDestroyContext(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I

    move-result v0

    .line 98
    .local v0, error:I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    .line 99
    if-eqz v0, :cond_0

    .line 100
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flycaptureDestroyContext() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    .end local v0           #error:I
    :cond_0
    return-void
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 2
    .parameter "imageMode"

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq p1, v0, :cond_0

    .line 149
    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 150
    iput-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 152
    :cond_0
    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameGrabber;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    .line 153
    return-void
.end method

.method public start()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 156
    const/16 v15, 0xb

    .line 157
    .local v15, f:I
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide/16 v7, 0x0

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_4

    .line 158
    const/16 v15, 0xb

    .line 177
    :cond_0
    :goto_0
    const/16 v13, 0x10

    .line 178
    .local v13, c:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v1, v2, :cond_11

    .line 179
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    if-lez v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    if-gtz v1, :cond_c

    .line 180
    :cond_2
    const/16 v13, 0x10

    .line 209
    :cond_3
    :goto_1
    const/4 v1, 0x1

    new-array v3, v1, [I

    .line 210
    .local v3, iPolarity:[I
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 211
    .local v4, iSource:[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 212
    .local v5, iRawValue:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 213
    .local v6, iMode:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;[Z[I[I[I[I[I)I

    move-result v14

    .line 214
    .local v14, error:I
    if-eqz v14, :cond_1d

    .line 215
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureGetTrigger() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    .end local v3           #iPolarity:[I
    .end local v4           #iSource:[I
    .end local v5           #iRawValue:[I
    .end local v6           #iMode:[I
    .end local v13           #c:I
    .end local v14           #error:I
    :cond_4
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x3ffe04189374bc6aL

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_5

    .line 160
    const/4 v15, 0x0

    goto :goto_0

    .line 161
    :cond_5
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x400e147ae147ae14L

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_6

    .line 162
    const/4 v15, 0x1

    goto :goto_0

    .line 163
    :cond_6
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x401e0a3d70a3d70aL

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_7

    .line 164
    const/4 v15, 0x2

    goto :goto_0

    .line 165
    :cond_7
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x402e051eb851eb85L

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_8

    .line 166
    const/4 v15, 0x3

    goto/16 :goto_0

    .line 167
    :cond_8
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x403e028f5c28f5c3L

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_9

    .line 168
    const/4 v15, 0x4

    goto/16 :goto_0

    .line 169
    :cond_9
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x404e0147ae147ae1L

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_a

    .line 170
    const/4 v15, 0x6

    goto/16 :goto_0

    .line 171
    :cond_a
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x405e00a3d70a3d71L

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_b

    .line 172
    const/4 v15, 0x7

    goto/16 :goto_0

    .line 173
    :cond_b
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameRate:D

    const-wide v7, 0x406e0051eb851eb8L

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_0

    .line 174
    const/16 v15, 0x8

    goto/16 :goto_0

    .line 181
    .restart local v13       #c:I
    :cond_c
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x280

    if-gt v1, v2, :cond_d

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_d

    .line 182
    const/4 v13, 0x4

    goto/16 :goto_1

    .line 183
    :cond_d
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x320

    if-gt v1, v2, :cond_e

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x258

    if-gt v1, v2, :cond_e

    .line 184
    const/16 v13, 0x12

    goto/16 :goto_1

    .line 185
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x400

    if-gt v1, v2, :cond_f

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x300

    if-gt v1, v2, :cond_f

    .line 186
    const/16 v13, 0x15

    goto/16 :goto_1

    .line 187
    :cond_f
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x500

    if-gt v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x3c0

    if-gt v1, v2, :cond_10

    .line 188
    const/16 v13, 0x17

    goto/16 :goto_1

    .line 189
    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x640

    if-gt v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x4b0

    if-gt v1, v2, :cond_3

    .line 190
    const/16 v13, 0x33

    goto/16 :goto_1

    .line 192
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v1, v2, :cond_3

    .line 193
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    if-lez v1, :cond_12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    if-gtz v1, :cond_13

    .line 194
    :cond_12
    const/16 v13, 0x10

    goto/16 :goto_1

    .line 195
    :cond_13
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x280

    if-gt v1, v2, :cond_15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_15

    .line 196
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->bpp:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_14

    const/4 v13, 0x6

    :goto_2
    goto/16 :goto_1

    :cond_14
    const/4 v13, 0x5

    goto :goto_2

    .line 197
    :cond_15
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x320

    if-gt v1, v2, :cond_17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x258

    if-gt v1, v2, :cond_17

    .line 198
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->bpp:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_16

    const/16 v13, 0x13

    :goto_3
    goto/16 :goto_1

    :cond_16
    const/4 v13, 0x7

    goto :goto_3

    .line 199
    :cond_17
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x400

    if-gt v1, v2, :cond_19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x300

    if-gt v1, v2, :cond_19

    .line 200
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->bpp:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_18

    const/16 v13, 0x9

    :goto_4
    goto/16 :goto_1

    :cond_18
    const/16 v13, 0x8

    goto :goto_4

    .line 201
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x500

    if-gt v1, v2, :cond_1b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x3c0

    if-gt v1, v2, :cond_1b

    .line 202
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->bpp:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_1a

    const/16 v13, 0x18

    :goto_5
    goto/16 :goto_1

    :cond_1a
    const/16 v13, 0xa

    goto :goto_5

    .line 203
    :cond_1b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageWidth:I

    const/16 v2, 0x640

    if-gt v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->imageHeight:I

    const/16 v2, 0x4b0

    if-gt v1, v2, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->bpp:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_1c

    const/16 v13, 0x34

    :goto_6
    goto/16 :goto_1

    :cond_1c
    const/16 v13, 0xb

    goto :goto_6

    .line 217
    .restart local v3       #iPolarity:[I
    .restart local v4       #iSource:[I
    .restart local v5       #iRawValue:[I
    .restart local v6       #iMode:[I
    .restart local v14       #error:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->triggerMode:Z

    const/4 v1, 0x0

    aget v9, v3, v1

    const/4 v10, 0x7

    const/16 v11, 0xe

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;ZIIII)I

    move-result v14

    .line 218
    if-eqz v14, :cond_1e

    .line 220
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/4 v8, 0x1

    const/4 v1, 0x0

    aget v9, v3, v1

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetTrigger(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;ZIIII)I

    move-result v14

    .line 222
    :cond_1e
    if-eqz v14, :cond_1f

    .line 223
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureSetTrigger() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->triggerMode:Z

    if-eqz v1, :cond_20

    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->waitForTriggerReady()V

    .line 230
    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/16 v2, 0x1048

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    invoke-static {v1, v2, v7}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[I)I

    move-result v14

    .line 231
    if-eqz v14, :cond_21

    .line 232
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureGetCameraRegister() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 235
    :cond_21
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    or-int/lit8 v16, v1, 0x1

    .line 240
    .local v16, reg:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/16 v2, 0x1048

    move/from16 v0, v16

    invoke-static {v1, v2, v0}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I

    move-result v14

    .line 241
    if-eqz v14, :cond_23

    .line 242
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureSetCameraRegister() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    .end local v16           #reg:I
    :cond_22
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->regOut:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    and-int/lit8 v16, v1, -0x2

    .restart local v16       #reg:I
    goto :goto_7

    .line 245
    :cond_23
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/4 v2, 0x7

    const/4 v7, 0x7

    invoke-static {v1, v2, v7}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetBusSpeed(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I

    move-result v14

    .line 246
    if-eqz v14, :cond_24

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/16 v2, 0x8

    const/16 v7, 0x8

    invoke-static {v1, v2, v7}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetBusSpeed(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I

    move-result v14

    .line 249
    if-eqz v14, :cond_24

    .line 250
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureSetBusSpeed() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_24
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gamma:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v1, v7

    if-eqz v1, :cond_25

    .line 255
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gamma:D

    double-to-float v7, v7

    invoke-static {v1, v2, v7}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetCameraAbsProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;IF)I

    move-result v14

    .line 256
    if-eqz v14, :cond_25

    .line 257
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureSetCameraAbsProperty() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ": Could not set gamma."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    invoke-static {v1, v2, v7}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureGetCameraAbsProperty(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I[F)I

    move-result v14

    .line 261
    if-eqz v14, :cond_26

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->gammaOut:[F

    const/4 v2, 0x0

    const v7, 0x400ccccd

    aput v7, v1, v2

    .line 265
    :cond_26
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    invoke-static {v1, v13, v15}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureStart(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I

    move-result v14

    .line 266
    if-eqz v14, :cond_27

    .line 267
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureStart() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 269
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->timeout:I

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetGrabTimeoutEx(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;I)I

    move-result v14

    .line 270
    if-eqz v14, :cond_28

    .line 271
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flycaptureSetGrabTimeoutEx() Error "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_28
    return-void
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureStop(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;)I

    move-result v0

    .line 292
    .local v0, error:I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 293
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flycaptureStop() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 295
    :cond_0
    iput-object v2, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 296
    iput-object v2, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 297
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->timestamp:J

    .line 298
    const/4 v1, 0x0

    iput v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->frameNumber:I

    .line 299
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
    .line 302
    invoke-direct {p0}, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->waitForTriggerReady()V

    .line 303
    iget-object v1, p0, Lcom/googlecode/javacv/FlyCaptureFrameGrabber;->context:Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;

    const/16 v2, 0x102c

    const/high16 v3, -0x8000

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/cpp/PGRFlyCapture;->flycaptureSetCameraRegister(Lcom/googlecode/javacv/cpp/PGRFlyCapture$FlyCaptureContext;II)I

    move-result v0

    .line 304
    .local v0, error:I
    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flycaptureSetCameraRegister() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 307
    :cond_0
    return-void
.end method
