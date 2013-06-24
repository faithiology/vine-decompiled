.class public Lcom/googlecode/javacv/DC1394FrameGrabber;
.super Lcom/googlecode/javacv/FrameGrabber;
.source "DC1394FrameGrabber.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final linux:Z

.field private static loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;


# instance fields
.field private camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

.field private conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

.field private d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

.field private enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

.field private fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

.field private frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

.field private final gammaOut:[F

.field private oneShotMode:Z

.field private final out:[I

.field private final outFloat:[F

.field private raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

.field private resetDone:Z

.field private return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

.field private temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/googlecode/javacv/DC1394FrameGrabber;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->$assertionsDisabled:Z

    .line 78
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    .line 128
    invoke-static {}, Lcom/googlecode/javacpp/Loader;->getPlatformName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->linux:Z

    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 9
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-direct {p0}, Lcom/googlecode/javacv/FrameGrabber;-><init>()V

    .line 129
    iput-object v6, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    .line 130
    iput-object v6, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    .line 131
    new-instance v4, Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    invoke-direct {v4}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;-><init>()V

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    .line 132
    iput-boolean v8, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->oneShotMode:Z

    .line 133
    iput-boolean v8, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->resetDone:Z

    .line 134
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    new-instance v5, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    invoke-direct {v5, v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    invoke-direct {v5, v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    aput-object v5, v4, v7

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 136
    new-instance v4, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    invoke-direct {v4}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;-><init>()V

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 137
    iput-object v6, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 138
    iput-object v6, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 139
    iput-object v6, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 140
    new-array v4, v7, [I

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    .line 141
    new-array v4, v7, [F

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->outFloat:[F

    .line 142
    new-array v4, v7, [F

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    .line 92
    invoke-static {}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_new()Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    .line 93
    new-instance v2, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;

    invoke-direct {v2, v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 94
    .local v2, list:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;
    iget-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    invoke-static {v4, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_enumerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;)I

    move-result v0

    .line 95
    .local v0, err:I
    if-eqz v0, :cond_0

    .line 96
    new-instance v4, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dc1394_camera_enumerate() Error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Failed to enumerate cameras."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 98
    :cond_0
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;->num()I

    move-result v3

    .line 99
    .local v3, num:I
    if-gt v3, p1, :cond_1

    .line 100
    new-instance v4, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DC1394Grabber() Error: Camera number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found. There are only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " devices."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 103
    :cond_1
    invoke-virtual {v2}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;->ids()Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;

    move-result-object v1

    .line 104
    .local v1, ids:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;
    iget-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->guid()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->unit()S

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_new_unit(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;JI)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    move-result-object v4

    iput-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    .line 105
    iget-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    if-nez v4, :cond_2

    .line 106
    new-instance v4, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dc1394_camera_new_unit() Error: Failed to initialize camera with GUID 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->guid()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->unit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 109
    :cond_2
    invoke-static {v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_free_list(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;)V

    .line 111
    return-void
.end method

.method public static createDefault(I)Lcom/googlecode/javacv/DC1394FrameGrabber;
    .locals 1
    .parameter "deviceNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 76
    new-instance v0, Lcom/googlecode/javacv/DC1394FrameGrabber;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;-><init>(I)V

    return-object v0
.end method

.method public static createDefault(Ljava/io/File;)Lcom/googlecode/javacv/DC1394FrameGrabber;
    .locals 1
    .parameter "deviceFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/String;)Lcom/googlecode/javacv/DC1394FrameGrabber;
    .locals 1
    .parameter "devicePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method private enqueue()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    invoke-direct {p0, v0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 388
    return-void
.end method

.method private enqueue(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)V
    .locals 4
    .parameter "image"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 390
    if-eqz p1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v1, p1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_capture_enqueue(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I

    move-result v0

    .line 392
    .local v0, err:I
    if-eqz v0, :cond_0

    .line 393
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_capture_enqueue() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not release a frame."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    .end local v0           #err:I
    :cond_0
    return-void
.end method

.method public static getDeviceDescriptions()[Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Lcom/googlecode/javacv/DC1394FrameGrabber;->tryLoad()V

    .line 42
    invoke-static {}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_new()Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    move-result-object v1

    .line 43
    .local v1, d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;
    if-nez v1, :cond_0

    .line 44
    new-instance v8, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v9, "dc1394_new() Error: Failed to initialize libdc1394."

    invoke-direct {v8, v9}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 46
    :cond_0
    new-instance v6, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;

    const/4 v8, 0x0

    invoke-direct {v6, v8}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    .line 47
    .local v6, list:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;
    invoke-static {v1, v6}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_enumerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;)I

    move-result v3

    .line 48
    .local v3, err:I
    if-eqz v3, :cond_1

    .line 49
    new-instance v8, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dc1394_camera_enumerate() Error "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": Failed to enumerate cameras."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 51
    :cond_1
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;->num()I

    move-result v7

    .line 52
    .local v7, num:I
    new-array v2, v7, [Ljava/lang/String;

    .line 54
    .local v2, descriptions:[Ljava/lang/String;
    if-lez v7, :cond_3

    .line 55
    invoke-virtual {v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;->ids()Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;

    move-result-object v5

    .line 56
    .local v5, ids:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 57
    invoke-virtual {v5, v4}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->position(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;

    .line 58
    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->guid()J

    move-result-wide v8

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->unit()S

    move-result v10

    invoke-static {v1, v8, v9, v10}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_new_unit(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;JI)Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    move-result-object v0

    .line 59
    .local v0, camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
    if-nez v0, :cond_2

    .line 60
    new-instance v8, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dc1394_camera_new_unit() Error: Failed to initialize camera with GUID 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;->guid()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " / "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->unit()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 63
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->vendor()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->model()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/googlecode/javacpp/BytePointer;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " 0x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->guid()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;->unit()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v4

    .line 65
    invoke-static {v0}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_free(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)V

    .line 56
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 69
    .end local v0           #camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;
    .end local v4           #i:I
    .end local v5           #ids:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_id_t;
    :cond_3
    invoke-static {v6}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_free_list(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_list_t;)V

    .line 70
    invoke-static {v1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_free(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;)V

    .line 71
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
    .line 80
    sget-object v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

    throw v1

    .line 84
    :cond_0
    :try_start_0
    const-class v1, Lcom/googlecode/javacv/cpp/dc1394;

    invoke-static {v1}, Lcom/googlecode/javacpp/Loader;->load(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lcom/googlecode/javacv/DC1394FrameGrabber;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->loadingException:Lcom/googlecode/javacv/FrameGrabber$Exception;

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
    .line 124
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 125
    invoke-virtual {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->release()V

    .line 126
    return-void
.end method

.method public getFrameRate()D
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    if-nez v0, :cond_0

    .line 158
    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getFrameRate()D

    move-result-wide v0

    .line 165
    :goto_0
    return-wide v0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v1, 0x1af

    iget-object v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->outFloat:[F

    invoke-static {v0, v1, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_feature_get_absolute_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[F)I

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_get_framerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I

    .line 163
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->outFloat:[F

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_framerate_as_float(I[F)I

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->outFloat:[F

    aget v0, v0, v3

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getGamma()D
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const-wide v0, 0x400199999999999aL

    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    aget v0, v0, v2

    float-to-double v0, v0

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v0

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/googlecode/javacv/FrameGrabber;->getImageWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    invoke-virtual {v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v0

    goto :goto_0
.end method

.method public grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue()V

    .line 423
    sget-boolean v30, Lcom/googlecode/javacv/DC1394FrameGrabber;->linux:Z

    if-eqz v30, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;->events(S)Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    move-object/from16 v30, v0

    const-wide/16 v31, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->timeout:I

    move/from16 v33, v0

    invoke-static/range {v30 .. v33}, Lcom/googlecode/javacv/cpp/dc1394;->poll(Lcom/googlecode/javacv/cpp/dc1394$pollfd;JI)I

    move-result v30

    if-nez v30, :cond_0

    .line 426
    new-instance v30, Lcom/googlecode/javacv/FrameGrabber$Exception;

    const-string v31, "poll() Error: Timeout occured. (Has start() been called?)"

    invoke-direct/range {v30 .. v31}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v30

    .line 429
    :cond_0
    const/4 v15, 0x0

    .line 430
    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    move-object/from16 v30, v0

    const/16 v31, 0x2a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v32, v0

    aget-object v32, v32, v15

    invoke-static/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_capture_dequeue(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;ILcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I

    move-result v12

    .line 431
    .local v12, err:I
    if-eqz v12, :cond_1

    .line 432
    new-instance v30, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dc1394_capture_dequeue(WAIT) Error "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": Could not capture a frame. (Has start() been called?)"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v30

    .line 435
    :cond_1
    const/16 v20, 0x0

    .line 436
    .local v20, numDequeued:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    aget-object v30, v30, v15

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->isNull()Z

    move-result v30

    if-nez v30, :cond_3

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue()V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    aget-object v30, v30, v15

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 439
    add-int/lit8 v30, v15, 0x1

    rem-int/lit8 v15, v30, 0x2

    .line 440
    add-int/lit8 v20, v20, 0x1

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    move-object/from16 v30, v0

    const/16 v31, 0x2a1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v32, v0

    aget-object v32, v32, v15

    invoke-static/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_capture_dequeue(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;ILcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I

    move-result v12

    .line 442
    if-eqz v12, :cond_2

    .line 443
    new-instance v30, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dc1394_capture_dequeue(POLL) Error "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": Could not capture a frame."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v30

    .line 446
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->raw_image:[Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    add-int/lit8 v31, v15, 0x1

    rem-int/lit8 v31, v31, 0x2

    aget-object v30, v30, v31

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->size(I)I

    move-result v29

    .line 448
    .local v29, w:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->size(I)I

    move-result v14

    .line 449
    .local v14, h:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->data_depth()I

    move-result v11

    .line 450
    .local v11, depth:I
    const/16 v18, 0x0

    .line 451
    .local v18, iplDepth:I
    sparse-switch v11, :sswitch_data_0

    .line 454
    sget-boolean v30, Lcom/googlecode/javacv/DC1394FrameGrabber;->$assertionsDisabled:Z

    if-nez v30, :cond_4

    new-instance v30, Ljava/lang/AssertionError;

    invoke-direct/range {v30 .. v30}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 452
    :sswitch_0
    const/16 v18, 0x8

    .line 456
    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->stride()I

    move-result v27

    .line 457
    .local v27, stride:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->image_bytes()I

    move-result v26

    .line 458
    .local v26, size:I
    div-int v30, v27, v29

    mul-int/lit8 v30, v30, 0x8

    div-int v19, v30, v11

    .line 459
    .local v19, numChannels:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->little_endian()I

    move-result v30

    if-eqz v30, :cond_d

    sget-object v13, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 461
    .local v13, frameEndian:Ljava/nio/ByteOrder;
    :goto_1
    const/4 v4, 0x0

    .line 462
    .local v4, alreadySwapped:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_coding()I

    move-result v7

    .line 463
    .local v7, color_coding:I
    const/16 v30, 0x169

    move/from16 v0, v30

    if-eq v7, v0, :cond_5

    const/16 v30, 0x16a

    move/from16 v0, v30

    if-ne v7, v0, :cond_e

    :cond_5
    const/4 v8, 0x1

    .line 465
    .local v8, colorbayer:Z
    :goto_2
    const/16 v30, 0x164

    move/from16 v0, v30

    if-eq v7, v0, :cond_6

    const/16 v30, 0x166

    move/from16 v0, v30

    if-ne v7, v0, :cond_f

    :cond_6
    const/4 v9, 0x1

    .line 467
    .local v9, colorrgb:Z
    :goto_3
    const/16 v30, 0x161

    move/from16 v0, v30

    if-eq v7, v0, :cond_7

    const/16 v30, 0x162

    move/from16 v0, v30

    if-eq v7, v0, :cond_7

    const/16 v30, 0x163

    move/from16 v0, v30

    if-ne v7, v0, :cond_10

    :cond_7
    const/4 v10, 0x1

    .line 470
    .local v10, coloryuv:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->image()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v16

    .line 472
    .local v16, imageData:Lcom/googlecode/javacpp/BytePointer;
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v11, v0, :cond_8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_11

    :cond_8
    if-nez v10, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_9

    const/16 v30, 0x3

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_11

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    if-nez v8, :cond_11

    .line 475
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    if-nez v30, :cond_b

    .line 476
    move/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v14, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 478
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 589
    :cond_c
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter()I

    move-result v30

    packed-switch v30, :pswitch_data_0

    .line 594
    const-wide/16 v30, -0x1

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/DC1394FrameGrabber;->sensorPattern:J

    .line 597
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->timestamp()J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/DC1394FrameGrabber;->timestamp:J

    .line 599
    move-object/from16 v0, p0

    iget v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameNumber:I

    move/from16 v30, v0

    add-int v30, v30, v20

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameNumber:I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    return-object v30

    .line 453
    .end local v4           #alreadySwapped:Z
    .end local v7           #color_coding:I
    .end local v8           #colorbayer:Z
    .end local v9           #colorrgb:Z
    .end local v10           #coloryuv:Z
    .end local v13           #frameEndian:Ljava/nio/ByteOrder;
    .end local v16           #imageData:Lcom/googlecode/javacpp/BytePointer;
    .end local v19           #numChannels:I
    .end local v26           #size:I
    .end local v27           #stride:I
    :sswitch_1
    const/16 v18, 0x10

    goto/16 :goto_0

    .line 459
    .restart local v19       #numChannels:I
    .restart local v26       #size:I
    .restart local v27       #stride:I
    :cond_d
    sget-object v13, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto/16 :goto_1

    .line 463
    .restart local v4       #alreadySwapped:Z
    .restart local v7       #color_coding:I
    .restart local v13       #frameEndian:Ljava/nio/ByteOrder;
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 465
    .restart local v8       #colorbayer:Z
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 467
    .restart local v9       #colorrgb:Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 484
    .restart local v10       #coloryuv:Z
    .restart local v16       #imageData:Lcom/googlecode/javacpp/BytePointer;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->padding_bytes()I

    move-result v25

    .line 485
    .local v25, padding_bytes:I
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-int v32, v29, v11

    div-int/lit8 v32, v32, 0x8

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v23, v0

    .line 486
    .local v23, padding1:I
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-int/lit8 v32, v29, 0x3

    mul-int v32, v32, v11

    div-int/lit8 v32, v32, 0x8

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v24, v0

    .line 487
    .local v24, padding3:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    if-nez v30, :cond_12

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_16

    const/4 v6, 0x3

    .line 489
    .local v6, c:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_17

    move/from16 v22, v24

    .line 490
    .local v22, padding:I
    :goto_8
    add-int v30, v14, v22

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v6}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v31

    sub-int v31, v31, v22

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 493
    .end local v6           #c:I
    .end local v22           #padding:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    if-nez v30, :cond_14

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_18

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-gt v0, v1, :cond_13

    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v11, v0, :cond_18

    :cond_13
    if-nez v10, :cond_18

    if-nez v8, :cond_18

    .line 496
    add-int v30, v14, v23

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v31

    sub-int v31, v31, v23

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 510
    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->size(II)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v32

    invoke-virtual/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->size(II)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 512
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v11, v0, :cond_1f

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v32, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_1d

    const/16 v30, 0x16a

    :goto_a
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_coding(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x10

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->data_depth(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 523
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->stride(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize()I

    move-result v28

    .line 525
    .local v28, temp_size:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->allocated_image_bytes(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-result-object v30

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v31, v0

    invoke-virtual/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->total_bytes(J)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->image_bytes(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData()Lcom/googlecode/javacpp/BytePointer;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->image(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 529
    if-eqz v8, :cond_26

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter()I

    move-result v6

    .line 533
    .restart local v6       #c:I
    const/16 v30, 0x200

    move/from16 v0, v30

    if-ne v6, v0, :cond_22

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x203

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 545
    :cond_15
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_debayer_frames(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;I)I

    move-result v12

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 547
    if-eqz v12, :cond_27

    .line 548
    new-instance v30, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dc1394_debayer_frames() Error "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": Could not debayer frame."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v30

    .line 488
    .end local v6           #c:I
    .end local v28           #temp_size:I
    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_7

    .restart local v6       #c:I
    :cond_17
    move/from16 v22, v23

    .line 489
    goto/16 :goto_8

    .line 498
    .end local v6           #c:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1a

    if-nez v10, :cond_19

    if-nez v8, :cond_19

    if-eqz v9, :cond_1a

    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v11, v0, :cond_1a

    .line 500
    :cond_19
    add-int v30, v14, v24

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v18

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v31

    sub-int v31, v31, v24

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_9

    .line 502
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1b

    if-eqz v9, :cond_1b

    .line 503
    const/16 v30, 0x3

    move/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v30

    invoke-static {v0, v14, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_9

    .line 504
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_1c

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_1c

    if-nez v10, :cond_1c

    if-nez v8, :cond_1c

    .line 505
    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v30

    invoke-static {v0, v14, v1, v2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->createHeader(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_9

    .line 507
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_9

    .line 513
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_1e

    const/16 v30, 0x165

    goto/16 :goto_a

    :cond_1e
    const/16 v30, 0x166

    goto/16 :goto_a

    .line 518
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v32, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_20

    const/16 v30, 0x169

    :goto_d
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_coding(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->data_depth(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    goto/16 :goto_b

    .line 518
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v30

    const/16 v32, 0x1

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_21

    const/16 v30, 0x160

    goto :goto_d

    :cond_21
    const/16 v30, 0x164

    goto :goto_d

    .line 535
    .restart local v6       #c:I
    .restart local v28       #temp_size:I
    :cond_22
    const/16 v30, 0x201

    move/from16 v0, v30

    if-ne v6, v0, :cond_23

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x202

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    goto/16 :goto_c

    .line 537
    :cond_23
    const/16 v30, 0x202

    move/from16 v0, v30

    if-ne v6, v0, :cond_24

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x201

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    goto/16 :goto_c

    .line 539
    :cond_24
    const/16 v30, 0x203

    move/from16 v0, v30

    if-ne v6, v0, :cond_25

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    const/16 v31, 0x200

    invoke-virtual/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_filter(I)Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    goto/16 :goto_c

    .line 542
    :cond_25
    sget-boolean v30, Lcom/googlecode/javacv/DC1394FrameGrabber;->$assertionsDisabled:Z

    if-nez v30, :cond_15

    new-instance v30, Ljava/lang/AssertionError;

    invoke-direct/range {v30 .. v30}, Ljava/lang/AssertionError;-><init>()V

    throw v30

    .line 550
    .end local v6           #c:I
    :cond_26
    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v11, v0, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->data_depth()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->data_depth()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_coding()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->color_coding()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->stride()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->stride()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_29

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v17

    .line 556
    .local v17, in:Ljava/nio/ShortBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v21

    .line 557
    .local v21, out:Ljava/nio/ShortBuffer;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 558
    const/4 v4, 0x1

    .line 572
    .end local v17           #in:Ljava/nio/ShortBuffer;
    .end local v21           #out:Ljava/nio/ShortBuffer;
    :cond_27
    :goto_e
    if-nez v4, :cond_28

    const/16 v30, 0x8

    move/from16 v0, v30

    if-le v11, v0, :cond_28

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_28

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 576
    .local v5, bb:Ljava/nio/ByteBuffer;
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v17

    .line 577
    .restart local v17       #in:Ljava/nio/ShortBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v21

    .line 578
    .restart local v21       #out:Ljava/nio/ShortBuffer;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    .line 582
    .end local v5           #bb:Ljava/nio/ByteBuffer;
    .end local v17           #in:Ljava/nio/ShortBuffer;
    .end local v21           #out:Ljava/nio/ShortBuffer;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2e

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    if-nez v10, :cond_2e

    if-nez v8, :cond_2e

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    const/16 v32, 0x8

    invoke-static/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto/16 :goto_5

    .line 559
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2a

    if-nez v9, :cond_2b

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2c

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-ne v0, v1, :cond_2c

    if-nez v10, :cond_2c

    if-nez v8, :cond_2c

    .line 561
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->widthStep(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageSize(I)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->imageData(Lcom/googlecode/javacpp/BytePointer;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    goto/16 :goto_e

    .line 564
    :cond_2c
    if-nez v9, :cond_27

    if-nez v8, :cond_2d

    if-nez v10, :cond_2d

    const/16 v30, 0x1

    move/from16 v0, v19

    move/from16 v1, v30

    if-le v0, v1, :cond_27

    .line 566
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frame:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->conv_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    move-object/from16 v31, v0

    invoke-static/range {v30 .. v31}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_convert_frames(Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;)I

    move-result v12

    .line 567
    if-eqz v12, :cond_27

    .line 568
    new-instance v30, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "dc1394_convert_frames() Error "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ": Could not convert frame."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v30

    .line 584
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v30, v0

    sget-object v31, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_c

    if-nez v8, :cond_2f

    if-nez v9, :cond_2f

    if-eqz v10, :cond_c

    .line 585
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-object/from16 v31, v0

    const/16 v32, 0x6

    invoke-static/range {v30 .. v32}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->cvCvtColor(Lcom/googlecode/javacv/cpp/opencv_core$CvArr;Lcom/googlecode/javacv/cpp/opencv_core$CvArr;I)V

    goto/16 :goto_5

    .line 590
    .end local v23           #padding1:I
    .end local v24           #padding3:I
    .end local v25           #padding_bytes:I
    .end local v28           #temp_size:I
    :pswitch_0
    const-wide/16 v30, 0x0

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/DC1394FrameGrabber;->sensorPattern:J

    goto/16 :goto_6

    .line 591
    :pswitch_1
    const-wide v30, 0x100000000L

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/DC1394FrameGrabber;->sensorPattern:J

    goto/16 :goto_6

    .line 592
    :pswitch_2
    const-wide/16 v30, 0x1

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/DC1394FrameGrabber;->sensorPattern:J

    goto/16 :goto_6

    .line 593
    :pswitch_3
    const-wide v30, 0x100000001L

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/googlecode/javacv/DC1394FrameGrabber;->sensorPattern:J

    goto/16 :goto_6

    .line 451
    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
    .end sparse-switch

    .line 589
    :pswitch_data_0
    .packed-switch 0x200
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 113
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->stop()V

    .line 115
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_camera_free(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)V

    .line 116
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_free(Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;)V

    .line 120
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->d:Lcom/googlecode/javacv/cpp/dc1394$dc1394_t;

    .line 122
    :cond_1
    return-void
.end method

.method public setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V
    .locals 2
    .parameter "imageMode"

    .prologue
    const/4 v1, 0x0

    .line 170
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq p1, v0, :cond_0

    .line 171
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 172
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/googlecode/javacv/FrameGrabber;->setImageMode(Lcom/googlecode/javacv/FrameGrabber$ImageMode;)V

    .line 175
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
    const/4 v0, 0x1

    .line 178
    invoke-virtual {p0, v0, v0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->start(ZZ)V

    .line 179
    return-void
.end method

.method public start(ZZ)V
    .locals 13
    .parameter "tryReset"
    .parameter "try1394b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x8

    const/4 v12, 0x1

    const/4 v6, -0x1

    const/4 v11, 0x0

    .line 181
    const/4 v1, -0x1

    .line 182
    .local v1, c:I
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->COLOR:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->RAW:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v0, v2, :cond_10

    .line 183
    :cond_0
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    if-gtz v0, :cond_b

    .line 184
    :cond_1
    const/4 v1, -0x1

    .line 212
    :cond_2
    :goto_0
    if-ne v1, v6, :cond_3

    .line 214
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    iget-object v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_get_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I

    .line 215
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    aget v1, v0, v11

    .line 218
    :cond_3
    const/4 v10, -0x1

    .line 219
    .local v10, f:I
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1c

    .line 220
    const/4 v10, -0x1

    .line 239
    :cond_4
    :goto_1
    if-ne v10, v6, :cond_5

    .line 241
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    iget-object v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_get_framerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I

    .line 242
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    aget v10, v0, v11

    .line 246
    :cond_5
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->oneShotMode:Z

    .line 247
    iget-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->triggerMode:Z

    if-eqz v0, :cond_6

    .line 248
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 249
    .local v9, err:I
    if-eqz v9, :cond_24

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->oneShotMode:Z

    .line 267
    .end local v9           #err:I
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x1e0

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_operation_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 268
    .restart local v9       #err:I
    if-eqz p2, :cond_7

    .line 269
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x1e1

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_operation_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 270
    if-nez v9, :cond_7

    .line 271
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_iso_speed(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 274
    :cond_7
    if-nez v9, :cond_8

    if-nez p2, :cond_26

    .line 275
    :cond_8
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_iso_speed(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 276
    if-eqz v9, :cond_26

    .line 277
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_video_set_iso_speed() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not set maximum iso speed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/googlecode/javacv/FrameGrabber$Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v9           #err:I
    :catch_0
    move-exception v8

    .line 330
    .local v8, e:Lcom/googlecode/javacv/FrameGrabber$Exception;
    if-eqz p1, :cond_2f

    :try_start_1
    iget-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->resetDone:Z

    if-nez v0, :cond_2f

    .line 331
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v0}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_reset_bus(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    const-wide/16 v2, 0x64

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    :goto_3
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->resetDone:Z

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/googlecode/javacv/DC1394FrameGrabber;->start(ZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    iput-boolean v11, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->resetDone:Z

    .line 344
    .end local v8           #e:Lcom/googlecode/javacv/FrameGrabber$Exception;
    :goto_4
    sget-boolean v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->linux:Z

    if-eqz v0, :cond_a

    if-eqz p2, :cond_a

    .line 345
    iget-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->triggerMode:Z

    if-eqz v0, :cond_9

    .line 346
    invoke-virtual {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->trigger()V

    .line 348
    :cond_9
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    invoke-virtual {v0, v12}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;->events(S)Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    .line 349
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    const-wide/16 v2, 0x1

    iget v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->timeout:I

    invoke-static {v0, v2, v3, v4}, Lcom/googlecode/javacv/cpp/dc1394;->poll(Lcom/googlecode/javacv/cpp/dc1394$pollfd;JI)I

    move-result v0

    if-nez v0, :cond_30

    .line 352
    invoke-virtual {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->stop()V

    .line 353
    invoke-virtual {p0, p1, v11}, Lcom/googlecode/javacv/DC1394FrameGrabber;->start(ZZ)V

    .line 359
    :cond_a
    :goto_5
    return-void

    .line 185
    .end local v10           #f:I
    :cond_b
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x280

    if-gt v0, v2, :cond_c

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    if-gt v0, v4, :cond_c

    .line 186
    const/16 v1, 0x44

    goto/16 :goto_0

    .line 187
    :cond_c
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x320

    if-gt v0, v2, :cond_d

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x258

    if-gt v0, v2, :cond_d

    .line 188
    const/16 v1, 0x48

    goto/16 :goto_0

    .line 189
    :cond_d
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x400

    if-gt v0, v2, :cond_e

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x300

    if-gt v0, v2, :cond_e

    .line 190
    const/16 v1, 0x4b

    goto/16 :goto_0

    .line 191
    :cond_e
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x500

    if-gt v0, v2, :cond_f

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x3c0

    if-gt v0, v2, :cond_f

    .line 192
    const/16 v1, 0x50

    goto/16 :goto_0

    .line 193
    :cond_f
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x640

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x4b0

    if-gt v0, v2, :cond_2

    .line 194
    const/16 v1, 0x53

    goto/16 :goto_0

    .line 196
    :cond_10
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageMode:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    sget-object v2, Lcom/googlecode/javacv/FrameGrabber$ImageMode;->GRAY:Lcom/googlecode/javacv/FrameGrabber$ImageMode;

    if-ne v0, v2, :cond_2

    .line 197
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    if-lez v0, :cond_11

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    if-gtz v0, :cond_12

    .line 198
    :cond_11
    const/4 v1, -0x1

    goto/16 :goto_0

    .line 199
    :cond_12
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x280

    if-gt v0, v2, :cond_14

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    if-gt v0, v4, :cond_14

    .line 200
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->bpp:I

    if-le v0, v3, :cond_13

    const/16 v1, 0x46

    :goto_6
    goto/16 :goto_0

    :cond_13
    const/16 v1, 0x45

    goto :goto_6

    .line 201
    :cond_14
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x320

    if-gt v0, v2, :cond_16

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x258

    if-gt v0, v2, :cond_16

    .line 202
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->bpp:I

    if-le v0, v3, :cond_15

    const/16 v1, 0x4d

    :goto_7
    goto/16 :goto_0

    :cond_15
    const/16 v1, 0x49

    goto :goto_7

    .line 203
    :cond_16
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x400

    if-gt v0, v2, :cond_18

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x300

    if-gt v0, v2, :cond_18

    .line 204
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->bpp:I

    if-le v0, v3, :cond_17

    const/16 v1, 0x4e

    :goto_8
    goto/16 :goto_0

    :cond_17
    const/16 v1, 0x4c

    goto :goto_8

    .line 205
    :cond_18
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x500

    if-gt v0, v2, :cond_1a

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x3c0

    if-gt v0, v2, :cond_1a

    .line 206
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->bpp:I

    if-le v0, v3, :cond_19

    const/16 v1, 0x55

    :goto_9
    goto/16 :goto_0

    :cond_19
    const/16 v1, 0x51

    goto :goto_9

    .line 207
    :cond_1a
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageWidth:I

    const/16 v2, 0x640

    if-gt v0, v2, :cond_2

    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->imageHeight:I

    const/16 v2, 0x4b0

    if-gt v0, v2, :cond_2

    .line 208
    iget v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->bpp:I

    if-le v0, v3, :cond_1b

    const/16 v1, 0x56

    :goto_a
    goto/16 :goto_0

    :cond_1b
    const/16 v1, 0x54

    goto :goto_a

    .line 221
    .restart local v10       #f:I
    :cond_1c
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x3ffe04189374bc6aL

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1d

    .line 222
    const/16 v10, 0x20

    goto/16 :goto_1

    .line 223
    :cond_1d
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x400e147ae147ae14L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1e

    .line 224
    const/16 v10, 0x21

    goto/16 :goto_1

    .line 225
    :cond_1e
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x401e0a3d70a3d70aL

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_1f

    .line 226
    const/16 v10, 0x22

    goto/16 :goto_1

    .line 227
    :cond_1f
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x402e051eb851eb85L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_20

    .line 228
    const/16 v10, 0x23

    goto/16 :goto_1

    .line 229
    :cond_20
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x403e028f5c28f5c3L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_21

    .line 230
    const/16 v10, 0x24

    goto/16 :goto_1

    .line 231
    :cond_21
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x404e0147ae147ae1L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_22

    .line 232
    const/16 v10, 0x25

    goto/16 :goto_1

    .line 233
    :cond_22
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x405e00a3d70a3d71L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_23

    .line 234
    const/16 v10, 0x26

    goto/16 :goto_1

    .line 235
    :cond_23
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameRate:D

    const-wide v4, 0x406e0051eb851eb8L

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_4

    .line 236
    const/16 v10, 0x27

    goto/16 :goto_1

    .line 253
    .restart local v9       #err:I
    :cond_24
    :try_start_4
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x186

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_set_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 254
    if-eqz v9, :cond_25

    .line 256
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x180

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_set_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 258
    :cond_25
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x244

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_set_source(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 259
    if-eqz v9, :cond_6

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->oneShotMode:Z

    .line 262
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/googlecode/javacv/FrameGrabber$Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 341
    .end local v9           #err:I
    :catchall_0
    move-exception v0

    iput-boolean v11, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->resetDone:Z

    throw v0

    .line 281
    .restart local v9       #err:I
    :cond_26
    :try_start_5
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v0, v1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 282
    if-eqz v9, :cond_27

    .line 283
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_video_set_mode() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not set video mode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_27
    invoke-static {v1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_is_video_mode_scalable(I)I

    move-result v0

    if-ne v0, v12, :cond_28

    .line 287
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static/range {v0 .. v7}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_format7_set_roi(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IIIIIII)I

    move-result v9

    .line 291
    if-eqz v9, :cond_29

    .line 292
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_format7_set_roi() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not set format7 mode."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_28
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v0, v10}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_framerate(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 296
    if-eqz v9, :cond_29

    .line 297
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_video_set_framerate() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not set framerate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_29
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    iget v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->numBuffers:I

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_capture_setup(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;II)I

    move-result v9

    .line 302
    if-eqz v9, :cond_2a

    .line 303
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_capture_setup() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not setup camera-\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "make sure that the video mode and framerate are\nsupported by your camera."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 307
    :cond_2a
    iget-wide v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gamma:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2b

    .line 308
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x1a6

    iget-wide v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gamma:D

    double-to-float v3, v3

    invoke-static {v0, v2, v3}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_feature_set_absolute_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;IF)I

    move-result v9

    .line 309
    if-eqz v9, :cond_2b

    .line 310
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_feature_set_absolute_value() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not set gamma."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_2b
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/16 v2, 0x1a6

    iget-object v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    invoke-static {v0, v2, v3}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_feature_get_absolute_value(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I[F)I

    move-result v9

    .line 314
    if-eqz v9, :cond_2c

    .line 315
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->gammaOut:[F

    const/4 v2, 0x0

    const v3, 0x400ccccd

    aput v3, v0, v2

    .line 318
    :cond_2c
    sget-boolean v0, Lcom/googlecode/javacv/DC1394FrameGrabber;->linux:Z

    if-eqz v0, :cond_2d

    .line 319
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->fds:Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    iget-object v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_capture_get_fileno(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394$pollfd;->fd(I)Lcom/googlecode/javacv/cpp/dc1394$pollfd;

    .line 322
    :cond_2d
    iget-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->oneShotMode:Z

    if-nez v0, :cond_2e

    .line 323
    iget-object v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_transmission(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v9

    .line 324
    if-eqz v9, :cond_2e

    .line 325
    new-instance v0, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_video_set_transmission() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not start camera iso transmission."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/googlecode/javacv/FrameGrabber$Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 341
    :cond_2e
    iput-boolean v11, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->resetDone:Z

    goto/16 :goto_4

    .line 338
    .end local v9           #err:I
    .restart local v8       #e:Lcom/googlecode/javacv/FrameGrabber$Exception;
    :cond_2f
    :try_start_6
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 354
    .end local v8           #e:Lcom/googlecode/javacv/FrameGrabber$Exception;
    :cond_30
    iget-boolean v0, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->triggerMode:Z

    if-eqz v0, :cond_a

    .line 355
    invoke-virtual {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 356
    invoke-direct {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue()V

    goto/16 :goto_5

    .line 334
    .restart local v8       #e:Lcom/googlecode/javacv/FrameGrabber$Exception;
    :catch_1
    move-exception v0

    goto/16 :goto_3
.end method

.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/FrameGrabber$Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 362
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue_image:Lcom/googlecode/javacv/cpp/dc1394$dc1394video_frame_t;

    .line 363
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->temp_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 364
    iput-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->return_image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    .line 365
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->timestamp:J

    .line 366
    iput v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->frameNumber:I

    .line 368
    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v1, v3}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_transmission(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v0

    .line 369
    .local v0, err:I
    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_video_set_transmission() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not stop the camera?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_0
    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v1}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_capture_stop(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;)I

    move-result v0

    .line 373
    if-eqz v0, :cond_1

    const/16 v1, -0xa

    if-eq v0, v1, :cond_1

    .line 374
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_capture_stop() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not stop the camera?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_1
    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    iget-object v2, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    invoke-static {v1, v2}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_get_mode(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I

    move-result v0

    .line 377
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    aget v1, v1, v3

    const/16 v2, 0x180

    if-lt v1, v2, :cond_2

    .line 378
    iget-object v1, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v1, v3}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_external_trigger_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v0

    .line 379
    if-eqz v0, :cond_2

    .line 380
    new-instance v1, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dc1394_external_trigger_set_power() Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Could not switch off external trigger."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 383
    :cond_2
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
    const/4 v7, 0x1

    .line 399
    invoke-direct {p0}, Lcom/googlecode/javacv/DC1394FrameGrabber;->enqueue()V

    .line 400
    iget-boolean v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->oneShotMode:Z

    if-eqz v3, :cond_0

    .line 401
    iget-object v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v3, v7}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_video_set_one_shot(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v0

    .line 402
    .local v0, err:I
    if-eqz v0, :cond_3

    .line 403
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dc1394_video_set_one_shot() Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Could not set camera into one-shot mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 406
    .end local v0           #err:I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 408
    .local v1, time:J
    :cond_1
    iget-object v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    iget-object v4, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    invoke-static {v3, v4}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_software_trigger_get_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;[I)I

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget v5, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->timeout:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 414
    :goto_0
    iget-object v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->camera:Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;

    invoke-static {v3, v7}, Lcom/googlecode/javacv/cpp/dc1394;->dc1394_software_trigger_set_power(Lcom/googlecode/javacv/cpp/dc1394$dc1394camera_t;I)I

    move-result v0

    .line 415
    .restart local v0       #err:I
    if-eqz v0, :cond_3

    .line 416
    new-instance v3, Lcom/googlecode/javacv/FrameGrabber$Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dc1394_software_trigger_set_power() Error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": Could not trigger camera."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/googlecode/javacv/FrameGrabber$Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    .end local v0           #err:I
    :cond_2
    iget-object v3, p0, Lcom/googlecode/javacv/DC1394FrameGrabber;->out:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-eq v3, v7, :cond_1

    goto :goto_0

    .line 419
    .end local v1           #time:J
    .restart local v0       #err:I
    :cond_3
    return-void
.end method
