.class public abstract Lcom/googlecode/javacv/FrameGrabber;
.super Ljava/lang/Object;
.source "FrameGrabber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/FrameGrabber$Array;,
        Lcom/googlecode/javacv/FrameGrabber$Exception;,
        Lcom/googlecode/javacv/FrameGrabber$ImageMode;,
        Lcom/googlecode/javacv/FrameGrabber$PropertyEditor;
    }
.end annotation


# static fields
.field public static final SENSOR_PATTERN_BGGR:J = 0x100000001L

.field public static final SENSOR_PATTERN_GBRG:J = 0x100000000L

.field public static final SENSOR_PATTERN_GRBG:J = 0x1L

.field public static final SENSOR_PATTERN_RGGB:J

.field public static final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected audioChannels:I

.field protected bpp:I

.field protected deinterlace:Z

.field private delayedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private delayedTime:J

.field private executor:Ljava/util/concurrent/ExecutorService;

.field protected format:Ljava/lang/String;

.field protected frameNumber:I

.field protected frameRate:D

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field protected gamma:D

.field protected imageHeight:I

.field protected imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

.field protected imageWidth:I

.field protected numBuffers:I

.field protected pixelFormat:I

.field protected sampleFormat:I

.field protected sampleRate:I

.field protected sensorPattern:J

.field protected timeout:I

.field protected timestamp:J

.field protected triggerMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 44
    new-instance v0, Ljava/util/LinkedList;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DC1394"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "FlyCapture"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "OpenKinect"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "PS3Eye"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "VideoInput"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "OpenCV"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "FFmpeg"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/googlecode/javacv/FrameGrabber;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object v3, p0, Lcom/googlecode/javacv/FrameGrabber;->format:Ljava/lang/String;

    .line 170
    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->imageWidth:I

    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->imageHeight:I

    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->audioChannels:I

    .line 171
    sget-object v0, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 172
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->sensorPattern:J

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/googlecode/javacv/FrameGrabber;->pixelFormat:I

    .line 174
    iput-wide v4, p0, Lcom/googlecode/javacv/FrameGrabber;->frameRate:D

    .line 175
    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->sampleFormat:I

    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->sampleRate:I

    .line 176
    iput-boolean v2, p0, Lcom/googlecode/javacv/FrameGrabber;->triggerMode:Z

    .line 177
    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->bpp:I

    .line 178
    const/16 v0, 0x2710

    iput v0, p0, Lcom/googlecode/javacv/FrameGrabber;->timeout:I

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/googlecode/javacv/FrameGrabber;->numBuffers:I

    .line 180
    iput-wide v4, p0, Lcom/googlecode/javacv/FrameGrabber;->gamma:D

    .line 181
    iput-boolean v2, p0, Lcom/googlecode/javacv/FrameGrabber;->deinterlace:Z

    .line 182
    iput v2, p0, Lcom/googlecode/javacv/FrameGrabber;->frameNumber:I

    .line 183
    iput-wide v6, p0, Lcom/googlecode/javacv/FrameGrabber;->timestamp:J

    .line 342
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->executor:Ljava/util/concurrent/ExecutorService;

    .line 343
    iput-object v3, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    .line 344
    iput-object v3, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 345
    iput-wide v6, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J

    .line 376
    return-void
.end method

