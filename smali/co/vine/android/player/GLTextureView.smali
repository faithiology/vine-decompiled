.class public Lco/vine/android/player/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/player/GLTextureView$1;,
        Lco/vine/android/player/GLTextureView$GLThreadManager;,
        Lco/vine/android/player/GLTextureView$LogWriter;,
        Lco/vine/android/player/GLTextureView$GLThread;,
        Lco/vine/android/player/GLTextureView$EglHelper;,
        Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;,
        Lco/vine/android/player/GLTextureView$ComponentSizeChooser;,
        Lco/vine/android/player/GLTextureView$BaseConfigChooser;,
        Lco/vine/android/player/GLTextureView$EGLConfigChooser;,
        Lco/vine/android/player/GLTextureView$DefaultWindowSurfaceFactory;,
        Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;,
        Lco/vine/android/player/GLTextureView$DefaultContextFactory;,
        Lco/vine/android/player/GLTextureView$EGLContextFactory;,
        Lco/vine/android/player/GLTextureView$Renderer;,
        Lco/vine/android/player/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GLTextureView"

.field private static final sGLThreadManager:Lco/vine/android/player/GLTextureView$GLThreadManager;


# instance fields
.field private mDebugFlags:I

.field private mDetached:Z

.field private mEGLConfigChooser:Lco/vine/android/player/GLTextureView$EGLConfigChooser;

.field private mEGLContextClientVersion:I

.field private mEGLContextFactory:Lco/vine/android/player/GLTextureView$EGLContextFactory;

.field private mEGLWindowSurfaceFactory:Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;

.field private mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

.field private mGLWrapper:Lco/vine/android/player/GLTextureView$GLWrapper;

.field private mPreserveEGLContextOnPause:Z

.field private mRenderer:Lco/vine/android/player/GLTextureView$Renderer;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/player/GLTextureView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1954
    new-instance v0, Lco/vine/android/player/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lco/vine/android/player/GLTextureView$GLThreadManager;-><init>(Lco/vine/android/player/GLTextureView$1;)V

    sput-object v0, Lco/vine/android/player/GLTextureView;->sGLThreadManager:Lco/vine/android/player/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 213
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1956
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 214
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->init()V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1956
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 223
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->init()V

    .line 224
    return-void
.end method

