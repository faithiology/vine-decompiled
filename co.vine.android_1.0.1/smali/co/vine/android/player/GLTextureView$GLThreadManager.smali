.class Lco/vine/android/player/GLTextureView$GLThreadManager;
.super Ljava/lang/Object;
.source "GLTextureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/player/GLTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GLThreadManager"
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final kGLES_20:I = 0x20000

.field private static final kMSM7K_RENDERER_PREFIX:Ljava/lang/String; = "Q3Dimension MSM7500 "


# instance fields
.field private mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

.field private mGLESDriverCheckComplete:Z

.field private mGLESVersion:I

.field private mGLESVersionCheckComplete:Z

.field private mLimitedGLESContexts:Z

.field private mMultipleGLESContextsAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1842
    const-string v0, "GLThreadManager"

    sput-object v0, Lco/vine/android/player/GLTextureView$GLThreadManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/player/GLTextureView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1841
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;-><init>()V

    return-void
.end method

.method private checkGLESVersion()V
    .locals 3

    .prologue
    const/high16 v2, 0x2

    const/4 v1, 0x1

    .line 1925
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    if-nez v0, :cond_1

    .line 1926
    iput v2, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESVersion:I

    .line 1927
    iget v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESVersion:I

    if-lt v0, v2, :cond_0

    .line 1928
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1934
    :cond_0
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESVersionCheckComplete:Z

    .line 1936
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1906
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z

    if-nez v3, :cond_1

    .line 1907
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1908
    const/16 v3, 0x1f01

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 1909
    .local v0, renderer:Ljava/lang/String;
    iget v3, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESVersion:I

    const/high16 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 1910
    const-string v3, "Q3Dimension MSM7500 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    .line 1912
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1914
    :cond_0
    iget-boolean v3, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v3, :cond_3

    :goto_1
    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z

    .line 1920
    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mGLESDriverCheckComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1922
    .end local v0           #renderer:Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void

    .restart local v0       #renderer:Ljava/lang/String;
    :cond_2
    move v3, v2

    .line 1910
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1914
    goto :goto_1

    .line 1906
    .end local v0           #renderer:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public releaseEglContextLocked(Lco/vine/android/player/GLTextureView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1887
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1888
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    .line 1890
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1891
    return-void
.end method

.method public declared-synchronized shouldReleaseEGLContextWhenPausing()Z
    .locals 1

    .prologue
    .line 1897
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mLimitedGLESContexts:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldTerminateEGLWhenPausing()Z
    .locals 1

    .prologue
    .line 1901
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1902
    iget-boolean v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1901
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized threadExiting(Lco/vine/android/player/GLTextureView$GLThread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1848
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    #setter for: Lco/vine/android/player/GLTextureView$GLThread;->mExited:Z
    invoke-static {p1, v0}, Lco/vine/android/player/GLTextureView$GLThread;->access$1102(Lco/vine/android/player/GLTextureView$GLThread;Z)Z

    .line 1849
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    if-ne v0, p1, :cond_0

    .line 1850
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    .line 1852
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1853
    monitor-exit p0

    return-void

    .line 1848
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryAcquireEglContextLocked(Lco/vine/android/player/GLTextureView$GLThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v0, 0x1

    .line 1863
    iget-object v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    if-nez v1, :cond_2

    .line 1864
    :cond_0
    iput-object p1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    .line 1865
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1879
    :cond_1
    :goto_0
    return v0

    .line 1868
    :cond_2
    invoke-direct {p0}, Lco/vine/android/player/GLTextureView$GLThreadManager;->checkGLESVersion()V

    .line 1869
    iget-boolean v1, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mMultipleGLESContextsAllowed:Z

    if-nez v1, :cond_1

    .line 1876
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    if-eqz v0, :cond_3

    .line 1877
    iget-object v0, p0, Lco/vine/android/player/GLTextureView$GLThreadManager;->mEglOwner:Lco/vine/android/player/GLTextureView$GLThread;

    invoke-virtual {v0}, Lco/vine/android/player/GLTextureView$GLThread;->requestReleaseEglContextLocked()V

    .line 1879
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
