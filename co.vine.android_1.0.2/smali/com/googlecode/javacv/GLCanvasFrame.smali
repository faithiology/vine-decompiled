.class public Lcom/googlecode/javacv/GLCanvasFrame;
.super Lcom/googlecode/javacv/CanvasFrame;
.source "GLCanvasFrame.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;


# instance fields
.field private buffer:Ljava/nio/Buffer;

.field private color:Ljava/awt/Color;

.field private eventListener:Ljavax/media/opengl/GLEventListener;

.field private format:I

.field private frameBuffer:I

.field private height:I

.field private params:[I

.field private renderBuffer:I

.field private type:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/javacv/GLCanvasFrame;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/googlecode/javacv/GLCanvasFrame;-><init>(Ljava/lang/String;D)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;D)V
    .locals 3
    .parameter "title"
    .parameter "gamma"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;D)V

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->params:[I

    .line 133
    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 135
    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 136
    iput v2, p0, Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I

    iput v2, p0, Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I

    .line 138
    new-instance v0, Lcom/googlecode/javacv/GLCanvasFrame$2;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/GLCanvasFrame$2;-><init>(Lcom/googlecode/javacv/GLCanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->eventListener:Ljavax/media/opengl/GLEventListener;

    .line 66
    invoke-direct {p0, v2, v1, v1}, Lcom/googlecode/javacv/GLCanvasFrame;->init(ZLjavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V

    .line 67
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
    .line 80
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/GLCanvasFrame;-><init>(Ljava/lang/String;ILjava/awt/DisplayMode;D)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/awt/DisplayMode;D)V
    .locals 3
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
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;ILjava/awt/DisplayMode;D)V

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->params:[I

    .line 133
    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 135
    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 136
    iput v2, p0, Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I

    iput v2, p0, Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I

    .line 138
    new-instance v0, Lcom/googlecode/javacv/GLCanvasFrame$2;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/GLCanvasFrame$2;-><init>(Lcom/googlecode/javacv/GLCanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->eventListener:Ljavax/media/opengl/GLEventListener;

    .line 84
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/googlecode/javacv/GLCanvasFrame;->init(ZLjavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/awt/DisplayMode;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V
    .locals 8
    .parameter "title"
    .parameter "screenNumber"
    .parameter "displayMode"
    .parameter "caps"
    .parameter "shareWith"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/CanvasFrame$Exception;
        }
    .end annotation

    .prologue
    .line 89
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/googlecode/javacv/GLCanvasFrame;-><init>(Ljava/lang/String;ILjava/awt/DisplayMode;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;D)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/awt/DisplayMode;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;D)V
    .locals 8
    .parameter "title"
    .parameter "screenNumber"
    .parameter "displayMode"
    .parameter "caps"
    .parameter "shareWith"
    .parameter "gamma"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/googlecode/javacv/CanvasFrame$Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 93
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;ILjava/awt/DisplayMode;D)V

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->params:[I

    .line 133
    iput-object v7, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 135
    iput-object v7, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 136
    iput v6, p0, Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I

    iput v6, p0, Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I

    .line 138
    new-instance v0, Lcom/googlecode/javacv/GLCanvasFrame$2;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/GLCanvasFrame$2;-><init>(Lcom/googlecode/javacv/GLCanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->eventListener:Ljavax/media/opengl/GLEventListener;

    .line 94
    const/4 v0, 0x1

    invoke-direct {p0, v0, p4, p5}, Lcom/googlecode/javacv/GLCanvasFrame;->init(ZLjavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V
    .locals 7
    .parameter "title"
    .parameter "gc"
    .parameter "caps"
    .parameter "shareWith"

    .prologue
    .line 71
    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/googlecode/javacv/GLCanvasFrame;-><init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;D)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;D)V
    .locals 3
    .parameter "title"
    .parameter "gc"
    .parameter "caps"
    .parameter "shareWith"
    .parameter "gamma"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/googlecode/javacv/CanvasFrame;-><init>(Ljava/lang/String;Ljava/awt/GraphicsConfiguration;D)V

    .line 132
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->params:[I

    .line 133
    iput-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 135
    iput-object v2, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 136
    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I

    .line 138
    new-instance v0, Lcom/googlecode/javacv/GLCanvasFrame$2;

    invoke-direct {v0, p0}, Lcom/googlecode/javacv/GLCanvasFrame$2;-><init>(Lcom/googlecode/javacv/GLCanvasFrame;)V

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->eventListener:Ljavax/media/opengl/GLEventListener;

    .line 76
    invoke-direct {p0, v1, p3, p4}, Lcom/googlecode/javacv/GLCanvasFrame;->init(ZLjavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/googlecode/javacv/GLCanvasFrame;)Ljavax/media/opengl/GLEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->eventListener:Ljavax/media/opengl/GLEventListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/googlecode/javacv/GLCanvasFrame;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->params:[I

    return-object v0
.end method

.method static synthetic access$1000()Lcom/googlecode/javacv/GLCanvasFrame;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/googlecode/javacv/GLCanvasFrame;)Lcom/googlecode/javacv/GLCanvasFrame;
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    sput-object p0, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    return-object p0
.end method

.method static synthetic access$200(Lcom/googlecode/javacv/GLCanvasFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I

    return v0
.end method

.method static synthetic access$202(Lcom/googlecode/javacv/GLCanvasFrame;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->frameBuffer:I

    return p1
.end method

.method static synthetic access$300(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/awt/Color;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    return-object v0
.end method

.method static synthetic access$400(Lcom/googlecode/javacv/GLCanvasFrame;)Ljava/nio/Buffer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/googlecode/javacv/GLCanvasFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->width:I

    return v0
.end method

.method static synthetic access$600(Lcom/googlecode/javacv/GLCanvasFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->height:I

    return v0
.end method

.method static synthetic access$700(Lcom/googlecode/javacv/GLCanvasFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    return v0
.end method

.method static synthetic access$800(Lcom/googlecode/javacv/GLCanvasFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    return v0
.end method

.method static synthetic access$900(Lcom/googlecode/javacv/GLCanvasFrame;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I

    return v0
.end method

.method private init(ZLjavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;)V
    .locals 2
    .parameter "fullScreen"
    .parameter "caps"
    .parameter "shareWith"

    .prologue
    .line 99
    new-instance v0, Lcom/googlecode/javacv/GLCanvasFrame$1;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/googlecode/javacv/GLCanvasFrame$1;-><init>(Lcom/googlecode/javacv/GLCanvasFrame;Ljavax/media/opengl/GLCapabilitiesImmutable;Ljavax/media/opengl/GLContext;Z)V

    .line 121
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Ljava/awt/EventQueue;->isDispatchThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 128
    :goto_0
    return-void

    .line 125
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/awt/EventQueue;->invokeAndWait(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0xa

    const/4 v7, 0x0

    .line 307
    new-instance v4, Lcom/googlecode/javacv/GLCanvasFrame$3;

    invoke-direct {v4}, Lcom/googlecode/javacv/GLCanvasFrame$3;-><init>()V

    invoke-static {v4}, Ljava/awt/EventQueue;->invokeAndWait(Ljava/lang/Runnable;)V

    .line 320
    new-instance v0, Lcom/googlecode/javacv/JavaCVCL;

    sget-object v4, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v4}, Lcom/googlecode/javacv/GLCanvasFrame;->getGLCanvas()Ljavax/media/opengl/awt/GLCanvas;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/media/opengl/awt/GLCanvas;->getContext()Ljavax/media/opengl/GLContext;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/googlecode/javacv/JavaCVCL;-><init>(Ljavax/media/opengl/GLContext;)V

    .line 321
    .local v0, context:Lcom/googlecode/javacv/JavaCVCL;
    const-string v4, "/usr/share/opencv/samples/c/lena.jpg"

    invoke-static {v4}, Lcom/googlecode/javacv/cpp/opencv_highgui;->cvLoadImageBGRA(Ljava/lang/String;)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v2

    .line 324
    .local v2, image:Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    new-array v4, v7, [Lcom/jogamp/opencl/CLMemory$Mem;

    invoke-virtual {v0, v2, v4}, Lcom/googlecode/javacv/JavaCVCL;->createCLGLImageFrom(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[Lcom/jogamp/opencl/CLMemory$Mem;)Lcom/jogamp/opencl/gl/CLGLImage2d;

    move-result-object v3

    .line 326
    .local v3, imageCLGL:Lcom/jogamp/opencl/gl/CLGLImage2d;
    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/JavaCVCL;->acquireGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 327
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v2, v4}, Lcom/googlecode/javacv/JavaCVCL;->writeImage(Lcom/jogamp/opencl/CLImage2d;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)Lcom/jogamp/opencl/CLImage2d;

    .line 328
    invoke-virtual {v0, v3}, Lcom/googlecode/javacv/JavaCVCL;->releaseGLObject(Lcom/jogamp/opencl/CLObject;)V

    .line 332
    sget-object v4, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    const-wide/high16 v5, 0x3fe0

    invoke-virtual {v4, v5, v6}, Lcom/googlecode/javacv/GLCanvasFrame;->setCanvasScale(D)V

    .line 333
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0x3e8

    if-ge v1, v4, :cond_0

    .line 334
    sget-object v4, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v3}, Lcom/jogamp/opencl/gl/CLGLImage2d;->getGLObjectID()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/GLCanvasFrame;->showImage(I)V

    .line 335
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 336
    sget-object v4, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    sget-object v5, Ljava/awt/Color;->RED:Ljava/awt/Color;

    invoke-virtual {v4, v5}, Lcom/googlecode/javacv/GLCanvasFrame;->showColor(Ljava/awt/Color;)V

    .line 337
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 333
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    :cond_0
    sget-object v4, Lcom/googlecode/javacv/GLCanvasFrame;->canvasFrame:Lcom/googlecode/javacv/GLCanvasFrame;

    invoke-virtual {v4}, Lcom/googlecode/javacv/GLCanvasFrame;->waitKey()Ljava/awt/event/KeyEvent;

    .line 340
    invoke-virtual {v0}, Lcom/googlecode/javacv/JavaCVCL;->release()V

    .line 341
    invoke-static {v7}, Ljava/lang/System;->exit(I)V

    .line 342
    return-void
.end method


# virtual methods
.method public getGLCanvas()Ljavax/media/opengl/awt/GLCanvas;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->canvas:Ljava/awt/Canvas;

    check-cast v0, Ljavax/media/opengl/awt/GLCanvas;

    return-object v0
.end method

.method protected initCanvas(ZLjava/awt/DisplayMode;D)V
    .locals 0
    .parameter "fullScreen"
    .parameter "displayMode"
    .parameter "gamma"

    .prologue
    .line 130
    return-void
.end method

.method public showColor(Ljava/awt/Color;)V
    .locals 1
    .parameter "color"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 213
    invoke-virtual {p0}, Lcom/googlecode/javacv/GLCanvasFrame;->getGLCanvas()Ljavax/media/opengl/awt/GLCanvas;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/media/opengl/awt/GLCanvas;->display()V

    .line 214
    return-void
.end method

.method public showImage(I)V
    .locals 1
    .parameter "renderBuffer"

    .prologue
    const/4 v0, 0x0

    .line 296
    if-gtz p1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 300
    iput-object v0, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 301
    iput p1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->renderBuffer:I

    .line 302
    invoke-virtual {p0}, Lcom/googlecode/javacv/GLCanvasFrame;->getGLCanvas()Ljavax/media/opengl/awt/GLCanvas;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/media/opengl/awt/GLCanvas;->display()V

    goto :goto_0
.end method

.method public showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V
    .locals 1
    .parameter "image"

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/googlecode/javacv/GLCanvasFrame;->showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)V

    .line 218
    return-void
.end method

.method public showImage(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)V
    .locals 3
    .parameter "image"
    .parameter "flipChannels"

    .prologue
    .line 220
    if-eqz p2, :cond_0

    .line 221
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "GLCanvasFrame does not support channel flipping."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_0
    if-nez p1, :cond_1

    .line 249
    :goto_0
    return-void

    .line 226
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 227
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->width()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->width:I

    .line 228
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->height()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->height:I

    .line 229
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->getByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, size:I
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->depth()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 239
    sget-boolean v1, Lcom/googlecode/javacv/GLCanvasFrame;->$assertionsDisabled:Z

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 232
    :sswitch_0
    const/16 v1, 0x1400

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/4 v0, 0x1

    .line 241
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->nChannels()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 246
    sget-boolean v1, Lcom/googlecode/javacv/GLCanvasFrame;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 233
    :sswitch_1
    const/16 v1, 0x1401

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/4 v0, 0x1

    goto :goto_1

    .line 234
    :sswitch_2
    const/16 v1, 0x1402

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/4 v0, 0x2

    goto :goto_1

    .line 235
    :sswitch_3
    const/16 v1, 0x1403

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/4 v0, 0x2

    goto :goto_1

    .line 236
    :sswitch_4
    const/16 v1, 0x1404

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/4 v0, 0x4

    goto :goto_1

    .line 237
    :sswitch_5
    const/16 v1, 0x1406

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/4 v0, 0x4

    goto :goto_1

    .line 238
    :sswitch_6
    const/16 v1, 0x140a

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    const/16 v0, 0x8

    goto :goto_1

    .line 242
    :pswitch_0
    const/16 v1, 0x1909

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    .line 248
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/GLCanvasFrame;->getGLCanvas()Ljavax/media/opengl/awt/GLCanvas;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/media/opengl/awt/GLCanvas;->display()V

    goto :goto_0

    .line 243
    :pswitch_1
    const v1, 0x8227

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    goto :goto_2

    .line 244
    :pswitch_2
    const/16 v1, 0x1907

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    goto :goto_2

    .line 245
    :pswitch_3
    const/16 v1, 0x1908

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    goto :goto_2

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffffff8 -> :sswitch_0
        -0x7ffffff0 -> :sswitch_2
        -0x7fffffe0 -> :sswitch_4
        0x8 -> :sswitch_1
        0x10 -> :sswitch_3
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
    .end sparse-switch

    .line 241
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public showImage(Ljava/awt/Image;)V
    .locals 3
    .parameter "image"

    .prologue
    .line 251
    instance-of v0, p1, Ljava/awt/image/BufferedImage;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GLCanvasFrame does not support "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BufferedImage required."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    check-cast p1, Ljava/awt/image/BufferedImage;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/googlecode/javacv/GLCanvasFrame;->showImage(Ljava/awt/image/BufferedImage;)V

    .line 255
    return-void
.end method

.method public showImage(Ljava/awt/image/BufferedImage;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 257
    if-nez p1, :cond_0

    .line 294
    :goto_0
    return-void

    .line 260
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->color:Ljava/awt/Color;

    .line 261
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->width:I

    .line 262
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->height:I

    .line 264
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/WritableRaster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    .line 265
    .local v0, buffer:Ljava/awt/image/DataBuffer;
    instance-of v1, v0, Ljava/awt/image/DataBufferByte;

    if-eqz v1, :cond_2

    .line 266
    check-cast v0, Ljava/awt/image/DataBufferByte;

    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    invoke-virtual {v0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 267
    const/16 v1, 0x1401

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    .line 286
    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 291
    sget-boolean v1, Lcom/googlecode/javacv/GLCanvasFrame;->$assertionsDisabled:Z

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 268
    .restart local v0       #buffer:Ljava/awt/image/DataBuffer;
    :cond_2
    instance-of v1, v0, Ljava/awt/image/DataBufferDouble;

    if-eqz v1, :cond_3

    .line 269
    check-cast v0, Ljava/awt/image/DataBufferDouble;

    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    invoke-virtual {v0}, Ljava/awt/image/DataBufferDouble;->getData()[D

    move-result-object v1

    invoke-static {v1}, Ljava/nio/DoubleBuffer;->wrap([D)Ljava/nio/DoubleBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 270
    const/16 v1, 0x140a

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    goto :goto_1

    .line 271
    .restart local v0       #buffer:Ljava/awt/image/DataBuffer;
    :cond_3
    instance-of v1, v0, Ljava/awt/image/DataBufferFloat;

    if-eqz v1, :cond_4

    .line 272
    check-cast v0, Ljava/awt/image/DataBufferFloat;

    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    invoke-virtual {v0}, Ljava/awt/image/DataBufferFloat;->getData()[F

    move-result-object v1

    invoke-static {v1}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 273
    const/16 v1, 0x1406

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    goto :goto_1

    .line 274
    .restart local v0       #buffer:Ljava/awt/image/DataBuffer;
    :cond_4
    instance-of v1, v0, Ljava/awt/image/DataBufferInt;

    if-eqz v1, :cond_5

    .line 275
    check-cast v0, Ljava/awt/image/DataBufferInt;

    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    invoke-virtual {v0}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object v1

    invoke-static {v1}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 276
    const/16 v1, 0x1404

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    goto :goto_1

    .line 277
    .restart local v0       #buffer:Ljava/awt/image/DataBuffer;
    :cond_5
    instance-of v1, v0, Ljava/awt/image/DataBufferShort;

    if-eqz v1, :cond_6

    .line 278
    check-cast v0, Ljava/awt/image/DataBufferShort;

    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    invoke-virtual {v0}, Ljava/awt/image/DataBufferShort;->getData()[S

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 279
    const/16 v1, 0x1402

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    goto :goto_1

    .line 280
    .restart local v0       #buffer:Ljava/awt/image/DataBuffer;
    :cond_6
    instance-of v1, v0, Ljava/awt/image/DataBufferUShort;

    if-eqz v1, :cond_7

    .line 281
    check-cast v0, Ljava/awt/image/DataBufferUShort;

    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    invoke-virtual {v0}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->buffer:Ljava/nio/Buffer;

    .line 282
    const/16 v1, 0x1403

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->type:I

    goto :goto_1

    .line 284
    .restart local v0       #buffer:Ljava/awt/image/DataBuffer;
    :cond_7
    sget-boolean v1, Lcom/googlecode/javacv/GLCanvasFrame;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 287
    .end local v0           #buffer:Ljava/awt/image/DataBuffer;
    :pswitch_0
    const/16 v1, 0x1909

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    .line 293
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/googlecode/javacv/GLCanvasFrame;->getGLCanvas()Ljavax/media/opengl/awt/GLCanvas;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/media/opengl/awt/GLCanvas;->display()V

    goto/16 :goto_0

    .line 288
    :pswitch_1
    const v1, 0x8227

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    goto :goto_2

    .line 289
    :pswitch_2
    const/16 v1, 0x1907

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    goto :goto_2

    .line 290
    :pswitch_3
    const/16 v1, 0x1908

    iput v1, p0, Lcom/googlecode/javacv/GLCanvasFrame;->format:I

    goto :goto_2

    .line 286
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
