.class public Lco/vine/android/player/SdkVideoView;
.super Landroid/view/TextureView;
.source "SdkVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field public static final STATE_PLAYING:I = 0x3

.field public static final STATE_PREPARED:I = 0x2

.field public static final STATE_PREPARING:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private attributes:Landroid/util/AttributeSet;

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field public mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHasNotRetriedBefore:Z

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:[I

.field private mLooping:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPath:Ljava/lang/String;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/Surface;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private playingPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 74
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I

    .line 295
    new-instance v0, Lco/vine/android/player/SdkVideoView$1;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 307
    new-instance v0, Lco/vine/android/player/SdkVideoView$2;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 355
    new-instance v0, Lco/vine/android/player/SdkVideoView$3;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 369
    new-instance v0, Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 405
    new-instance v0, Lco/vine/android/player/SdkVideoView$5;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 454
    new-instance v0, Lco/vine/android/player/SdkVideoView$6;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    .line 90
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 74
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I

    .line 295
    new-instance v0, Lco/vine/android/player/SdkVideoView$1;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 307
    new-instance v0, Lco/vine/android/player/SdkVideoView$2;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 355
    new-instance v0, Lco/vine/android/player/SdkVideoView$3;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 369
    new-instance v0, Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 405
    new-instance v0, Lco/vine/android/player/SdkVideoView$5;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 454
    new-instance v0, Lco/vine/android/player/SdkVideoView$6;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    .line 95
    iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->attributes:Landroid/util/AttributeSet;

    .line 96
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 74
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 75
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 86
    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I

    .line 295
    new-instance v0, Lco/vine/android/player/SdkVideoView$1;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$1;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 307
    new-instance v0, Lco/vine/android/player/SdkVideoView$2;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$2;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 355
    new-instance v0, Lco/vine/android/player/SdkVideoView$3;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$3;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 369
    new-instance v0, Lco/vine/android/player/SdkVideoView$4;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$4;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 405
    new-instance v0, Lco/vine/android/player/SdkVideoView$5;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$5;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 454
    new-instance v0, Lco/vine/android/player/SdkVideoView$6;

    invoke-direct {v0, p0}, Lco/vine/android/player/SdkVideoView$6;-><init>(Lco/vine/android/player/SdkVideoView;)V

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    .line 101
    iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->attributes:Landroid/util/AttributeSet;

    .line 102
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->initVideoView()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1002(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$102(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    return v0
.end method

.method static synthetic access$1102(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    return p1
.end method

.method static synthetic access$1200(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1302(Lco/vine/android/player/SdkVideoView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1500(Lco/vine/android/player/SdkVideoView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1702(Lco/vine/android/player/SdkVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1800(Lco/vine/android/player/SdkVideoView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V

    return-void
.end method

.method static synthetic access$1900(Lco/vine/android/player/SdkVideoView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lco/vine/android/player/SdkVideoView;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lco/vine/android/player/SdkVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mCanPause:Z

    return p1
.end method

.method static synthetic access$302(Lco/vine/android/player/SdkVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$402(Lco/vine/android/player/SdkVideoView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$500(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/player/SdkVideoView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$700(Lco/vine/android/player/SdkVideoView;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$800(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$900(Lco/vine/android/player/SdkVideoView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$902(Lco/vine/android/player/SdkVideoView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceWidth:I

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 288
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 290
    .local v0, anchorView:Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 291
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 293
    .end local v0           #anchorView:Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 288
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 158
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    .line 159
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    .line 160
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    .line 161
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mSHCallback:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 162
    invoke-virtual {p0, v2}, Lco/vine/android/player/SdkVideoView;->setFocusable(Z)V

    .line 163
    invoke-virtual {p0, v2}, Lco/vine/android/player/SdkVideoView;->setFocusableInTouchMode(Z)V

    .line 164
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestFocus()Z

    .line 165
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 166
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 167
    return-void
.end method

.method private openVideo()V
    .locals 7

    .prologue
    .line 225
    iget-object v3, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I

    monitor-enter v3

    .line 226
    :try_start_0
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 227
    :cond_0
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    const-string v4, "Surface is not ready yet."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit v3

    .line 275
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    const-string v4, "Opening video."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, i:Landroid/content/Intent;
    const-string v2, "command"

    const-string v4, "pause"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lco/vine/android/player/SdkVideoView;->release(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :try_start_1
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 242
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 243
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 245
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 246
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 247
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 248
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 249
    const/4 v2, 0x0

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I

    .line 250
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 251
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mSurfaceHolder:Landroid/view/Surface;

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 252
    iget-boolean v2, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 255
    :cond_2
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 256
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 257
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 260
    const/4 v2, 0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 261
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V

    .line 262
    sget-object v2, Lco/vine/android/player/SdkVideoView;->TAG:Ljava/lang/String;

    const-string v4, "Successfully prepared the new MediaPlayer."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 274
    :goto_1
    :try_start_2
    monitor-exit v3

    goto/16 :goto_0

    .end local v1           #i:Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 263
    .restart local v1       #i:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 264
    .local v0, ex:Ljava/io/IOException;
    :try_start_3
    const-string v2, "Unable to open content {}."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 266
    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 267
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_1

    .line 268
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 269
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "Unable to open content {}."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    aput-object v6, v4, v5

    invoke-static {v0, v2, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 271
    const/4 v2, -0x1

    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 272
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v4, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v4, v5, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized release(Z)V
    .locals 2
    .parameter "cleartargetstate"

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mLock:[I

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 505
    :try_start_1
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 507
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 509
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 510
    if-eqz p1, :cond_0

    .line 511
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 512
    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    .line 515
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 504
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lco/vine/android/player/SdkVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 192
    return-void
.end method

.method private toggleMediaControlsVisibility()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 581
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 681
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mCanSeekForward:Z

    return v0
.end method

.method public getAttributes()Landroid/util/AttributeSet;
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->attributes:Landroid/util/AttributeSet;

    return-object v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 664
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentBufferPercentage:I

    .line 666
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 639
    :try_start_0
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 646
    :cond_0
    :goto_0
    return v1

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "This is probably called from timer."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 644
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 626
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    if-lez v0, :cond_0

    .line 628
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 634
    :goto_0
    return v0

    .line 630
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 631
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    goto :goto_0

    .line 633
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    .line 634
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mDuration:I

    goto :goto_0
.end method

.method public getMediaPlayer()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingPosition()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->playingPosition:I

    return v0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method public isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 670
    iget-object v1, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 613
    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 172
    const-class v0, Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 178
    const-class v0, Lco/vine/android/player/SdkVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 179
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 536
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 543
    .local v0, isKeyCodeSupported:Z
    :goto_0
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 544
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 546
    :cond_0
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 547
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 548
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 572
    :cond_1
    :goto_1
    return v1

    .line 536
    .end local v0           #isKeyCodeSupported:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    .restart local v0       #isKeyCodeSupported:Z
    :cond_3
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 551
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 554
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 555
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 556
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 557
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 560
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 562
    :cond_6
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 563
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->pause()V

    .line 564
    iget-object v2, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 568
    :cond_7
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V

    .line 572
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 107
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    invoke-static {v2, p1}, Lco/vine/android/player/SdkVideoView;->getDefaultSize(II)I

    move-result v1

    .line 108
    .local v1, width:I
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    invoke-static {v2, p2}, Lco/vine/android/player/SdkVideoView;->getDefaultSize(II)I

    move-result v0

    .line 109
    .local v0, height:I
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 110
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 111
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    div-int v0, v2, v3

    .line 116
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lco/vine/android/player/SdkVideoView;->setMeasuredDimension(II)V

    .line 117
    return-void

    .line 112
    :cond_1
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 113
    iget v2, p0, Lco/vine/android/player/SdkVideoView;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lco/vine/android/player/SdkVideoView;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 520
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 521
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V

    .line 523
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 528
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 529
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->toggleMediaControlsVisibility()V

    .line 531
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 595
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 598
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 601
    :cond_0
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 602
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .parameter "desiredSize"
    .parameter "measureSpec"

    .prologue
    .line 121
    move v0, p1

    .line 122
    .local v0, result:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 123
    .local v1, specMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 125
    .local v2, specSize:I
    sparse-switch v1, :sswitch_data_0

    .line 146
    :goto_0
    return v0

    .line 130
    :sswitch_0
    move v0, p1

    .line 131
    goto :goto_0

    .line 138
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    goto :goto_0

    .line 143
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 621
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->start()V

    .line 622
    return-void
.end method

.method public retryOpenVideo()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 217
    const-string v2, "Retry open video: {}"

    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mHasNotRetriedBefore:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 218
    iget-boolean v0, p0, Lco/vine/android/player/SdkVideoView;->mHasNotRetriedBefore:Z

    if-nez v0, :cond_0

    .line 219
    iput-boolean v1, p0, Lco/vine/android/player/SdkVideoView;->mHasNotRetriedBefore:Z

    .line 220
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V

    .line 222
    :cond_0
    return-void

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .parameter "msec"

    .prologue
    .line 650
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 652
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    .line 656
    :goto_0
    return-void

    .line 654
    :cond_0
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setLooping(Z)V
    .locals 0
    .parameter "looping"

    .prologue
    .line 617
    iput-boolean p1, p0, Lco/vine/android/player/SdkVideoView;->mLooping:Z

    .line 618
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .parameter "controller"

    .prologue
    .line 278
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 281
    :cond_0
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mMediaController:Landroid/widget/MediaController;

    .line 282
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->attachMediaController()V

    .line 283
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 429
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 430
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 441
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 442
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 451
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 452
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 419
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 420
    return-void
.end method

.method public setPlayingPosition(I)V
    .locals 0
    .parameter "playingPosition"

    .prologue
    .line 154
    iput p1, p0, Lco/vine/android/player/SdkVideoView;->playingPosition:I

    .line 155
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 182
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    .line 183
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 184
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .parameter "uri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lco/vine/android/player/SdkVideoView;->mUri:Landroid/net/Uri;

    .line 196
    iput-object p2, p0, Lco/vine/android/player/SdkVideoView;->mHeaders:Ljava/util/Map;

    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/player/SdkVideoView;->mSeekWhenPrepared:I

    .line 198
    invoke-direct {p0}, Lco/vine/android/player/SdkVideoView;->openVideo()V

    .line 199
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->requestLayout()V

    .line 200
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->invalidate()V

    .line 201
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 584
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/player/SdkVideoView;->setVisibility(I)V

    .line 587
    :cond_0
    invoke-virtual {p0}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 589
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 591
    :cond_1
    iput v1, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 592
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 204
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget v0, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 205
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 208
    :cond_0
    iget-object v0, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 209
    iput-object v3, p0, Lco/vine/android/player/SdkVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 210
    iput-object v3, p0, Lco/vine/android/player/SdkVideoView;->mPath:Ljava/lang/String;

    .line 211
    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mCurrentState:I

    .line 212
    iput v2, p0, Lco/vine/android/player/SdkVideoView;->mTargetState:I

    .line 214
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/player/SdkVideoView;->release(Z)V

    .line 606
    return-void
.end method