.method static synthetic access$1000(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$Renderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mRenderer:Lco/vine/android/player/GLTextureView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/player/GLTextureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lco/vine/android/player/GLTextureView;->mEGLContextClientVersion:I

    return v0
.end method

.method static synthetic access$300(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$EGLConfigChooser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLConfigChooser:Lco/vine/android/player/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$EGLContextFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLContextFactory:Lco/vine/android/player/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$500(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLWindowSurfaceFactory:Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/player/GLTextureView;)Lco/vine/android/player/GLTextureView$GLWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLWrapper:Lco/vine/android/player/GLTextureView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lco/vine/android/player/GLTextureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget v0, p0, Lco/vine/android/player/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method static synthetic access$800()Lco/vine/android/player/GLTextureView$GLThreadManager;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lco/vine/android/player/GLTextureView;->sGLThreadManager:Lco/vine/android/player/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method static synthetic access$900(Lco/vine/android/player/GLTextureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1835
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 1836
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1839
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0, p0}, Lco/vine/android/player/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 241
    invoke-virtual {p0, p0}, Lco/vine/android/player/GLTextureView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 242
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lco/vine/android/player/GLTextureView;->setEGLContextClientVersion(I)V

    .line 243
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 229
    :try_start_0
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 237
    return-void

    .line 235
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lco/vine/android/player/GLTextureView;->mDebugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 312
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView;->mPreserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 578
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 582
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView;->mDetached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lco/vine/android/player/GLTextureView;->mRenderer:Lco/vine/android/player/GLTextureView$Renderer;

    if-eqz v1, :cond_2

    .line 583
    const/4 v0, 0x1

    .line 584
    .local v0, renderMode:I
    iget-object v1, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    .line 585
    iget-object v1, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v1}, Lco/vine/android/player/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 587
    :cond_0
    new-instance v1, Lco/vine/android/player/GLTextureView$GLThread;

    iget-object v2, p0, Lco/vine/android/player/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lco/vine/android/player/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    .line 588
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 589
    iget-object v1, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Lco/vine/android/player/GLTextureView$GLThread;->setRenderMode(I)V

    .line 591
    :cond_1
    iget-object v1, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v1}, Lco/vine/android/player/GLTextureView$GLThread;->start()V

    .line 593
    .end local v0           #renderMode:I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView;->mDetached:Z

    .line 594
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->requestExitAndWait()V

    .line 609
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/player/GLTextureView;->mDetached:Z

    .line 610
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 611
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 636
    invoke-virtual {p0}, Lco/vine/android/player/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/player/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 637
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->onPause()V

    .line 548
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->onResume()V

    .line 559
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 615
    invoke-virtual {p0, p1}, Lco/vine/android/player/GLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    .line 616
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .parameter "surface"

    .prologue
    .line 625
    invoke-virtual {p0, p1}, Lco/vine/android/player/GLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    .line 626
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lco/vine/android/player/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 621
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 631
    invoke-virtual {p0}, Lco/vine/android/player/GLTextureView;->requestRender()V

    .line 632
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 569
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lco/vine/android/player/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 570
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->requestRender()V

    .line 513
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .parameter "debugFlags"

    .prologue
    .line 274
    iput p1, p0, Lco/vine/android/player/GLTextureView;->mDebugFlags:I

    .line 275
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .parameter "redSize"
    .parameter "greenSize"
    .parameter "blueSize"
    .parameter "alphaSize"
    .parameter "depthSize"
    .parameter "stencilSize"

    .prologue
    .line 436
    new-instance v0, Lco/vine/android/player/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lco/vine/android/player/GLTextureView$ComponentSizeChooser;-><init>(Lco/vine/android/player/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Lco/vine/android/player/GLTextureView;->setEGLConfigChooser(Lco/vine/android/player/GLTextureView$EGLConfigChooser;)V

    .line 438
    return-void
.end method

.method public setEGLConfigChooser(Lco/vine/android/player/GLTextureView$EGLConfigChooser;)V
    .locals 0
    .parameter "configChooser"

    .prologue
    .line 400
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->checkRenderThreadState()V

    .line 401
    iput-object p1, p0, Lco/vine/android/player/GLTextureView;->mEGLConfigChooser:Lco/vine/android/player/GLTextureView$EGLConfigChooser;

    .line 402
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .parameter "needDepth"

    .prologue
    .line 419
    new-instance v0, Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;-><init>(Lco/vine/android/player/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Lco/vine/android/player/GLTextureView;->setEGLConfigChooser(Lco/vine/android/player/GLTextureView$EGLConfigChooser;)V

    .line 420
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .parameter "version"

    .prologue
    .line 468
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->checkRenderThreadState()V

    .line 469
    iput p1, p0, Lco/vine/android/player/GLTextureView;->mEGLContextClientVersion:I

    .line 470
    return-void
.end method

.method public setEGLContextFactory(Lco/vine/android/player/GLTextureView$EGLContextFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 368
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->checkRenderThreadState()V

    .line 369
    iput-object p1, p0, Lco/vine/android/player/GLTextureView;->mEGLContextFactory:Lco/vine/android/player/GLTextureView$EGLContextFactory;

    .line 370
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .parameter "factory"

    .prologue
    .line 382
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->checkRenderThreadState()V

    .line 383
    iput-object p1, p0, Lco/vine/android/player/GLTextureView;->mEGLWindowSurfaceFactory:Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;

    .line 384
    return-void
.end method

.method public setGLWrapper(Lco/vine/android/player/GLTextureView$GLWrapper;)V
    .locals 0
    .parameter "glWrapper"

    .prologue
    .line 260
    iput-object p1, p0, Lco/vine/android/player/GLTextureView;->mGLWrapper:Lco/vine/android/player/GLTextureView$GLWrapper;

    .line 261
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .parameter "preserveOnPause"

    .prologue
    .line 305
    iput-boolean p1, p0, Lco/vine/android/player/GLTextureView;->mPreserveEGLContextOnPause:Z

    .line 306
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .parameter "renderMode"

    .prologue
    .line 489
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Lco/vine/android/player/GLTextureView$GLThread;->setRenderMode(I)V

    .line 490
    return-void
.end method

.method public setRenderer(Lco/vine/android/player/GLTextureView$Renderer;)V
    .locals 3
    .parameter "renderer"

    .prologue
    const/4 v2, 0x0

    .line 342
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView;->checkRenderThreadState()V

    .line 343
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLConfigChooser:Lco/vine/android/player/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lco/vine/android/player/GLTextureView$SimpleEGLConfigChooser;-><init>(Lco/vine/android/player/GLTextureView;Z)V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLConfigChooser:Lco/vine/android/player/GLTextureView$EGLConfigChooser;

    .line 346
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLContextFactory:Lco/vine/android/player/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 347
    new-instance v0, Lco/vine/android/player/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Lco/vine/android/player/GLTextureView$DefaultContextFactory;-><init>(Lco/vine/android/player/GLTextureView;Lco/vine/android/player/GLTextureView$1;)V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLContextFactory:Lco/vine/android/player/GLTextureView$EGLContextFactory;

    .line 349
    :cond_1
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLWindowSurfaceFactory:Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 350
    new-instance v0, Lco/vine/android/player/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Lco/vine/android/player/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Lco/vine/android/player/GLTextureView$1;)V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView;->mEGLWindowSurfaceFactory:Lco/vine/android/player/GLTextureView$EGLWindowSurfaceFactory;

    .line 352
    :cond_2
    iput-object p1, p0, Lco/vine/android/player/GLTextureView;->mRenderer:Lco/vine/android/player/GLTextureView$Renderer;

    .line 353
    new-instance v0, Lco/vine/android/player/GLTextureView$GLThread;

    iget-object v1, p0, Lco/vine/android/player/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Lco/vine/android/player/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    .line 354
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->start()V

    .line 355
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1012
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lco/vine/android/player/GLTextureView;->setRenderMode(I)V

    .line 1013
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1016
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/player/GLTextureView;->setRenderMode(I)V

    .line 1017
    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 1
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 537
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0, p3, p4}, Lco/vine/android/player/GLTextureView$GLThread;->onWindowResize(II)V

    .line 538
    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 520
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->surfaceCreated()V

    .line 521
    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 529
    iget-object v0, p0, Lco/vine/android/player/GLTextureView;->mGLThread:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 530
    return-void
.end method
