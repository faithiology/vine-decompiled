.class public Lcom/googlecode/javacv/CanvasFrame;
.super Ljavax/swing/JFrame;
.source "CanvasFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/javacv/CanvasFrame$Exception;
    }
.end annotation


# static fields
.field public static final DEFAULT_LATENCY:J = 0xc8L

.field public static global:Lcom/googlecode/javacv/CanvasFrame;


# instance fields
.field private buffer:Ljava/awt/image/BufferedImage;

.field protected canvas:Ljava/awt/Canvas;

.field private color:Ljava/awt/Color;

.field private image:Ljava/awt/Image;

.field protected initialScale:D

.field protected inverseGamma:D

.field private keyEvent:Ljava/awt/event/KeyEvent;

.field private keyEventDispatch:Ljava/awt/KeyEventDispatcher;

.field private latency:J

.field protected needInitialResize:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    const/4 v0, 0x0

    sput-object v0, Lcom/googlecode/javacv/CanvasFrame;->global:Lcom/googlecode/javacv/CanvasFrame;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;D)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 6
    .parameter "title"
    .parameter "gamma"

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v3, 0x3ff0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 240
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/googlecode/javacv/CanvasFrame;->latency:J

    .line 242
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;

    .line 243
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$3;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/CanvasFrame$3;-><init>(Lcom/googlecode/javacv/CanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEventDispatch:Ljava/awt/KeyEventDispatcher;

    .line 255
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    .line 256
    iput-boolean v5, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    .line 257
    iput-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    .line 258
    iput-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame;->inverseGamma:D

    .line 259
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;

    .line 260
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;

    .line 261
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    .line 125
    invoke-direct {p0, v5, v2, p2, p3}, Lcom/googlecode/javacv/CanvasFrame;->init(ZLjava/awt/DisplayMode;D)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/awt/DisplayMode;)V
    .locals 6
    .parameter "title"
    .parameter "screenNumber"
    .parameter "displayMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/CanvasFrame$Exception;
        }
    .end annotation

    .prologue
    .line 137
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;ILjava/awt/DisplayMode;D)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/awt/DisplayMode;D)V
    .locals 5
    .parameter "title"
    .parameter "screenNumber"
    .parameter "displayMode"
    .parameter "gamma"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/CanvasFrame$Exception;
        }
    .end annotation

    .prologue
    const-wide/high16 v3, 0x3ff0

    const/4 v2, 0x0

    .line 140
    invoke-static {p2}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevice(I)Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;)V

    .line 240
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/googlecode/javacv/CanvasFrame;->latency:J

    .line 242
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;

    .line 243
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$3;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/CanvasFrame$3;-><init>(Lcom/googlecode/javacv/CanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEventDispatch:Ljava/awt/KeyEventDispatcher;

    .line 255
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    .line 257
    iput-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    .line 258
    iput-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame;->inverseGamma:D

    .line 259
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;

    .line 260
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;

    .line 261
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/googlecode/javacv/CanvasFrame;->init(ZLjava/awt/DisplayMode;D)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;)V
    .locals 2
    .parameter "title"
    .parameter "gc"

    .prologue
    .line 129
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;D)V

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;D)V
    .locals 6
    .parameter "title"
    .parameter "gc"
    .parameter "gamma"

    .prologue
    const/4 v5, 0x0

    const-wide/high16 v3, 0x3ff0

    const/4 v2, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;)V

    .line 240
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/googlecode/javacv/CanvasFrame;->latency:J

    .line 242
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;

    .line 243
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$3;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/CanvasFrame$3;-><init>(Lcom/googlecode/javacv/CanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEventDispatch:Ljava/awt/KeyEventDispatcher;

    .line 255
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    .line 256
    iput-boolean v5, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    .line 257
    iput-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    .line 258
    iput-wide v3, p0, Lcom/googlecode/javacv/CanvasFrame;->inverseGamma:D

    .line 259
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;

    .line 260
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;

    .line 261
    iput-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    .line 133
    invoke-direct {p0, v5, v2, p3, p4}, Lcom/googlecode/javacv/CanvasFrame;->init(ZLjava/awt/DisplayMode;D)V

    .line 134
    return-void
.end method

.method static synthetic access$000(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/KeyEventDispatcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEventDispatch:Ljava/awt/KeyEventDispatcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/Color;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;

    return-object v0
.end method

.method static synthetic access$200(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/Image;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;

    return-object v0
.end method

.method static synthetic access$300(Lcom/googlecode/javacv/CanvasFrame;)Ljava/awt/image/BufferedImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    return-object v0
.end method

.method static synthetic access$402(Lcom/googlecode/javacv/CanvasFrame;Ljava/awt/event/KeyEvent;)Ljava/awt/event/KeyEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;

    return-object p1
.end method

.method public static getDefaultGamma()D
    .locals 2

    .prologue
    .line 91
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/googlecode/javacv/CanvasFrame;->getGamma(Ljava/awt/GraphicsDevice;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getDefaultScreenDevice()Ljava/awt/GraphicsDevice;
    .locals 1

    .prologue
    .line 117
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getDefaultScreenDevice()Ljava/awt/GraphicsDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMode(I)Ljava/awt/DisplayMode;
    .locals 2
    .parameter "screenNumber"

    .prologue
    .line 75
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    .line 76
    .local v0, screens:[Ljava/awt/GraphicsDevice;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 77
    aget-object v1, v0, p0

    invoke-virtual {v1}, Ljava/awt/GraphicsDevice;->getDisplayMode()Ljava/awt/DisplayMode;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getGamma(I)D
    .locals 3
    .parameter "screenNumber"

    .prologue
    .line 83
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    .line 84
    .local v0, screens:[Ljava/awt/GraphicsDevice;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 85
    aget-object v1, v0, p0

    invoke-static {v1}, Lcom/googlecode/javacv/CanvasFrame;->getGamma(Ljava/awt/GraphicsDevice;)D

    move-result-wide v1

    .line 87
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getGamma(Ljava/awt/GraphicsDevice;)D
    .locals 3
    .parameter "screen"

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/awt/GraphicsDevice;->getDefaultConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/GraphicsConfiguration;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    .line 96
    .local v0, cs:Ljava/awt/color/ColorSpace;
    invoke-virtual {v0}, Ljava/awt/color/ColorSpace;->isCS_sRGB()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-wide v1, 0x400199999999999aL

    .line 103
    .end local v0           #cs:Ljava/awt/color/ColorSpace;
    :goto_0
    return-wide v1

    .line 100
    .restart local v0       #cs:Ljava/awt/color/ColorSpace;
    :cond_0
    :try_start_0
    check-cast v0, Ljava/awt/color/ICC_ColorSpace;

    .end local v0           #cs:Ljava/awt/color/ColorSpace;
    invoke-virtual {v0}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v1

    check-cast v1, Ljava/awt/color/ICC_ProfileRGB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/awt/color/ICC_ProfileRGB;->getGamma(I)F
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    float-to-double v1, v1

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 103
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getScreenDescriptions()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v2

    .line 68
    .local v2, screens:[Ljava/awt/GraphicsDevice;
    array-length v3, v2

    new-array v0, v3, [Ljava/lang/String;

    .line 69
    .local v0, descriptions:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 70
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/awt/GraphicsDevice;->getIDstring()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v0
.end method

.method public static getScreenDevice(I)Ljava/awt/GraphicsDevice;
    .locals 4
    .parameter "screenNumber"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/CanvasFrame$Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-static {}, Lcom/googlecode/javacv/CanvasFrame;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    .line 107
    .local v0, screens:[Ljava/awt/GraphicsDevice;
    array-length v1, v0

    if-lt p0, v1, :cond_0

    .line 108
    new-instance v1, Lcom/googlecode/javacv/CanvasFrame$Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CanvasFrame Error: Screen number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "There are only "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screens."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/googlecode/javacv/CanvasFrame$Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_0
    aget-object v1, v0, p0

    return-object v1
.end method

.method public static getScreenDevices()[Ljava/awt/GraphicsDevice;
    .locals 1

    .prologue
    .line 114
    invoke-static {}, Ljava/awt/GraphicsEnvironment;->getLocalGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/GraphicsEnvironment;->getScreenDevices()[Ljava/awt/GraphicsDevice;

    move-result-object v0

    return-object v0
.end method

.method private init(ZLjava/awt/DisplayMode;D)V
    .locals 6
    .parameter "fullScreen"
    .parameter "displayMode"
    .parameter "gamma"

    .prologue
    .line 145
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$1;

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/CanvasFrame$1;-><init>(Lcom/googlecode/javacv/CanvasFrame;Ljava/awt/DisplayMode;ZD)V

    .line 180
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Ljava/awt/EventQueue;->isDispatchThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 187
    :goto_0
    return-void

    .line 184
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/awt/EventQueue;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static tile([Lcom/googlecode/javacv/CanvasFrame;)V
    .locals 14
    .parameter "frames"

    .prologue
    .line 397
    new-instance v3, Lcom/googlecode/javacv/CanvasFrame$1MovedListener;

    invoke-direct {v3}, Lcom/googlecode/javacv/CanvasFrame$1MovedListener;-><init>()V

    .line 400
    .local v3, movedListener:Lcom/googlecode/javacv/CanvasFrame$1MovedListener;
    array-length v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v6, v0

    .line 401
    .local v6, canvasCols:I
    mul-int v0, v6, v6

    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 406
    add-int/lit8 v6, v6, 0x1

    .line 408
    :cond_0
    const/4 v8, 0x0

    .local v8, canvasX:I
    const/4 v9, 0x0

    .line 409
    .local v9, canvasY:I
    const/4 v7, 0x0

    .line 410
    .local v7, canvasMaxY:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    array-length v0, p0

    if-ge v11, v0, :cond_3

    .line 411
    move v2, v11

    .line 412
    .local v2, n:I
    move v4, v8

    .line 413
    .local v4, x:I
    move v5, v9

    .line 415
    .local v5, y:I
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v3, Lcom/googlecode/javacv/CanvasFrame$1MovedListener;->moved:Z

    .line 416
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/CanvasFrame$5;-><init>([Lcom/googlecode/javacv/CanvasFrame;ILcom/googlecode/javacv/CanvasFrame$1MovedListener;II)V

    invoke-static {v0}, Ljava/awt/EventQueue;->invokeLater(Ljava/lang/Runnable;)V

    .line 422
    const/4 v10, 0x0

    .line 423
    .local v10, count:I
    :goto_1
    iget-boolean v0, v3, Lcom/googlecode/javacv/CanvasFrame$1MovedListener;->moved:Z

    if-nez v0, :cond_2

    const/4 v0, 0x5

    if-ge v10, v0, :cond_2

    .line 428
    aget-object v1, p0, v2

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :try_start_1
    aget-object v0, p0, v2

    const-wide/16 v12, 0x64

    invoke-virtual {v0, v12, v13}, Ljava/lang/Object;->wait(J)V

    .line 430
    monitor-exit v1

    .line 431
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 438
    .end local v10           #count:I
    :catch_0
    move-exception v0

    .line 439
    :goto_2
    aget-object v0, p0, v11

    invoke-virtual {v0}, Lcom/googlecode/javacv/CanvasFrame;->getX()I

    move-result v0

    aget-object v1, p0, v11

    invoke-virtual {v1}, Lcom/googlecode/javacv/CanvasFrame;->getWidth()I

    move-result v1

    add-int v8, v0, v1

    .line 440
    aget-object v0, p0, v11

    invoke-virtual {v0}, Lcom/googlecode/javacv/CanvasFrame;->getY()I

    move-result v0

    aget-object v1, p0, v11

    invoke-virtual {v1}, Lcom/googlecode/javacv/CanvasFrame;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 441
    add-int/lit8 v0, v11, 0x1

    rem-int/2addr v0, v6

    if-nez v0, :cond_1

    .line 442
    const/4 v8, 0x0

    .line 443
    move v9, v7

    .line 410
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 433
    .restart local v10       #count:I
    :cond_2
    :try_start_3
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$6;

    invoke-direct {v0, p0, v2, v3}, Lcom/googlecode/javacv/CanvasFrame$6;-><init>([Lcom/googlecode/javacv/CanvasFrame;ILcom/googlecode/javacv/CanvasFrame$1MovedListener;)V

    invoke-static {v0}, Ljava/awt/EventQueue;->invokeLater(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 446
    .end local v2           #n:I
    .end local v4           #x:I
    .end local v5           #y:I
    .end local v10           #count:I
    :cond_3
    return-void
.end method


# virtual methods
.method public createGraphics()Ljava/awt/Graphics2D;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 334
    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v3}, Ljava/awt/Canvas;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v3}, Ljava/awt/Canvas;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v2}, Ljava/awt/Canvas;->getGraphicsConfiguration()Ljava/awt/GraphicsConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v3}, Ljava/awt/Canvas;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v4}, Ljava/awt/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Ljava/awt/GraphicsConfiguration;->createCompatibleImage(III)Ljava/awt/image/BufferedImage;

    move-result-object v1

    .line 337
    .local v1, newbuffer:Ljava/awt/image/BufferedImage;
    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_1

    .line 338
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getGraphics()Ljava/awt/Graphics;

    move-result-object v0

    .line 339
    .local v0, g:Ljava/awt/Graphics;
    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v6, v6, v3}, Ljava/awt/Graphics;->drawImage(Ljava/awt/Image;IILjava/awt/image/ImageObserver;)Z

    .line 340
    invoke-virtual {v0}, Ljava/awt/Graphics;->dispose()V

    .line 342
    .end local v0           #g:Ljava/awt/Graphics;
    :cond_1
    iput-object v1, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    .line 344
    .end local v1           #newbuffer:Ljava/awt/image/BufferedImage;
    :cond_2
    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->buffer:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    return-object v2
.end method

.method public getCanvas()Ljava/awt/Canvas;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    return-object v0
.end method

.method public getCanvasScale()D
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    return-wide v0
.end method

.method public getCanvasSize()Ljava/awt/Dimension;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v0}, Ljava/awt/Canvas;->getSize()Ljava/awt/Dimension;

    move-result-object v0

    return-object v0
.end method

.method public getLatency()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/googlecode/javacv/CanvasFrame;->latency:J

    return-wide v0
.end method

.method protected initCanvas(ZLjava/awt/DisplayMode;D)V
    .locals 3
    .parameter "fullScreen"
    .parameter "displayMode"
    .parameter "gamma"

    .prologue
    const/4 v2, 0x1

    .line 190
    new-instance v0, Lcom/googlecode/javacv/CanvasFrame$2;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/CanvasFrame$2;-><init>(Lcom/googlecode/javacv/CanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    .line 221
    if-eqz p1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame;->getSize()Ljava/awt/Dimension;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/awt/Canvas;->setSize(Ljava/awt/Dimension;)V

    .line 223
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    .line 227
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame;->getContentPane()Ljava/awt/Container;

    move-result-object v0

    iget-object v1, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 228
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v0, v2}, Ljava/awt/Canvas;->setVisible(Z)V

    .line 229
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/awt/Canvas;->createBufferStrategy(I)V

    .line 231
    return-void

    .line 225
    :cond_0
    iput-boolean v2, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    goto :goto_0
.end method

.method public releaseGraphics(Ljava/awt/Graphics2D;)V
    .locals 2
    .parameter "g"

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/awt/Graphics2D;->dispose()V

    .line 348
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/awt/Canvas;->paint(Ljava/awt/Graphics;)V

    .line 349
    return-void
.end method

.method public setCanvasScale(D)V
    .locals 1
    .parameter "initialScale"

    .prologue
    .line 329
    iput-wide p1, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    .line 331
    return-void
.end method

.method public setCanvasSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame;->getCanvasSize()Ljava/awt/Dimension;

    move-result-object v0

    .line 297
    .local v0, d:Ljava/awt/Dimension;
    iget v2, v0, Ljava/awt/Dimension;->width:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Ljava/awt/Dimension;->height:I

    if-ne v2, p2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 301
    :cond_0
    new-instance v1, Lcom/googlecode/javacv/CanvasFrame$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/googlecode/javacv/CanvasFrame$4;-><init>(Lcom/googlecode/javacv/CanvasFrame;II)V

    .line 316
    .local v1, r:Ljava/lang/Runnable;
    invoke-static {}, Ljava/awt/EventQueue;->isDispatchThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 317
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 320
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/awt/EventQueue;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setLatency(J)V
    .locals 0
    .parameter "latency"

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/googlecode/javacv/CanvasFrame;->latency:J

    .line 270
    return-void
.end method

.method public showColor(Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;)V
    .locals 5
    .parameter "color"

    .prologue
    .line 352
    new-instance v0, Ljava/awt/Color;

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->red()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->green()D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$CvScalar;->blue()D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/CanvasFrame;->showColor(Ljava/awt/Color;)V

    .line 353
    return-void
.end method

.method public showColor(Ljava/awt/Color;)V
    .locals 2
    .parameter "color"

    .prologue
    const/4 v1, 0x0

    .line 355
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;

    .line 356
    iput-object v1, p0, Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;

    .line 357
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v0, v1}, Ljava/awt/Canvas;->paint(Ljava/awt/Graphics;)V

    .line 358
    return-void
.end method

.method public showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacv/CanvasFrame;->showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)V

    .line 364
    return-void
.end method

.method public showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)V
    .locals 2
    .parameter "image"
    .parameter "flipChannels"

    .prologue
    .line 366
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getBufferedImageType()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0

    :goto_0
    invoke-virtual {p1, v0, v1, p2}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getBufferedImage(DZ)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/CanvasFrame;->showImage(Ljava/awt/Image;)V

    .line 368
    return-void

    .line 366
    :cond_0
    iget-wide v0, p0, Lcom/googlecode/javacv/CanvasFrame;->inverseGamma:D

    goto :goto_0
.end method

.method public showImage(Ljava/awt/Image;)V
    .locals 7
    .parameter "image"

    .prologue
    const/4 v6, 0x0

    .line 370
    if-nez p1, :cond_0

    .line 380
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/googlecode/javacv/CanvasFrame;->needInitialResize:Z

    if-eqz v2, :cond_1

    .line 373
    invoke-virtual {p1, v6}, Ljava/awt/Image;->getWidth(Ljava/awt/image/ImageObserver;)I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    .line 374
    .local v1, w:I
    invoke-virtual {p1, v6}, Ljava/awt/Image;->getHeight(Ljava/awt/image/ImageObserver;)I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/googlecode/javacv/CanvasFrame;->initialScale:D

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    .line 375
    .local v0, h:I
    invoke-virtual {p0, v1, v0}, Lcom/googlecode/javacv/CanvasFrame;->setCanvasSize(II)V

    .line 377
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_1
    iput-object v6, p0, Lcom/googlecode/javacv/CanvasFrame;->color:Ljava/awt/Color;

    .line 378
    iput-object p1, p0, Lcom/googlecode/javacv/CanvasFrame;->image:Ljava/awt/Image;

    .line 379
    iget-object v2, p0, Lcom/googlecode/javacv/CanvasFrame;->canvas:Ljava/awt/Canvas;

    invoke-virtual {v2, v6}, Ljava/awt/Canvas;->paint(Ljava/awt/Graphics;)V

    goto :goto_0
.end method

.method public waitKey()Ljava/awt/event/KeyEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacv/CanvasFrame;->waitKey(I)Ljava/awt/event/KeyEvent;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized waitKey(I)Ljava/awt/event/KeyEvent;
    .locals 3
    .parameter "delay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 279
    monitor-enter p0

    if-ltz p1, :cond_0

    .line 280
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;

    .line 281
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;

    .line 284
    .local v0, e:Ljava/awt/event/KeyEvent;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacv/CanvasFrame;->keyEvent:Ljava/awt/event/KeyEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-object v0

    .line 279
    .end local v0           #e:Ljava/awt/event/KeyEvent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public waitLatency()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/googlecode/javacv/CanvasFrame;->getLatency()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 273
    return-void
.end method