.method static synthetic access$002(Lcom/googlecode/javacv/FrameGrabber;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    return-object p1
.end method

.method static synthetic access$100(Lcom/googlecode/javacv/FrameGrabber;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/googlecode/javacv/FrameGrabber;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J

    return-wide p1
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;
    .locals 5
    .parameter
    .parameter "p"
    .parameter "o"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/googlecode/javacv/FrameGrabber;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    const/4 v0, 0x0

    .line 95
    .local v0, cause:Ljava/lang/Throwable;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/googlecode/javacv/FrameGrabber;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    return-object v2

    .line 96
    :catch_0
    move-exception v1

    .line 97
    .local v1, ex:Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 107
    .end local v1           #ex:Ljava/lang/InstantiationException;
    :goto_0
    new-instance v2, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, ex:Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .line 106
    goto :goto_0

    .line 100
    .end local v1           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 101
    .local v1, ex:Ljava/lang/IllegalArgumentException;
    move-object v0, v1

    .line 106
    goto :goto_0

    .line 102
    .end local v1           #ex:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 103
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    move-object v0, v1

    .line 106
    goto :goto_0

    .line 104
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 105
    .local v1, ex:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;I)Lcom/googlecode/javacv/FrameGrabber;
    .locals 4
    .parameter "className"
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-static {p0}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameGrabber$Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, ex:Lcom/googlecode/javacv/FrameGrabber$Exception;
    invoke-static {p0}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;

    move-result-object v1

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/io/File;)Lcom/googlecode/javacv/FrameGrabber;
    .locals 2
    .parameter "className"
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/File;

    invoke-static {v0, v1, p1}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/googlecode/javacv/FrameGrabber;
    .locals 2
    .parameter "className"
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p0}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/FrameGrabber;
    .locals 4
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Lcom/googlecode/javacv/FrameGrabber;->getDefault()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;
    :try_end_0
    .catch Lcom/googlecode/javacv/FrameGrabber$Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_0
    return-object v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, ex:Lcom/googlecode/javacv/FrameGrabber$Exception;
    invoke-static {}, Lcom/googlecode/javacv/FrameGrabber;->getDefault()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;

    move-result-object v1

    goto :goto_0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/FrameGrabber;
    .locals 2
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lcom/googlecode/javacv/FrameGrabber;->getDefault()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/File;

    invoke-static {v0, v1, p0}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/FrameGrabber;
    .locals 2
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {}, Lcom/googlecode/javacv/FrameGrabber;->getDefault()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/googlecode/javacv/FrameGrabber;->create(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)Lcom/googlecode/javacv/FrameGrabber;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/googlecode/javacv/FrameGrabber;

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 81
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/googlecode/javacv/FrameGrabber;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 85
    :goto_0
    return-object v3

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, e:Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "FrameGrabber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, className2:Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/googlecode/javacv/FrameGrabber;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 86
    :catch_1
    move-exception v2

    .line 87
    .local v2, ex:Ljava/lang/ClassNotFoundException;
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not get FrameGrabber class for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getDefault()Ljava/lang/Class;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/googlecode/javacv/FrameGrabber;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 56
    sget-object v7, Lcom/googlecode/javacv/FrameGrabber;->list:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 58
    .local v4, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 59
    .local v1, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    const-string v7, "tryLoad"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, mayContainCameras:Z
    :try_start_1
    const-string v7, "getDeviceDescriptions"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    check-cast v0, [Ljava/lang/String;

    move-object v5, v0

    .line 63
    .local v5, s:[Ljava/lang/String;
    array-length v7, v5
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lez v7, :cond_1

    .line 64
    const/4 v3, 0x1

    .line 71
    .end local v5           #s:[Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v3, :cond_0

    .line 76
    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    .end local v3           #mayContainCameras:Z
    .end local v4           #name:Ljava/lang/String;
    :goto_2
    return-object v1

    .line 66
    .restart local v1       #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    .restart local v3       #mayContainCameras:Z
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 67
    .local v6, t:Ljava/lang/Throwable;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/UnsupportedOperationException;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v7, :cond_1

    .line 68
    const/4 v3, 0x1

    goto :goto_1

    .end local v1           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    .end local v3           #mayContainCameras:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v6           #t:Ljava/lang/Throwable;
    :cond_2
    move-object v1, v8

    .line 76
    goto :goto_2

    .line 74
    .restart local v4       #name:Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public static init()V
    .locals 6

    .prologue
    .line 47
    sget-object v3, Lcom/googlecode/javacv/FrameGrabber;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 49
    .local v2, name:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lcom/googlecode/javacv/FrameGrabber;->get(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    const-string v3, "tryLoad"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 51
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/googlecode/javacv/FrameGrabber;>;"
    :catch_0
    move-exception v3

    goto :goto_0

    .line 53
    .end local v2           #name:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public createArray([Lcom/googlecode/javacv/FrameGrabber;)Lcom/googlecode/javacv/FrameGrabber$Array;
    .locals 1
    .parameter "frameGrabbers"

    .prologue
    .line 515
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Array;

    invoke-direct {v0, p1}, Lcom/googlecode/javacv/FrameGrabber$Array;-><init>([Lcom/googlecode/javacv/FrameGrabber;)V

    return-object v0
.end method

.method public delayedGrab(J)V
    .locals 7
    .parameter "delayTime"

    .prologue
    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 348
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J

    .line 349
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v2, v0, v4

    .line 350
    .local v2, start:J
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v6, p0, Lcom/googlecode/javacv/FrameGrabber;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$1;

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/FrameGrabber$1;-><init>(Lcom/googlecode/javacv/FrameGrabber;JJ)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/googlecode/javacv/FrameGrabber;->numBuffers:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 338
    invoke-virtual {p0}, Lcom/googlecode/javacv/FrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 337
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method public getAudioChannels()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->audioChannels:I

    return v0
.end method

.method public getBitsPerPixel()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->bpp:I

    return v0
.end method

.method public getDelayedImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 370
    const/4 v0, 0x0

    .line 373
    :goto_0
    return-object v0

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedImage:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto :goto_0
.end method

.method public getDelayedTime()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 363
    const-wide/16 v0, 0x0

    .line 366
    :goto_0
    return-wide v0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 366
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->delayedTime:J

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getFrameNumber()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->frameNumber:I

    return v0
.end method

.method public getFrameRate()D
    .locals 2

    .prologue
    .line 235
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->frameRate:D

    return-wide v0
.end method

.method public getGamma()D
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->gamma:D

    return-wide v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->imageHeight:I

    return v0
.end method

.method public getImageMode()Lcom/googlecode/javacv/FrameGrabber$ImageMode;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/googlecode/javacv/FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->imageWidth:I

    return v0
.end method

.method public getLengthInFrames()I
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x0

    return v0
.end method

.method public getLengthInTime()J
    .locals 2

    .prologue
    .line 315
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNumBuffers()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->numBuffers:I

    return v0
.end method

.method public getPixelFormat()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->pixelFormat:I

    return v0
.end method

.method public getSampleFormat()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->sampleFormat:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->sampleRate:I

    return v0
.end method

.method public getSensorPattern()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->sensorPattern:J

    return-wide v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 270
    iget v0, p0, Lcom/googlecode/javacv/FrameGrabber;->timeout:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/googlecode/javacv/FrameGrabber;->timestamp:J

    return-wide v0
.end method

.method public abstract grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation
.end method

.method public grabFrame()Lcom/googlecode/javacv/Frame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 328
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This FrameGrabber does not support audio."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeinterlace()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/googlecode/javacv/FrameGrabber;->deinterlace:Z

    return v0
.end method

.method public isTriggerMode()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/googlecode/javacv/FrameGrabber;->triggerMode:Z

    return v0
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation
.end method

.method public restart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/googlecode/javacv/FrameGrabber;->stop()V

    .line 334
    invoke-virtual {p0}, Lcom/googlecode/javacv/FrameGrabber;->start()V

    .line 335
    return-void
.end method

.method public setAudioChannels(I)V
    .locals 0
    .parameter "audioChannels"

    .prologue
    .line 210
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->audioChannels:I

    .line 211
    return-void
.end method

.method public setBitsPerPixel(I)V
    .locals 0
    .parameter "bitsPerPixel"

    .prologue
    .line 266
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->bpp:I

    .line 267
    return-void
.end method

.method public setDeinterlace(Z)V
    .locals 0
    .parameter "deinterlace"

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/googlecode/javacv/FrameGrabber;->deinterlace:Z

    .line 295
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "format"

    .prologue
    .line 189
    iput-object p1, p0, Lcom/googlecode/javacv/FrameGrabber;->format:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setFrameNumber(I)V
    .locals 0
    .parameter "frameNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 301
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->frameNumber:I

    .line 302
    return-void
.end method

.method public setFrameRate(D)V
    .locals 0
    .parameter "frameRate"

    .prologue
    .line 238
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameGrabber;->frameRate:D

    .line 239
    return-void
.end method

.method public setGamma(D)V
    .locals 0
    .parameter "gamma"

    .prologue
    .line 287
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameGrabber;->gamma:D

    .line 288
    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .parameter "imageHeight"

    .prologue
    .line 203
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->imageHeight:I

    .line 204
    return-void
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 0
    .parameter "imageMode"

    .prologue
    .line 217
    iput-object p1, p0, Lcom/googlecode/javacv/FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    .line 218
    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .parameter "imageWidth"

    .prologue
    .line 196
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->imageWidth:I

    .line 197
    return-void
.end method

.method public setNumBuffers(I)V
    .locals 0
    .parameter "numBuffers"

    .prologue
    .line 280
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->numBuffers:I

    .line 281
    return-void
.end method

.method public setPixelFormat(I)V
    .locals 0
    .parameter "pixelFormat"

    .prologue
    .line 231
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->pixelFormat:I

    .line 232
    return-void
.end method

.method public setSampleFormat(I)V
    .locals 0
    .parameter "sampleFormat"

    .prologue
    .line 245
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->sampleFormat:I

    .line 246
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "sampleRate"

    .prologue
    .line 252
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->sampleRate:I

    .line 253
    return-void
.end method

.method public setSensorPattern(J)V
    .locals 0
    .parameter "sensorPattern"

    .prologue
    .line 224
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameGrabber;->sensorPattern:J

    .line 225
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 273
    iput p1, p0, Lcom/googlecode/javacv/FrameGrabber;->timeout:I

    .line 274
    return-void
.end method

.method public setTimestamp(J)V
    .locals 0
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 308
    iput-wide p1, p0, Lcom/googlecode/javacv/FrameGrabber;->timestamp:J

    .line 309
    return-void
.end method

.method public setTriggerMode(Z)V
    .locals 0
    .parameter "triggerMode"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/googlecode/javacv/FrameGrabber;->triggerMode:Z

    .line 260
    return-void
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation
.end method

.method public abstract trigger()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation
.end method
